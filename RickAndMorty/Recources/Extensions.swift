//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 24.01.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
