//
//  ABCViewController.swift
//  ElChapo
//
//  Created by Mahmood Al-haddad on 11/10/19.
//  Copyright © 2019 Mahmood Al-haddad. All rights reserved.
//

import UIKit

class ABCViewController: UIViewController {
    
    var loadingView: LoadingView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let _ = self as? KeyboardDelegate {
            NotificationCenter.default.addObserver(self, selector: #selector(kbWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(kbWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
        }
        
    }
    
    func showLoadingView() {
        let loadingView = LoadingView(text: "Madry")
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        self.loadingView = loadingView
        self.view.addSubview(loadingView)
        
        let centerX = NSLayoutConstraint(item: loadingView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let centerY = NSLayoutConstraint(item: loadingView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        
        self.view.addConstraints([centerX, centerY])
    }
    
    func dismissLoadingView() {
        self.loadingView?.removeFromSuperview()
    }
    
    @objc func kbWillShow(note: NSNotification) {
        if let vc = self as? KeyboardDelegate {
            vc.keyboardWillShow(note: note)
        }
    }
    
    @objc func kbWillHide(note: NSNotification) {
        if let vc = self as? KeyboardDelegate {
            vc.keyboardWillHide(note: note)
        }
    }
    
}

