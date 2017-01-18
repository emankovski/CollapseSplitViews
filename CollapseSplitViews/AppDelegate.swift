//
//  AppDelegate.swift
//  CollapseSplitViews
//
//  Created by Eugene Node on 1/17/17.
//  Copyright © 2017 Eugene Mankovski. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSSplitViewDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var splitView: NSSplitView!

    @IBAction func toggleButtonPressed(sender: AnyObject) {

        
        if splitView.isSubviewCollapsed(splitView.arrangedSubviews[1]) {
            splitView.setPosition(splitView.bounds.width / 2, ofDividerAtIndex: 0)
        } else {
            splitView.setPosition(splitView.bounds.width, ofDividerAtIndex: 0)
        }
        
    }

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func splitView(splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool {
        //You may choose which view you allow to collapse here...
        return true
    }
 
    func splitView(splitView: NSSplitView, shouldHideDividerAtIndex dividerIndex: Int) -> Bool {
        return true
    }
 
}



