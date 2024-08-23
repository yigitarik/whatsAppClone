//
//  UIViewControllerExtension.swift
//  whatsAppClone
//
//  Created by Yiğit ARİK on 19.08.2024.
//

import UIKit

extension UIViewController {
    
    /// AppBarView'i ekler ve yapılandırır
    func addAppBarView(leading: UIView) {
        let appBar = AppBarView()
        appBar.leading = leading
        view.addSubview(appBar)
        appBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            appBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            appBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            appBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            appBar.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
}


