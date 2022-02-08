//
//  HomeViewController.swift
//  AppCaixas
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 07/02/22.
//

import UIKit

class HomeViewController: UIViewController {
    static let identifier = "HomeViewController"
    @IBOutlet weak var boxesTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "teste"
        boxesTable.register(UINib(nibName: BoxesViewCell.identifier, bundle: nil), forCellReuseIdentifier: BoxesViewCell.identifier)
        boxesTable.dataSource = self
    }

}

extension HomeViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BoxesViewCell.identifier, for: indexPath) as? BoxesViewCell else { fatalError("dasdasb")}
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    
    
}

