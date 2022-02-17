//
//  BoxCellViewModel.swift
//  AppCaixas
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 09/02/22.
//

import Foundation

struct BoxCellModel {
    let imageUrl: String
    let boxType: BoxType

    func getBoxInfos() -> BoxInfos {
        return BoxType.getBoxInfo(type: boxType)
    }
}

struct BoxInfos {
    let boxName: String
    let boxLiquidity: String
}

enum BoxType {
    case reserva
    case creditoPrivado
    case multimercados
    case fundoDeAcoes
    case protecao
    case previdencia
}

extension BoxType {
    static func getBoxInfo(type: BoxType) -> BoxInfos {
        switch type {
        case .reserva :
            return BoxInfos(boxName: "Reserva de Emegencia", boxLiquidity: "Imediato")
        case .creditoPrivado:
            return BoxInfos(boxName: "Credito Privado", boxLiquidity: "6 Meses")
        case .multimercados:
            return BoxInfos(boxName: "Multimercado", boxLiquidity: "2-3 Anos")
        case .fundoDeAcoes:
            return BoxInfos(boxName: "Fundo de Ações", boxLiquidity: "5 Anos")
        case .protecao:
            return BoxInfos(boxName: "Protecao", boxLiquidity: "sem tempo")
        case .previdencia:
            return BoxInfos(boxName: "Previdencia", boxLiquidity: "10 anos")

        }
    }
}
