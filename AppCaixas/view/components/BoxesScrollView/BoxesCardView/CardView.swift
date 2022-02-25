//
//  CardViewController.swift
//  AppCaixas
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 11/02/22.
//

import UIKit

class CardView: UIView {
    static let indentifier = "CardView"
    @IBOutlet var contentView: UIView!
    @IBOutlet var cardImage: UIImageView!
    @IBOutlet var textLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        standartInit()
        configureBorders()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        standartInit()
    }

    func configureBorders() {
        self.cornerRadius = 20
    }

    func standartInit() {
        let nib = UINib(nibName: CardView.indentifier, bundle: .main)

        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView ?? UIView()

        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }

    func configureCard(data: CardCellModel) {
        textLabel.text = data.getBoxInfos().boxName
        cardImage.image = UIImage(named: data.imageUrl)
    }
}
