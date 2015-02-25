//
//  TaskCell.swift
//  TaskIt
//
//  Created by Daniel Gilbert on 2/23/15.
//  Copyright (c) 2015 Daniel Gilbert. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    // Labels
    @IBOutlet weak var lblTask: UILabel!
    @IBOutlet weak var lblSubtask: UILabel!
    @IBOutlet weak var lblDate: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
