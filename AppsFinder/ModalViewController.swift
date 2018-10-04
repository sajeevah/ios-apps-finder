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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnCloseModalClick(_ sender: UIButton) {
        dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
