import FirebaseStorage

public class StoreManager {
    
    static let shared = StoreManager()
    
    private let bucket = Storage.storage().reference()
    
    public enum IGStorageManagerError: Error {
        case failedToDownload
    }
    
    public func uploadUserPost(model: UserPost, completion: @escaping (Result<URL, Error>) -> Void){
         
    }
    
    public func downloadImage(with reference: String, completion: @escaping (Result<URL, IGStorageManagerError>) -> Void){
        bucket.child(reference).downloadURL(completion: { url, error in
            
            guard case let url = url, error == nil else {
                completion(.failure(.failedToDownload))
                return
            }
            completion(.success(url!))
    
        })
    }
}

public enum UserPostType {
    case photo, video
}

public struct UserPost {
    let postType: UserPostType
}
