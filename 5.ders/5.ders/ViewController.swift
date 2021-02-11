//
//  ViewController.swift
//  5.ders
//
//  Created by selin eylül bilen on 1/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtdata: UITextField!
    @IBOutlet weak var mail: UITextField!
    @IBAction func send_btn(_ sender: UIButton) {
        let maill = mail.text!
        let data = txtdata.text!
        if (data == ""){
            alertForm(title:"Boş Alan", message:"Bu alan boş bırakılamaz")
        }else if (maill == ""){
            alertForm(title:"Boş Alan", message:"Mail boş bırakılamaz")
        }
    }
    
    func alertForm( title:String, message:String ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let yesbtn = UIAlertAction(title: "OK", style: .default) {
            (UIAlertAction) in
            print("Ok Button Clicked")
        }
        
        //cancel button
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(yesbtn)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

