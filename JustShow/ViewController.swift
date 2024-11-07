//
//  ViewController.swift
//  JustShow
//
//  Created by Luis Gonzalez on 11/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    var randomeName = UILabel()
    var titleTotal = UILabel()
    var buttonRandom = UIButton()
    var nameArray: [String] = ["Maria", "Luis", "Marlen", "Karla", "Silvia", "Eknoor", "Better Half", "Your Mom", "Your Dad", "Your Sister", "Your Brother"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomeName.text = ""
        randomeName.font = .systemFont(ofSize: 45, weight: .bold)
        randomeName.textAlignment = .center
        randomeName.textColor = .white
        
        titleTotal.text = "Press to find out who is the Group Leader!"
        titleTotal.font = .systemFont(ofSize: 25, weight: .bold)
        titleTotal.textAlignment = .center
        titleTotal.numberOfLines = 0
        
        buttonRandom.setTitle("Random Name", for: .normal)
        buttonRandom.setTitleColor(.white, for: .normal)
        buttonRandom.backgroundColor = .black
        buttonRandom.layer.cornerRadius = 10
        buttonRandom.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        view.backgroundColor = .green
        
        view.addSubview(randomeName)
        view.addSubview(titleTotal)
        view.addSubview(buttonRandom)
        
        randomeName.translatesAutoresizingMaskIntoConstraints = false
        titleTotal.translatesAutoresizingMaskIntoConstraints = false
        buttonRandom.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            randomeName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            randomeName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            randomeName.widthAnchor.constraint(equalToConstant: 300),
            randomeName.heightAnchor.constraint(equalToConstant: 100),
            
            titleTotal.topAnchor.constraint(equalTo: randomeName.bottomAnchor, constant: 10),
            titleTotal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            titleTotal.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            titleTotal.heightAnchor.constraint(equalToConstant: 200),
            
            buttonRandom.topAnchor.constraint(equalTo: titleTotal.bottomAnchor, constant: 20),
            buttonRandom.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonRandom.widthAnchor.constraint(equalToConstant: 200),
            buttonRandom.heightAnchor.constraint(equalToConstant: 60),
            ])
    }

    @objc func buttonTapped() {
        let randomNumberGen = Int.random(in: 0..<self.nameArray.count)
        randomeName.text = nameArray[randomNumberGen]
        titleTotal.text = "Team Leader is: \(randomeName.text ?? "blah blah")!! Congratulations"
    }

}

