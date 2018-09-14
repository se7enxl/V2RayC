//
//  AddSubscribeViewController.swift
//  V2RayC
//
//  Created by cedricwu on 2018/09/14.
//  Copyright © 2018年 cedric. All rights reserved.
//

import Cocoa

protocol AddSubscribeViewControllerDelegate: NSObjectProtocol {
    func confirmButtonClicked(str: String)
}

class AddSubscribeViewController: NSViewController {
    @IBOutlet weak var textInput: NSTextField!
    
    weak var delegate: AddSubscribeViewControllerDelegate?
    
    // MARK: - UI Event
    @IBAction func confirmButtonClicked(_ sender: Any) {
        dismissViewController(self)
        if let d = delegate {
            let str = textInput?.stringValue ?? ""
            d.confirmButtonClicked(str: str)
        }
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
