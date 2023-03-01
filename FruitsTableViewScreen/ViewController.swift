//
//  ViewController.swift
//  FruitsTableViewScreen
//
//  Created by Abdelrahman Esmail on 01/03/2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var arrFruits = [Fruit]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        arrFruits.append(Fruit(name: "Orange", price: 12, description: "This is a popular fruit for people of all", photo:UIImage(named: "img_orange")!))
        arrFruits.append(Fruit(name: "Apple", price: 10, description: "This is a popular fruit for people of all", photo:UIImage(named: "img_apple")!))
        arrFruits.append(Fruit(name: "Mango", price: 10, description: "This is a popular fruit for people of all", photo:UIImage(named: "img_mango")!))
        arrFruits.append(Fruit(name: "Banana", price: 20, description: "This is a popular fruit for people of all", photo:UIImage(named: "img_banana")!))
        arrFruits.append(Fruit(name: "Papaya", price: 9, description: "This is a popular fruit for people of all", photo:UIImage(named: "img_papaya")!))
        arrFruits.append(Fruit(name: "Lemon", price: 5, description: "This is a popular fruit for people of all", photo:UIImage(named: "img_lemon")!))
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homecell") as! HomeTableViewCell
        let data = arrFruits[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name, price: data.price, description: data.description)
        
        cell.btnAddToFavorite.tag = indexPath.row
        cell.btnAddToFavorite.addTarget(self, action: #selector(addToFav(sender: )), for: .touchUpInside)
        
        
        
        
        
        return cell
    }
     @objc
    func addToFav(sender: UIButton){
        print("button index = \(sender.tag)")
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
}

struct Fruit

{
    let name : String
    let price : Double
    let description : String
    let photo : UIImage
}
