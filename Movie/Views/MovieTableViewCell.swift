//
//  MovieTableViewCell.swift
//  Movie
//
//  Created by Farid Qanbarov on 4/13/18.
//  Copyright © 2018 Farid Qanbarov. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
