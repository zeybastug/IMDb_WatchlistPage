//
//  MovieTableViewCell.swift
//  IMDb
//
//  Created by Zeynep Baştuğ on 3.05.2022.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellBackground: UIView!
    
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var movieRating: UILabel!
    
    @IBOutlet weak var movieDate: UILabel!
    
    @IBOutlet weak var movieAgeLimitLabel: UILabel!
    
    @IBOutlet weak var movieDurationLabel: UILabel!
    
    @IBOutlet weak var movieDirectorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
