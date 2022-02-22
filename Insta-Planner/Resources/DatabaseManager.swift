import Firebase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    private let database = Database.database().reference()
    
    
    /// Check if username and email is available
    /// -Parameters
    ///         - email:String representing email
    ///         - username:String representing username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool)->Void){
        
    }
    
    /// Inserts new user data to database
    /// -Parameters
    ///         - email:String representing email
    ///         - username:String representing username
    public func insertNewUser(with email: String, username: String){
        database.child(email).setValue(["username": username]) { error, _ in
            
        }
    }
    
}
