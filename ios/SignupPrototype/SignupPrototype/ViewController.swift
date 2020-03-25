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
    var invalidPasswordHeightConstraint: NSLayoutConstraint!
    var emailFieldDelegate: EmailFieldDelegate?
    var passwordFieldDelegate: PasswordFieldDelegate?

    // MARK: - View

    override func viewDidLoad() {
        super.viewDidLoad()

        invalidEmailLabelHeightConstraint = invalidEmailLabel.heightAnchor.constraint(equalToConstant: 0)
        invalidPasswordHeightConstraint = invalidPasswordLabel.heightAnchor.constraint(equalToConstant: 0)

        self.emailFieldDelegate = EmailFieldDelegate(heightConstraint: invalidEmailLabelHeightConstraint)
        self.passwordFieldDelegate = PasswordFieldDelegate(heightConstraint: invalidPasswordHeightConstraint)
        emailField.delegate = emailFieldDelegate
        passwordField.delegate = passwordFieldDelegate
//        emailField.addTarget(self.emailFieldDelegate, action: #selector(self.emailFieldDelegate?.textField), for: .editingChanged)
//        passwordField.addTarget(self.passwordFieldDelegate, action: #selector(self.passwordFieldDelegate?.textField), for: .editingChanged)

        emailField.becomeFirstResponder()

    }
}

