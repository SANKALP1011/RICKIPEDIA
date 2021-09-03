//
//  FactViewController.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 20/06/21.
//

import Foundation
import UIKit
import SwiftyJSON
import Kingfisher
class FactViewController: WelcomeViewController{
    @IBOutlet weak var factTableView: UITableView!
    
 var factModel = [FactModel]()
    
    override func viewDidLoad() {
        self.factTableView.delegate = self
        self.factTableView.dataSource = self
        factTableView.rowHeight = 200
        parseJSON()
    }

    
    
    func parseJSON(){
        guard  let url = URL(string: "https://rickandmortyapi.com/api/character")
        else{
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data , response , error) in
            guard let data = data
            else{
                return
            }
            do{
                let json = try! JSON(data: data)
                let results = json["results"]
                for arr in results.arrayValue{
                    self.factModel.append(FactModel(json: arr))
                }
                print(self.factModel)
                DispatchQueue.main.async {
                    self.factTableView.reloadData()
                }
                
            }
            catch{
                print(error.localizedDescription)
            }
            
        }
        task.resume()
    
    }
    
        
}

// MARK:- TABLE VIEW DELEGATE

extension FactViewController: UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FactCell", for: indexPath) as! FactTableViewCell
        cell.charName.text = factModel[indexPath.row].name
        cell.charStatus.text = factModel[indexPath.row].status
        cell.charSpecies.text = factModel[indexPath.row].species
        cell.charGender.text = factModel[indexPath.row].gender
        let url = URL(string: factModel[indexPath.row].image)
        cell.charImage.kf.setImage(with: url)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "goToCharDetails", sender: self)
        factTableView.deselectRow(at: indexPath, animated: true)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailsViewController
        destinationVC.details = factModel[factTableView.indexPathForSelectedRow?.row ?? 1]
        
        
        
        
    }
    
}
