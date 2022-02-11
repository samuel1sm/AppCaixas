//
//  BocCellViewModel.swift
//  AppCaixas
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 09/02/22.
//

import Foundation
import RxSwift
import RxCocoa
class BoxCellViewModel {
    let data : Observable<[BoxCellModel]>
    
    init(){
        data = Observable.just([BoxCellModel(imageUrl: "person.2", boxType: .reserva),
                                BoxCellModel(imageUrl: "trash.fill", boxType: .creditoPrivado),
                                BoxCellModel(imageUrl: "trash.fill", boxType: .multimercados),
                                BoxCellModel(imageUrl: "trash.fill", boxType: .fundoDeAcoes),
                                BoxCellModel(imageUrl: "trash.fill", boxType: .protecao),
                                BoxCellModel(imageUrl: "trash.fill", boxType: .previdencia)])
        
    }
    
    
    
}
