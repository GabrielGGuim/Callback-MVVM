
import Foundation


class CallBackViewModel{
    
    var txtName:String = "" {
        didSet{
            verifier()
        }
    }
    var txtPassword:String = ""{
        didSet{
            verifier()
        }
    }
       
    var updateBtnSubmit: ((Bool) -> ())?

    func verifier(){
        updateBtnSubmit?(!(txtName.isEmpty) && !(txtPassword.isEmpty) ? true:false)
    }
}
