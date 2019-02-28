//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by omid karimpour on 2016-06-23.
//  Copyright © 2016 omid karimpour. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet var thumbnailImageView: UIImageView!
    @IBOutlet var nameLable: UILabel!
    @IBOutlet var locationLable: UILabel!
    @IBOutlet var typeLable: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
