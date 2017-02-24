//
//  TableViewManager.swift
//  MailHeaderLock
//
//  Created by Saagar Jha on 2/24/17.
//  Copyright © 2017 Saagar Jha. All rights reserved.
//

import AppKit

@objc
protocol TableViewManager {
	func tableView(_ tableView: NSTableView, didClickTableColumn column: NSTableColumn)
}
