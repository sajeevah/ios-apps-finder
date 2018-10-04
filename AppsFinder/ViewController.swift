//
//  ViewController.swift
//  AppsFinder
//
//  Created by Admin on 10/4/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UISearchBarDelegate, UITableViewDelegate  {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var apps = [App]()
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.downloadJson(serText: "games")
        self.tableView.tableFooterView = UIView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func downloadJson(serText: String) {
        
        let url = URL(string: "https://itunes.apple.com/search?term=\(serText)&limit=200&entity=software")
        
        guard let downloadURL = url else {
            return
        }
        
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data,  error == nil, urlResponse != nil else {
                print("something is wrong")
                return
            }
            print("downloaded")
            do {
                let decoder = JSONDecoder()
                let downloadApps = try decoder.decode(Apps.self, from: data)
                self.apps = downloadApps.results
                //                print(self.apps[0].description)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print("something wrong after downloaded")
            }
            // code
            }.resume()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.apps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AppCell") as? TableViewCell else {
            print("error in cell")
            return UITableViewCell()
        }

        cell.appMainName.text = self.apps[indexPath.row].trackCensoredName //sellerName
        cell.appMainDetails.text = self.apps[indexPath.row].sellerName

        if let imageUrl = URL(string: self.apps[indexPath.row].artworkUrl100){
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageUrl)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.appMainImg.image = image
                    }
                }
            }
        }

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let popup = sb.instantiateViewController(withIdentifier: "ModalViewController") as! ModalViewController
        popup.imageUrl = self.apps[indexPath.row].artworkUrl512
        popup.appName = self.apps[indexPath.row].trackCensoredName
        popup.appDescription = self.apps[indexPath.row].sellerName
        popup.appType = self.apps[indexPath.row].wrapperType
        popup.appGenre = self.apps[indexPath.row].primaryGenreName
        self.present(popup, animated: true)
        print("row clicked")
    }

    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            self.apps.removeAll()
            self.tableView.reloadData()
            return
        }
        self.downloadJson(serText: searchText)
    }
}

