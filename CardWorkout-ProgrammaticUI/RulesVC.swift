//
//  RulesVC.swift
//  CardWorkout-ProgrammaticUI
//
//  Created by Gökhan Bozkurt on 27.06.2023.
//

import UIKit

class RulesVC: UIViewController {

    let titleLable = UILabel()
    let rulesLable = UILabel()
    let exerciseLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        configureTitleLabel()
        configureRulesLable()
        configureExerciseLable()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLable)
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        titleLable.text = "Rules"
        titleLable.font = .systemFont(ofSize: 40, weight: .bold)
        titleLable.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 60),
            titleLable.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            titleLable.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30)
        ])
    }
  
    func configureRulesLable() {
        view.addSubview(rulesLable)
        rulesLable.translatesAutoresizingMaskIntoConstraints = false
        rulesLable.text = "The value of each card represents the number of exercise you do.\n\nJ = 11, Q= 12,K= 13, A= 14"
        rulesLable.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLable.textAlignment = .center
        rulesLable.lineBreakMode = .byWordWrapping
        rulesLable.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 25),
            rulesLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    func configureExerciseLable() {
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Push-ups\n\n♥️ = Sit-up\n\n♣️ = Burpees\n\n♦️ = Jumping-Jacks"
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLable.bottomAnchor, constant: 60),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}
