//
//  LoginViewModel.swift
//  Outstagram
//
//  Created by Beavean on 28.02.2023.
//

import UIKit

struct LoginViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?

    var formIsValid: Bool {
        email?.isEmpty == false && password?.isEmpty == false
    }

    var buttonBackgroundColor: UIColor {
        formIsValid ? .purple : .purple.withAlphaComponent(0.1)
    }

    var buttonTitleColor: UIColor {
        formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
}
