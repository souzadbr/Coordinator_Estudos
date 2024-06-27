//
//  SecondViewController.swift
//  Estudo_Coordinator
//
//  Created by Debora Rodrigues  on 25/06/24.
//

import UIKit

class SecondViewController: UIViewController {
    var coordinator: MainCoordinator?
    public weak var delegate: ViewDelegate?
    private var contentView = ThirdViewController()
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Go to Third Screen", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupViews()
        delegate = self
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
        //Essa classe usará Delegate para navegação de tela para usar como exemplo.
        delegate?.delegateAction()
    }
}

extension SecondViewController: ViewDelegate {
    func delegateAction() {
       // let thirdViewController = ThirdViewController()
        self.navigationController?.pushViewController(ThirdViewController(), animated: true)
    }
}
//primeiro passo: Instaciar o delegate na classe que contem o botão e a função do botão que fará a navegação. Usando weak para que isso nao comprometa a memoria do app ao longo da sua utilizacao.
//segundo passo: chamar o delegate.(função declarada no contrato do delegate) dentro da função do botão.
//terceiro passo: nesse momento a funcao delegateAction não tem função definida e isso deve ser feito na classe que irá usar ..na classe que tem o botão e irá chamar a próxima tela por meio de uma extensao.
// por ultimo para que a navegaçao de fato funcione o delegate deve ser colocado na funcao viewDidLoad da Controller que esta usando o delegate.
