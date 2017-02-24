//
//  MailHeaderLock.swift
//  MailHeaderLock
//
//  Created by Saagar Jha on 2/24/17.
//  Copyright © 2017 Saagar Jha. All rights reserved.
//

import AppKit

@objc(MailHeaderLock)
class MailHeaderLock: NSObject {
	private static let swizzle: () = {
		let tableViewManager: AnyClass? = NSClassFromString("TableViewManager")
		let tableView_didClickTableColumn = #selector(TableViewManager.tableView(_:didClickTableColumn:))
		let mhl_tableView_didClickTableColumn = #selector(MailHeaderLock.mhl_tableView(_:didClickTableColumn:))
		SwizzlingUtilities.swizzle(selector: tableView_didClickTableColumn, forInstancesOf: tableViewManager, with: mhl_tableView_didClickTableColumn, from: MailHeaderLock.self)
	}()

	override class func initialize() {
		_ = swizzle
	}
	
	dynamic func mhl_tableView(_ tableView: NSTableView, didClickTableColumn column: NSTableColumn) {
		return // Ignore the click
	}
}
