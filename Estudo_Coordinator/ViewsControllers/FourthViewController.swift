//
//  FourthViewController.swift
//  Estudo_Coordinator
//
//  Created by Debora Rodrigues  on 27/06/24.
//

import UIKit

class FourthViewController: UIViewController {
    weak var delegate: DataCollectionDelegate?

    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your name"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private let ageTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your age"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private let submitButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Submit", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        delegate = self 
    }

    private func setupViews() {
        view.addSubview(nameTextField)
        view.addSubview(ageTextField)
        view.addSubview(submitButton)

        submitButton.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)

        NSLayoutConstraint.activate([
            nameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameTextField.widthAnchor.constraint(equalToConstant: 200),

            ageTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ageTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            ageTextField.widthAnchor.constraint(equalToConstant: 200),

            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitButton.topAnchor.constraint(equalTo: ageTextField.bottomAnchor, constant: 20)
        ])
    }

    @objc private func submitButtonTapped() {
        let name = nameTextField.text ?? ""
        let age = ageTextField.text ?? ""
        delegate?.didCollectData(name: name, age: age)
    }
}

extension FourthViewController: DataCollectionDelegate {
    func didCollectData(name: String, age: String) {
        let summaryViewController = SummaryViewController()
        summaryViewController.name = name
        summaryViewController.age = age
        navigationController?.pushViewController(summaryViewController, animated: true)
    }
}
