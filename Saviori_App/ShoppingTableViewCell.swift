//
//  ShoppingTableViewCell.swift
//  Saviori_App
//
//  Created by 2b on 3/11/24.
//
//
//  ShoppingTableViewCell.swift
//  Saviori_App
//
//  Created by 2b on 3/1/24.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {

    
    @IBOutlet var imageS: UIImageView!
    @IBOutlet var ingredientName: UILabel!
    @IBOutlet var ingredientType: UILabel!
    @IBOutlet var ingredientDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageS.layer.masksToBounds = true
        imageS.layer.borderWidth = 1.5
        imageS.layer.borderColor = UIColor.systemOrange.cgColor
        imageS.layer.cornerRadius = imageS.bounds.width / 6
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
