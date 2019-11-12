//
//  LoadingView.swift
//  ElChapo
//
//  Created by Mahmood Al-haddad on 11/10/19.
//  Copyright © 2019 Mahmood Al-haddad. All rights reserved.
//

import UIKit

class LoadingView: ABCNibVIew {
    
    var text: String?
    
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var textLabel: UILabel!
    
    required init(text: String){
        self.text = text
        super.init(frame: CGRect.zero)
        // Can't call super.init() here because it's a convenience initializer not a desginated initializer
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setup() {
        super.setup()
        self.indicatorView?.startAnimating()
        self.view.layer.cornerRadius = 5.0
        self.view.layer.backgroundColor = UIColor.gray.withAlphaComponent(0.2).cgColor
        
        self.textLabel.textColor = .gray
        
        if text == nil {
            self.textLabel.removeFromSuperview()
        } else {
            textLabel.text = self.text
        }
        
        self.blurView()
    }
    
}
