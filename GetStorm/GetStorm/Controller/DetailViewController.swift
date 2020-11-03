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
    var totalNumberOfImages: Int?
    var selectedImageNumber: Int?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageCount = totalNumberOfImages ?? 0
        let currentImageNumber = selectedImageNumber ?? 0
        self.title = "\(currentImageNumber) of \(imageCount)"
        if let image = imageSelected {
            detailImageView.image = UIImage(named: image)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
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
