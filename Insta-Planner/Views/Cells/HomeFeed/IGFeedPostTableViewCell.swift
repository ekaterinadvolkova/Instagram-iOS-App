//
//  IGFeedPostTableViewCell.swift
//  Insta-Planner
//
//  Created by Ekaterina Volkova on 07/03/2022.
//

import UIKit

final  class IGFeedPostTableViewCell: UITableViewCell {
    
    static let identifier = "IGFeedPostTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(){
        //configure cell
        
    }

}
 
