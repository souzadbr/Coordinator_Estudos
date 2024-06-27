//
//  DataCollectionDelegate.swift
//  Estudo_Coordinator
//
//  Created by Debora Rodrigues  on 27/06/24.
//

import Foundation

protocol DataCollectionDelegate: AnyObject {
    func didCollectData(name: String, age: String)
}
