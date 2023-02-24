//
//  UIButton+AttributedTitle.swift
//  Outstagram
//
//  Created by Beavean on 24.02.2023.
//

import UIKit

extension UIButton {
    func attributedTitle(firstPart: String, secondPart: String) {
        let attributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.9),
                                                         .font: UIFont.systemFont(ofSize: 16)]
        let attributedTitle = NSMutableAttributedString(string: "\(firstPart) ", attributes: attributes)
        let boldAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.9),
                                                             .font: UIFont.boldSystemFont(ofSize: 16)]
        attributedTitle.append(NSAttributedString(string: "\(secondPart)", attributes: boldAttributes))
        setAttributedTitle(attributedTitle, for: .normal)
    }
}
