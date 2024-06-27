//
//  SummaryViewController.swift
//  Estudo_Coordinator
//
//  Created by Debora Rodrigues  on 27/06/24.
//

import UIKit

class SummaryViewController: UIViewController {
    var name: String?
    var age: String?

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let ageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        displayData()
    }

    private func setupViews() {
        view.addSubview(nameLabel)
        view.addSubview(ageLabel)

        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),

            ageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20)
        ])
    }

    private func displayData() {
        nameLabel.text = "Name: \(name ?? "")"
        ageLabel.text = "Age: \(age ?? "")"
    }
}
