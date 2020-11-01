//
//  ViewController.swift
//  GetStorm
//
//  Created by Akshay Ramesh on 10/31/20.
//

import UIKit

class ViewController: UITableViewController {
    var stormPicsArray = [String]()
    
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
                    stormPicsArray.append(content)
                }
            }
        } catch {
            print(error)
        }
        print(projectPath)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTextCell", for: indexPath)
        cell.textLabel?.text = stormPicsArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stormPicsArray.count
    }


}

