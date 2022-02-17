//
//  CardsScrollView.swift
//  AppCaixas
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 15/02/22.
//

import UIKit

class CardsScrollView: UIView {
    static let indentifier = "CardsScrollView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        standartInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        standartInit()
    }
    
    func standartInit() {
        let nib = UINib(nibName: CardsScrollView.indentifier, bundle: .main)
        
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView ?? UIView()
        
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
        addSubview(view)
    }
}
