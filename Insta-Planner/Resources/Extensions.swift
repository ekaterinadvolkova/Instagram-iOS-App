//
//  Extensions.swift
//  Insta-Planner
//
//  Created by Ekaterina Volkova on 16/02/2022.
//

import UIKit

extension UIView {
    
    //width
    public var width: CGFloat{
        return frame.size.width
    }
    
    //height
    public var height: CGFloat{
        return frame.size.height
    }
    
    //top
    public var top: CGFloat{
        return frame.origin.y
    }
    
    //bottom
    public var bottom: CGFloat{
        return frame.origin.y + frame.size.height
    }
    
    //left
    public var left: CGFloat{
        return frame.origin.x
    }
    
    //right
    public var right: CGFloat{
        return frame.origin.x + frame.size.width
    }
    
    
     
}
