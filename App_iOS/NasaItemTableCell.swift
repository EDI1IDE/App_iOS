//
//  NasaItemTableCell.swift
//  App_iOS
//
//  Created by user178431 on 8/28/20.
//  Copyright © 2020 com.fiek. All rights reserved.
//

import UIKit

class NasaItemTableCell: UITableViewCell {
    
    @IBOutlet weak var ItemImageView: UIImageView!
    @IBOutlet weak var ItemDescriptionLabel: UILabel!
    @IBOutlet weak var ItemTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
