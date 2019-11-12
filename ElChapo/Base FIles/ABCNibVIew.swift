//
//  ABCNibVIew.swift
//  ElChapo
//
//  Created by Mahmood Al-haddad on 11/10/19.
//  Copyright © 2019 Mahmood Al-haddad. All rights reserved.
//

import Foundation


import UIKit
class ABCNibVIew: UIView {
    var view: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Setup view from .xib file
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Setup view from .xib file
        xibSetup()
    }
}
extension ABCNibVIew {
    
    func xibSetup() {
        backgroundColor = UIColor.clear
        view = loadNib() as! UIView
        // use bounds not frame or it'll be offset
        view.frame = bounds
        // Adding custom subview on top of our view
        addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[childView]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["childView": view]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[childView]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["childView": view]))
        setup()
    }
    
    @objc func setup() {
        
    }
}


