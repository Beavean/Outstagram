//
//  AuthenticationViewModelImpl.swift
//  Outstagram
//
//  Created by Beavean on 28.02.2023.
//

import UIKit

protocol AuthenticationViewModel {
    var formIsValid: Bool { get }
    var buttonBackgroundColor: UIColor { get }
    var buttonTitleColor: UIColor { get }
}
