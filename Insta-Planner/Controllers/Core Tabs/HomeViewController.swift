import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
  
    private let tableView: UITableView =  {
        let tableView = UITableView()
        tableView.register(IGFeedPostTableViewCell.self,
                           forCellReuseIdentifier: IGFeedPostTableViewCell.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
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

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
         return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: IGFeedPostTableViewCell.identifier, for: indexPath) as!
        IGFeedPostTableViewCell
        
        return cell
        
    }
}

