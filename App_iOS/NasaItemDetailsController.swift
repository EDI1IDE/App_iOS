//
//  NasaItemDetailsController.swift
//  App_iOS
//
//  Created by user178431 on 8/28/20.
//  Copyright © 2020 com.fiek. All rights reserved.
//

import UIKit

class NasaItemDetailsController: UIViewController {
    
    @IBOutlet weak var itemDescriptionLabel: UILabel!
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    
    var item: NasaItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        setValues()
    }
     func setValues() {
        if let item = item {
            title = item.id
            itemTitleLabel.text = item.name
            itemDescriptionLabel.text = item.desc
            itemImageView.kf.setImage(with: item.getUrl())
        }
    }}
