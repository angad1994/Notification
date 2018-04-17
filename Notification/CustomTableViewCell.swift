//
//  CustomTableViewCell.swift
//  Notification
//
//  Created by Macbook Pro on 05/04/18.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
      selectionStyle  = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func cellSetUp(_ semiData:SemiData){
        if let imageURl = semiData.subData?.profile?.imageUrl {
                self.cellImageView.setImage(with: imageURl)
            }
            if let name = semiData.subData?.profile?.name,let action = semiData.subData?.action {
                    nameLabel.text = name + " " + action
            }
    }
    
}
