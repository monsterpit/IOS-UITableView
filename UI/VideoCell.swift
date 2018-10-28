//
//  VideoCell.swift
//  UI
//
//  Created by MB on 10/28/18.
//  Copyright © 2018 MB. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var VideoImageView: UIImageView!
    @IBOutlet weak var VideoTitleLabel: UILabel!
    
    func setVideo(video : Video){
        VideoImageView.image = video.image
        VideoTitleLabel.text = video.title
    }
}
