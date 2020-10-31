//
//  ViewController.swift
//  GetStorm
//
//  Created by Akshay Ramesh on 10/31/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let fileManager = FileManager.default
        let projectPath = Bundle.main.resourcePath!
        do {
            let contents = try fileManager.contentsOfDirectory(atPath: projectPath)
            for content in contents {
                if content.hasPrefix("nssl") {
                    print(content)
                }
            }
        } catch {
            print(error)
        }
        print(projectPath)
    }


}

