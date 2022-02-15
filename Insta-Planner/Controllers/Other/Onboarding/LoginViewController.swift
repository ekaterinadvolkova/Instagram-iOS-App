import UIKit

class LoginViewController: UIViewController {
    
    //username of email
    private let usernameEmailField: UITextField = {
        return UITextField()
    }()
    
    //password
    private let passwordField: UITextField = {
        let field =  UITextField()
        field.isSecureTextEntry = true
        return field
    }()
    
    //login button
    private let loginButton: UIButton = {
        return UIButton()
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
        return UIButton()
    }()
    
    //header view
    private let headerView: UIView = {
        return UIView()
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
