//
//  ThirdViewController .swift
//  Estudo_Coordinator
//
//  Created by Debora Rodrigues  on 27/06/24.
//
import UIKit

class ThirdViewController: UIViewController {
    private let collectDataButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Collect Data", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        setupViews()
    }

    private func setupViews() {
        view.addSubview(collectDataButton)
        collectDataButton.addTarget(self, action: #selector(collectDataButtonTapped), for: .touchUpInside)

        NSLayoutConstraint.activate([
            collectDataButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            collectDataButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc private func collectDataButtonTapped() {
        let fourthViewController = FourthViewController()
      //  fourthViewController.delegate = self
        navigationController?.pushViewController(fourthViewController, animated: true)
    }
}
