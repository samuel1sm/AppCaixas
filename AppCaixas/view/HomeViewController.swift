//
//  HomeViewController.swift
//  AppCaixas
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 07/02/22.
//

import UIKit
import RxSwift
import RxCocoa
class HomeViewController: UIViewController {
    static let identifier = "HomeViewController"
    let viewModel = BoxCellViewModel()
    let disposeBag = DisposeBag()
    @IBOutlet weak var boxesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "teste"
        configureTable()
    }
    
    func configureTable(){
        boxesTable.register(UINib(nibName: BoxesViewCell.identifier, bundle: nil), forCellReuseIdentifier: BoxesViewCell.identifier)

        
        viewModel.data.bind(to: boxesTable.rx.items(cellIdentifier: BoxesViewCell.identifier, cellType: BoxesViewCell.self))
        { row,data,cell in
            cell.configureCell(boxCellModel: data)
        }.disposed(by: disposeBag)
        
    }

}
