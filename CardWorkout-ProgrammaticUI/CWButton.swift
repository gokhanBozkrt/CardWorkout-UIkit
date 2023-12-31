//
//  CWButton.swift
//  CardWorkout-ProgrammaticUI
//
//  Created by Gökhan Bozkurt on 25.06.2023.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, title: String,systemImageName: String) {
        super.init(frame: .zero)
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .medium
        
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .leading
        translatesAutoresizingMaskIntoConstraints = false
    }
}



/// Works iios13
/*
 class CWButton: UIButton {
     
     override init(frame: CGRect) {
         super.init(frame: frame)
         configure()
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
     init(backgroundColor: UIColor, title: String) {
         super.init(frame: .zero)
         self.backgroundColor = backgroundColor
         setTitle(title, for: .normal)
         configure()
     }
     
     func configure() {
         layer.cornerRadius = 8
         titleLabel?.font = .systemFont(ofSize: 19,weight: .bold)
         setTitleColor(.white, for: .normal)
         translatesAutoresizingMaskIntoConstraints = false
     }
     
 }
 */
