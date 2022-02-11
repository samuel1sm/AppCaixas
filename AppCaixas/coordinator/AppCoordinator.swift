//
//  AppCoordinator.swift
//  AppCaixas
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 09/02/22.
//

import UIKit

class AppCoordinator {
    
    private let window: UIWindow

    init(window: UIWindow){
        self.window = window
    }
    
    func start(){
        let navigationController = UINavigationController()
        let home = HomeViewController(nibName: HomeViewController.identifier, bundle: nil)
        navigationController.viewControllers = [home]
        navigationController.navigationBar.backgroundColor = .gray
        self.window.frame = UIScreen.main.bounds
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
}
