//
//  BoxesViewCell.swift
//  AppCaixas
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 08/02/22.
//

import UIKit

class BoxesViewCell: UITableViewCell {
    static let identifier = "BoxesViewCell"
    @IBOutlet var boxImage: UIImageView!
    @IBOutlet var ruleLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func configureCell(boxCellModel: BoxCellModel) {
        boxImage.image =  UIImage(systemName: boxCellModel.imageUrl)
        ruleLabel.text = boxCellModel.getBoxInfos().boxLiquidity
        titleLabel.text = boxCellModel.getBoxInfos().boxName
    }

}
