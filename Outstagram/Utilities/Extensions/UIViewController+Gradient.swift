//
//  UIViewController+Gradient.swift
//  Outstagram
//
//  Created by Beavean on 24.02.2023.
//

import UIKit

extension UIViewController {
    func configureGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.orange.cgColor, UIColor.systemRed.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}
