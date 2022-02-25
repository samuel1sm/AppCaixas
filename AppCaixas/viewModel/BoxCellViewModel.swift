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
        data = Observable.just([CardCellModel(boxType: .reserva),
                                CardCellModel(boxType: .creditoPrivado),
                                CardCellModel(boxType: .multimercados),
                                CardCellModel(boxType: .fundoDeAcoes),
                                CardCellModel(boxType: .protecao),
                                CardCellModel(boxType: .previdencia)])

    }

}
