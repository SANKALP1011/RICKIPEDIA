//
//  FactTableViewCell.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 25/07/21.
//

import UIKit
import Foundation

class FactTableViewCell: UITableViewCell {

    @IBOutlet weak var charImage: UIImageView!
    @IBOutlet weak var charName: UILabel!
    @IBOutlet weak var charStatus: UILabel!
    @IBOutlet weak var charSpecies: UILabel!
    @IBOutlet weak var charGender: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
