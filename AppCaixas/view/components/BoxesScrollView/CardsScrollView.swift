//
//  CardsScrollView.swift
//  AppCaixas
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 15/02/22.
//

import UIKit
import RxCocoa
import RxSwift

class CardsScrollView: UIView {
    static let indentifier = "CardsScrollView"
    @IBOutlet var cardsStack: UIStackView!
    var cardItems: [CardCellModel]?

    override init(frame: CGRect) {
        super.init(frame: frame)
        standartInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        standartInit()
    }

    func loadCards(cards: [CardCellModel]) {
        cardItems = cards
        cards.forEach { cell in
            let card = CardView()
            card.configureCard(data: cell)
            cardsStack.addArrangedSubview(card)
        }
    }

    func standartInit() {
        let nib = UINib(nibName: CardsScrollView.indentifier, bundle: .main)

        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView ?? UIView()

        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        addSubview(view)
    }
}
