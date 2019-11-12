//
//  Delegates.swift
//  ElChapo
//
//  Created by Mahmood Al-haddad on 11/10/19.
//  Copyright © 2019 Mahmood Al-haddad. All rights reserved.
//

import Foundation

protocol KeyboardDelegate {
    func keyboardWillShow(note: NSNotification)
    func keyboardWillHide(note: NSNotification)
}
