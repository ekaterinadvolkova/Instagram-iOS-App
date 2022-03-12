//
//  EditProfileViewController.swift
//  Insta-Planner
//
//  Created by Ekaterina Volkova on 12/03/2022.
//

import Foundation

import UIKit

class EditProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        //add save and cancel buttons
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector (didTapSave))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel",
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector (didTapCancel))
    }
    
    @objc private func didTapSave(){
        
    }
    
    @objc private func didTapCancel(){
        
    }
    
    //allow the user to change profile picture
    @objc private func didTapChangeProfilePicture(){
        let actionSheet = UIAlertController(title: "Profile Picture", message: "Change Profile Picture", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Take Photo",
                                            style: .default,
                                            handler: {_ in
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Choose from Library",
                                            style: .default,
                                            handler: {_ in
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel",
                                            style: .cancel,
                                            handler: nil))
         //add this to avoid crach on ipad
        actionSheet.popoverPresentationController?.sourceView = view
        actionSheet.popoverPresentationController?.sourceRect = view.bounds
        
        present(actionSheet, animated: true)
    }
}
 
