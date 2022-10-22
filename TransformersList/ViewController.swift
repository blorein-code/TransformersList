//
//  ViewController.swift
//  TransformersList
//
//  Created by Berke Topcu on 21.10.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var transformersList = [Transformers]()
    var chosenTransformer : Transformers?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        //Transformers Object
        let optimus = Transformers(initedName: "Optimus Prime", initedImage: UIImage(named: "prime.jpg")!, initedType: TransformerType.Autobot)
        let megatron = Transformers(initedName: "Megatron", initedImage: UIImage(named: "megatron.jpg")!, initedType: TransformerType.Desepticons)
        let grimlock = Transformers(initedName: "Grimlock", initedImage: UIImage(named: "grimlock.jpg")!, initedType: TransformerType.Autobot)
        
        transformersList.append(optimus)
        transformersList.append(megatron)
        transformersList.append(grimlock)
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transformersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = transformersList[indexPath.row].name
        cell.contentConfiguration = content
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenTransformer = transformersList[indexPath.row]
        
        self.performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
        var destinationVC = segue.destination as! SecondViewController
            destinationVC.selectedTransformer = chosenTransformer
            
        }
    }
    
    

}

