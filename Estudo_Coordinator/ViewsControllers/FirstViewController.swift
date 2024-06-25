//
//  FirstViewController.swift
//  Estudo_Coordinator
//
//  Created by Debora Rodrigues  on 25/06/24.
//

import UIKit

class FirstViewController: UIViewController {
    var coordinator: MainCoordinator?

    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Go to Second Screen", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    }

    private func setupViews() {
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc private func buttonTapped() {
        coordinator?.showSecondViewController()
    }
}

