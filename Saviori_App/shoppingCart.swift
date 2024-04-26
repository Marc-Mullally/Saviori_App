//
//  shoppingCart.swift
//  Saviori_App
//
//  Created by 2b on 3/11/24.
//

//
//  Shopping Cart.swift
//  Saviori_App
//
//  Created by 2b on 2/28/24.
//

import Foundation
import UIKit

class shoppingCart: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController!.tabBar.layer.borderWidth = 0.50
        self.tabBarController!.tabBar.layer.borderColor = UIColor.clear.cgColor
        self.tabBarController?.tabBar.clipsToBounds = true
        
        
    }
    
    @IBOutlet var tabBorder: UITabBarItem!
    
    
    var tempCart : [Ingredient] = [Ingredient(brandName: "Hormel Black Label Original Bacon", ingredientGroup: "Bacon", cost: 4.98, image: #imageLiteral(resourceName: "Hormel Black Label Original Bacon") , calories: 100, storesAvailable: ["Walmart"], totalFat: 8, cholestrol: 25, sodium: 370, totalCarbohydrate: 0, protein: 6,  servings: 5, servingSize: "2 Pan-Fried Slices"), Ingredient(brandName: "Bos’n Frozen Seafood Raw Giant Calamari Rings", ingredientGroup: "Seafood", cost: 5.88, image: #imageLiteral(resourceName: "Bos’n Frozen Seafood Raw Giant Calamari Rings"), calories: 60, storesAvailable: ["Walmart"], totalFat: 1, cholestrol: 125, sodium: 150, totalCarbohydrate: 0, protein: 14, iron: 0.72, calcium: 52, servings: 5, servingSize: "85g"), Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"), Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"), Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"), Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"), Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg")]
    
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempCart.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Shopping", for: indexPath) as! ShoppingTableViewCell
        
        cell.imageS.image = tempCart[indexPath.row].image
        
        cell.ingredientName.text = tempCart[indexPath.row].brandName
        cell.ingredientType.text = tempCart[indexPath.row].ingredientGroup
        
        cell.ingredientDescription.text = "Cost: $\(tempCart[indexPath.row].cost) \nCalories: \(tempCart[indexPath.row].calories)g \nStores Available: \(tempCart[indexPath.row].storesAvailable)"
        

        return cell
    }
    
}
