//
//  EmailFieldDelegate.swift
//  SignupPrototype
//
//  Created by Viet on 2020/03/24.
//  Copyright © 2020 Codesquad. All rights reserved.
//

import UIKit

class EmailFieldDelegate: NSObject, UITextFieldDelegate {
    var heightConstraint: NSLayoutConstraint

    init(heightConstraint: NSLayoutConstraint) {
        self.heightConstraint = heightConstraint
        super.init()
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = (textField.text ?? "") + string
        print("Email Field: \(String(describing: text))")
        
        if isValid(email: text) {
            heightConstraint.isActive = true
        } else {
            heightConstraint.isActive = false
        }

        return true
    }

    func isValid(email: String?) -> Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regEx)

        return predicate.evaluate(with: email)
    }
}
