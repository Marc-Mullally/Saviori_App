//
//  SignUpViewController.swift
//  Saviori_App
//
//  Created by 9i on 3/14/24.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let view = UIView(frame: CGRect(x: 166.5, y: 65, width: 60, height: 60))
        view.backgroundColor = .white

        view.layer.borderColor = UIColor.red.cgColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 30
        self.view.addSubview(view)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
