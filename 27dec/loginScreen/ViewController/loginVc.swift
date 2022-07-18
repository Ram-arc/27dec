//
//  loginVc.swift
//  27dec
//
//  Created by Vamsi krishna on 27/12/21.
//

import UIKit

class loginVc: UIViewController {

    @IBOutlet weak var pwdTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
   
  //  {
     //   didSet {
    //        let redPlaceholderText = NSAttributedString(
     //           string: ps, attributes: [NSAttributedString.Key.foregroundColor: //UIColor.black])
            
    //        loginTextField.attributedPlaceholder = redPlaceholderText
   //     }
 //   }
    
   //var ps = ""
    @IBOutlet weak var logbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
          
        loginTextField.delegate = self
        pwdTextField.delegate = self

        
        loginTextField.placeholder = "placeholder text"
       // ps = loginTextField.placeholder ?? ""
        
        
    }
    

    @IBAction func didTapLog(_ sender: Any) {
        
      
        
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        let sign =  story.instantiateViewController(identifier: "signupVc") as signupVc
      
        navigationController?.pushViewController(sign, animated: true)
        //pwdTextField.text  =  loginTextField.text
        
        pwdTextField.text = UserDefaults.standard.object(forKey: "edit") as? String
        
             
    }
   
  
}

extension loginVc: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
   
        //let ct = loginTextField.text
        UserDefaults.standard.removeObject(forKey: "edit")
         UserDefaults.standard.setValue(loginTextField.text, forKey: "edit")
        
        print(UserDefaults.standard.object(forKey: "edit") as? String)
        
        UserDefaults.standard.removeObject(forKey: "pedit")
         UserDefaults.standard.setValue(pwdTextField.text, forKey: "pedit")
        
        print(UserDefaults.standard.object(forKey: "pedit") as? String)
        
    }
}
