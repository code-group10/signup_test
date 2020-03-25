//
//  PasswordFieldDelegate.swift
//  SignupPrototype
//
//  Created by Viet on 2020/03/24.
//  Copyright © 2020 Codesquad. All rights reserved.
//

import UIKit

class PasswordFieldDelegate: NSObject, UITextFieldDelegate {
    var heightConstraint: NSLayoutConstraint

    init(heightConstraint: NSLayoutConstraint) {
        self.heightConstraint = heightConstraint
        super.init()
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = textField.text! as NSString
        let newText = text.replacingCharacters(in: range, with: string)
        print("Password Field: \(String(describing: newText))", range, string)

        if isValid(password: newText) {
            heightConstraint.isActive = true
        } else {
            heightConstraint.isActive = false
        }

        return true
    }

    func isValid(password: String) -> Bool {
        return password.count >= 8
    }
}
