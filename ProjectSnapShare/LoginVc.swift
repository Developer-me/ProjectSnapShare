import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var viewEmail: UIView!
    @IBOutlet weak var viewPassword: UIView!
    @IBOutlet weak var btnSigninOut: UIButton!
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSignin(_ sender: UIButton) {
    }
    
    @IBAction func btnShow(_ sender: UIButton) {
    }
    @IBAction func btnSignup(_ sender: UIButton) {
        let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpVc") as! SignUpVc
        self.navigationController?.pushViewController(pass, animated: true)
    }
}
