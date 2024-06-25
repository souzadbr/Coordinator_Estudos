//
//  Coordinator.swift
//  Estudo_Coordinator
//
//  Created by Debora Rodrigues  on 25/06/24.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
