//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Florian on 24/01/2022.
//

import UIKit

final class FeedImageCell: UITableViewCell {
    @IBOutlet private(set) var nameLabel: UILabel!
    @IBOutlet private(set) var statusLabel: UILabel!
    @IBOutlet private(set) var genderLabel: UILabel!
    @IBOutlet private(set) var feedImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        feedImageView.alpha = 0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        feedImageView.alpha = 0
    }
    
    func fadeIn(_ image: UIImage?) {
        feedImageView.image = image
        
        UIView.animate(
            withDuration: 0.3,
            delay: 0.3,
            options: [],
            animations: {
                self.feedImageView.alpha = 1
        })
    }
}
