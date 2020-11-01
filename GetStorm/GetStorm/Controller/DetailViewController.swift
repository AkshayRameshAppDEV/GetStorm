//
//  DetailViewController.swift
//  GetStorm
//
//  Created by Akshay Ramesh on 11/1/20.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailImageView: UIImageView!
    var imageSelected: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = imageSelected {
            detailImageView.image = UIImage(named: image)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
