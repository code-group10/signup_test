//
//  ViewController.swift
//  SignupPrototype
//
//  Created by Viet on 2020/03/24.
//  Copyright © 2020 Codesquad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Properties

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var invalidEmailLabel: UILabel!
    @IBOutlet weak var invalidPasswordLabel: UILabel!
    var invalidEmailLabelHeightConstraint: NSLayoutConstraint!

    // MARK: - View

    override func viewDidLoad() {
        super.viewDidLoad()

        emailField.addTarget(self, action: #selector(textFieldEdited), for: .editingChanged)
        passwordField.delegate = self

        invalidEmailLabelHeightConstraint = invalidEmailLabel.heightAnchor.constraint(equalToConstant: 0)

    }

    // MARK: TextField

    @objc func textFieldEdited(textField: UITextField) {
        if textField == emailField {
            print("Email Field: \(String(describing: textField.text))")
            if isValid(email: textField.text) {
                invalidEmailLabelHeightConstraint.isActive = true
            } else {
                invalidEmailLabelHeightConstraint.isActive = false
            }
        } else if textField == passwordField {
        }
    }

    func isValid(email: String?) -> Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regEx)

        return predicate.evaluate(with: email)
    }
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Password Field: \(String(describing: textField.text))")
        if let text = textField.text, text.count < (8 - 1) {
            print("minimum 8 characters")
        }
        return true
    }
}
