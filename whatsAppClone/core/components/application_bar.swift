//
//  application_bar.swift
//  whatsAppClone
//
//  Created by Yiğit ARİK on 19.08.2024.
//

import Foundation
import UIKit

class AppBarView: UIView {
    
    var leading = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        self.backgroundColor = .yellow
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        leading.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(leading)
        self.bringSubviewToFront(leading)
        
        NSLayoutConstraint.activate([
            leading.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            leading.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            leading.widthAnchor.constraint(equalToConstant: 50),  
            leading.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

