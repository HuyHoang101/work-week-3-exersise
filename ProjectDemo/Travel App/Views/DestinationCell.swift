//
//  DestinationCell.swift
//  ProjectDemo
//
//  Created by hoang.nguyenh on 12/24/25.
//

import UIKit

class DestinationCell: UITableViewCell {

    @IBOutlet weak var destinationImageView: UIImageView!
    
    @IBOutlet weak var destinationName: UILabel!
    
    @IBOutlet weak var destinationLocation: UILabel!
    
    @IBOutlet weak var favorite: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
