//
//  ViewController.swift
//  Table metod 2
//
//  Created by Süleyman Ekici on 10.08.2018.
//  Copyright © 2018 Süleyman Ekici. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var MySimpsons = [Simpson]()
    var chooseSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
     
        //Sınıflar
        let bart = Simpson()
        bart.name = "Bart Simpson"
        bart.occupation = "Öğrenci"
        bart.image = UIImage(named: "bart.png")!
        
        let homer = Simpson()
        homer.name = "Homer Simpson"
        homer.occupation = "Nükleer Güvenlik Uzmanı"
        homer.image = UIImage(named: "homer.png")!
        
        let marge = Simpson()
        marge.name = "Marge Simpson"
        marge.occupation = "Ev hanımı"
        marge.image = UIImage(named: "marge.png")!
        
        let  lisa = Simpson()
        lisa.name = "Lisa Simpson"
        lisa.occupation = "Öğrenci"
        lisa.image = UIImage(named: "lisa.png")!
        
        let maggie = Simpson()
        maggie.name = "Maggie Simpson"
        maggie.occupation = "Şarkıcı"
        maggie.image = UIImage(named: "maggie.png")!
        
        // Array
        
         MySimpsons.append(bart)
         MySimpsons.append(homer)
         MySimpsons.append(marge)
         MySimpsons.append(lisa)
         MySimpsons.append(maggie)
        
  
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = MySimpsons[indexPath.row].name
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chooseSimpson = MySimpsons[indexPath.row]
        performSegue(withIdentifier: "infotwoVC", sender: nil)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
       
           MySimpsons.remove(at: indexPath.row)
        
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infotwoVC" {
            let destinationVC = segue.destination as! infoVC
            destinationVC.selectedSimpson = self.chooseSimpson
            
        }
    }

}

