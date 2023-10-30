//
//  ViewController.swift
//  AletProject
//
//  Created by Rifat Ozturk on 30.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordagainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signupclick(_ sender: Any) {
        
       /* let alert = UIAlertController(title: "Başarılı", message: "Üye Oluşturuldu", preferredStyle: UIAlertController.Style.alert)
        let okbutton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
        alert.addAction(okbutton)
        self.present(alert, animated: true)
        */
        if usernameText.text == "" {
            MakeAlert ( titleInput: "Hata", messageInput : "Kullanıcı Alanı Boş Bırakılamaz")
            } else if passwordText.text == "" {
             MakeAlert ( titleInput: "Hata", messageInput : "Şifre Alanı Boş Bırakılamaz")
            } else if passwordagainText.text != passwordText.text {
            MakeAlert ( titleInput: "Hata", messageInput : "Şifreler Uyumlu Değil")
            } else
            { MakeAlert ( titleInput: "Başarılı", messageInput : "Üye Oluşturuldu")
            }
        
        
        func MakeAlert ( titleInput: String, messageInput : String) {
            let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
                let okbutton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
                alert.addAction(okbutton)
                self.present(alert, animated: true) }
        }
        
        
    }


