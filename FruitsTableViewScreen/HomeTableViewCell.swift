//
//  HomeTableViewCell.swift
//  FruitsTableViewScreen
//
//  Created by Abdelrahman Esmail on 01/03/2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imgFruitPhoto: UIImageView!
    @IBOutlet weak var fruitNameLbl: UILabel!
    @IBOutlet weak var fruitPriceLbl: UILabel!
    @IBOutlet weak var fruitDescLbl: UILabel!
    @IBOutlet weak var btnAddToFavorite: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(photo:UIImage,name:String,price:Double,description:String){
        
        imgFruitPhoto.image = photo
        fruitNameLbl.text = name
        fruitPriceLbl.text = "\(price) EGP"
        fruitDescLbl.text = description
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
