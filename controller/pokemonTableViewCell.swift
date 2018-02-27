//
//  pokemonTableViewCell.swift
//  combinedcodex
//
//  Created by User on 2/26/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

import UIKit

class pokemonTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var defaultLabel: UILabel!
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var baseLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
