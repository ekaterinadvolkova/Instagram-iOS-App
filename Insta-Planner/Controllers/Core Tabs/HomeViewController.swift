import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
    
        super.viewDidAppear(animated)
        handleNotAuthenticated()
        
        //Force sign out
//        do {
//            try FirebaseAuth.Auth.auth().signOut()
//        }
//        catch {
//            print("Fail to sign out")
//        }
    }
    
    private func handleNotAuthenticated(){
        // Check authentication status
        print("Currect user is \(Auth.auth().currentUser)")
        
        /// If user is not signed in redirect it to login page
        if Auth.auth().currentUser == nil {
            //show login
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
        else {
            print("current user \(Auth.auth().currentUser)")
        }
    }

}

