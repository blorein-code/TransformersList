//
//  SecondViewController.swift
//  TransformersList
//
//  Created by Berke Topcu on 21.10.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    var selectedTransformer : Transformers?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedTransformer?.name
        imageView.image = selectedTransformer?.image
        typeLabel.text = "\(selectedTransformer!.type)"
        // Do any additional setup after loading the view.
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
