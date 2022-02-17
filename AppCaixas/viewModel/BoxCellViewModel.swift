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
    let data: Observable<[CardCellModel]>

    init() {
        data = Observable.just([CardCellModel(imageUrl: "person.2", boxType: .reserva),
                                CardCellModel(imageUrl: "trash.fill", boxType: .creditoPrivado),
                                CardCellModel(imageUrl: "trash.fill", boxType: .multimercados),
                                CardCellModel(imageUrl: "trash.fill", boxType: .fundoDeAcoes),
                                CardCellModel(imageUrl: "trash.fill", boxType: .protecao),
                                CardCellModel(imageUrl: "trash.fill", boxType: .previdencia)])

    }

}
