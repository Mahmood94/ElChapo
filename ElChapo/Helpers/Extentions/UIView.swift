//
//  UIView.swift
//  ElChapo
//
//  Created by Mahmood Al-haddad on 11/10/19.
//  Copyright © 2019 Mahmood Al-haddad. All rights reserved.
//

import UIKit

extension UIView {
    /** Loads instance from nib with the same name. */
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
    
    func blurView() {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.extraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        self.addSubview(blurEffectView)
        blurEffectView.layer.cornerRadius = 5.0
        self.insertSubview(blurEffectView, at: 0)
    }
}
