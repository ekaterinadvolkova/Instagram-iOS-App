import UIKit

class LoginViewController: UIViewController {
    
    //add constants list
    struct Constants {
        static let cornerRadius: CGFloat = 8.0
    }
    
    //username of email
    private let usernameEmailField: UITextField = {
        let field = UITextField()
        field.placeholder = "Username or email"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    
    //password
    private let passwordField: UITextField = {
        let field = UITextField()
        field.placeholder = "Password"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    
    //login button
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.cornerRadius
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    //terms button
    private let termsButton: UIButton = {
        return UIButton()
    }()
    
    //privacy button
    private let privacyButton: UIButton = {
        return UIButton()
    }()
    
    //create account button
    private let createAccountButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.label, for: .normal)
        button.setTitle("New User? Create Account", for: .normal)
        return button
    }()
    
    //header view
    private let headerView: UIView = {
        let header = UIView()
        header.clipsToBounds = true
        header.backgroundColor = .purple
        return header
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add subviews to the login view
        addSubViews()
        
        //background is system background
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //assign frames
        headerView.frame = CGRect(x: 0,
            y: view.safeAreaInsets.top,
            width: view.width,
            height: view.height / 3.0)
    }
    
    private func addSubViews(){
        view.addSubview(usernameEmailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
        view.addSubview(createAccountButton)
        view.addSubview(headerView)
    }
    
    //function to get called when 3 buttons are tapped
    @objc private func didTapLoginButton(){}
    
    @objc private func didTapTermsButton(){}
    
    @objc private func didTapPrivacyButton(){}
     
    @objc private func didTapCreateAccountButton(){}
    

}
