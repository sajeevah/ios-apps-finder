//
//  ModalViewController.swift
//  AppsFinder
//
//  Created by Admin on 10/4/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet weak var modalImg: UIImageView!
    @IBOutlet weak var modalName: UILabel!
    @IBOutlet weak var modalType: UILabel!
    @IBOutlet weak var modalGenre: UILabel!
    @IBOutlet weak var btnCloseModal: UIButton!
    @IBOutlet weak var modalRealType: UILabel!
    
    var imageUrl: String = "NA"
    var appName: String = "NA"
    var appDescription: String = "NA"
    var appType: String = "NA"
    var appGenre: String = "NA"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnCloseModalClick(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    func loadData(){
        self.modalName.text = self.appName
        self.modalType.text = self.appDescription
        self.modalGenre.text = "Genre : \(self.appGenre)"
        self.modalRealType.text = "Type  : \(self.appType)"
        if let imageUrl = URL(string: imageUrl){
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageUrl)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        self.modalImg.image = image
                    }
                }
            }
        }
    }

}
