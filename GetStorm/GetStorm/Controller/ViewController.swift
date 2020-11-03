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
        self.title = "GetStorm"
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
            stormPicsArray.sort()
        } catch {
            print(error)
        }
        print(projectPath)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTextCell", for: indexPath)
        cell.textLabel?.text = stormPicsArray[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 24)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stormPicsArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailView") as! DetailViewController
        detailViewController.imageSelected = stormPicsArray[indexPath.row]
        detailViewController.selectedImageNumber = indexPath.row + 1
        detailViewController.totalNumberOfImages = stormPicsArray.count
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}

