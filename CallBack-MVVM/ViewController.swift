

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfName: UITextField!
    
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBOutlet weak var btnSubmit: UIButton!{
        didSet{
            self.btnSubmit.isEnabled = false
        }
    }
    
    let callBack = CallBackViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateButton()
        
    }
    
    @IBAction func actionTfName(_ sender: UITextField) {
        self.callBack.txtName = sender.text!
        //or
        //self.callBack.txtName = tfName.text!

    }
    
    @IBAction func actionTfPassword(_ sender: UITextField) {
        self.callBack.txtPassword = sender.text!
        //or
        //self.callBack.txtName = tfPassword.text!
    }
    
    func updateButton(){
        callBack.updateBtnSubmit = { [weak self] bool in
            self!.btnSubmit.isEnabled = bool
        }

    }
    


}

