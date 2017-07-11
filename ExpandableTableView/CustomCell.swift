//
//  CustomCell.swift
//  ExpandableTableView
//
//  Created by Thang Truong on 7/11/17.
//  Copyright © 2017 Thang Truong. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    var cellContent: ContentType? {
        didSet {
            setUpContent()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpContent()
    }
    
    func setUpContent() {
        titleLabel?.text = cellContent?.title
        iconImageView?.image = cellContent?.image
    }
    
    override func prepareForReuse() {
        cellContent = nil
    }
}
