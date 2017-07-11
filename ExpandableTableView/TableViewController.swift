//
//  TableViewController.swift
//  ExpandableTableView
//
//  Created by Thang Truong on 7/6/17.
//  Copyright © 2017 Thang Truong. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var headerSections : [ContentType] = {
        Array(0 ..< SectionEnum.all.rawValue).map({ SectionEnum(rawValue: $0)!.contents })
    }()
    
    var contentCells : [[ContentType]] = {
        Array(0 ..< SectionEnum.all.rawValue).map({
            SectionEnum(rawValue: $0)!.cellContents
        })
    }()
    
    var tempRepoContentCells: [[ContentType]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "HeaderFooterView", bundle: Bundle.main), forHeaderFooterViewReuseIdentifier: "HeaderFooterView")
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionContent: ContentType = headerSections[section]
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderFooterView") as? HeaderFooterView
        headerView?.dataSection = sectionContent
        headerView?.section = section
        headerView?.delegate = self
        return headerView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
}

// MARK: - UITableViewDataSource

extension TableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return headerSections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentCells[section].count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return headerSections[indexPath.section].isExpanded ? 44 : 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! CustomCell
        let content = contentCells[indexPath.section][indexPath.row]
        cell.cellContent = content
        return cell
    }
}

// MARK: - TableViewHeaderSectionProtocol

extension TableViewController: HeaderFooterViewProtocol {
    func headerFooterView(_ headerFooterView: HeaderFooterView, didSelectAt section: Int) {
        headerSections[section].toogle()

        tableView.reloadSections(IndexSet(integer: section), with: .fade)
    }
    
}

