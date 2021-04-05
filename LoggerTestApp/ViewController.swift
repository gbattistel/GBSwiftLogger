//
//  ViewController.swift
//  LoggerTestApp
//
//  Created by Guillermo Battistel on 3/28/21.
//

import UIKit
import GBSwiftLogger

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        Logger.log.verboseLevel = .all // Enable all verbosity levels
        Logger.log.e(message: "My Error message")
        Logger.log.s(message: "My Success message")
        Logger.log.i(message: "My Information message")
        Logger.log.w(message: "My Warning message")

    }

}
