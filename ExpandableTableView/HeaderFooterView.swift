//
//  HeaderFooterView.swift
//  ExpandableTableView
//
//  Created by Thang Truong on 7/6/17.
//  Copyright © 2017 Thang Truong. All rights reserved.
//

import UIKit

protocol HeaderFooterViewProtocol: class {
    func headerFooterView(_ headerFooterView: HeaderFooterView, didSelectAt section: Int)
}

class HeaderFooterView: UITableViewHeaderFooterView {
    @IBOutlet weak var headerImageView: UIImageView?
    @IBOutlet weak var titleLabel: UILabel?
    
    var dataSection: ContentType? {
        didSet {
            setUpContent()
        }
    }
    
    var section: Int?
    var tapGesture : UITapGestureRecognizer!
    weak var delegate: HeaderFooterViewProtocol?
    
    private var isExpanding : Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapHeaderView))
        self.addGestureRecognizer(tapGesture)
        backgroundView = UIView()
        backgroundView?.backgroundColor = UIColor.groupTableViewBackground
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpContent()
    }
    
    func setUpContent() {
        titleLabel?.text = dataSection?.title
        headerImageView?.image = dataSection?.image
    }
    
    @objc func didTapHeaderView() {
        if section != nil {
            delegate?.headerFooterView(self, didSelectAt: section!)
        }
    }
    
    override func prepareForReuse() {
        dataSection = nil
    }

}
