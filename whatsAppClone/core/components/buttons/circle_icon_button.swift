//
//  circle_icon_button.swift
//  whatsAppClone
//
//  Created by Yiğit ARİK on 21.08.2024.
//

import Foundation
import UIKit

class CircleIconButton: UIView {
    
    private let button = UIButton(type: .system)
    
    var buttonAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    private func setupButton() {
        self.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.tintColor = .black

        let icon = UIImage(systemName: "ellipsis")
        button.setImage(icon, for: .normal)
        
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
        
        self.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 50),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        // Buton aksiyonunu bağla
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped() {
        buttonAction?()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        button.layer.cornerRadius = button.bounds.width / 2
    }
}
