//
//  ViewController.swift
//  Internationalizing
//
//  Created by Emerson Victor on 13/02/20.
//  Copyright © 2020 emer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Components
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = NSLocalizedString("Title in english", comment: "Represents the title")
        view.textColor = .label
        view.backgroundColor = .systemRed
        view.textAlignment = .natural
        return view
    }()
    
    lazy var subtitleLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = NSLocalizedString("Subtitle in english", comment: "Represents the subtitle")
        view.textColor = .label
        view.backgroundColor = .systemBlue
        view.textAlignment = .natural
        return view
    }()
    
    // MARK: - View controller life cycle
    override func loadView() {
        super.loadView()
        guard let view = self.view else {
            print("Found nil while unwrapping the main view")
            return
        }
        
        // Build view hierarchy
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        
        // Setup constraints
        let constraints = [
            self.titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            self.titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            self.titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            self.titleLabel.heightAnchor.constraint(equalToConstant: 40),
            self.subtitleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            self.subtitleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            self.subtitleLabel.heightAnchor.constraint(equalToConstant: 40),
            self.subtitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        
        // Setup view
        view.backgroundColor = .systemBackground
    }
}
