//
//  RecipeCollectionViewController.swift
//  Saviori_App
//
//  Created by 11k on 2/29/24.
//

import UIKit


class RecipeCollectionViewController: UICollectionViewController {
    let columnLayout = Layout(
        cellsPerRow:3,
        minimumInteritemSpacing: 50,
        minimumLineSpacing: 200,
        sectionInset: UIEdgeInsets(top: 10, left: 50, bottom: 10, right: 50)
    )
    
    let recipes = [Recipe(name: "Chinese", recipelist: [RecipeList(recipeName: "Fried Rice"), RecipeList(recipeName: "Shrimp Fried Rice")], imageView: #imageLiteral(resourceName: "Japan")),
                                Recipe(name: "Cubian", recipelist: [RecipeList(recipeName: "Rice")], imageView: #imageLiteral(resourceName: "cuba flag")),
                   //                   Recipe(name: "Greek", recipelist: "ha", imageView: #imageLiteral(resourceName: "greek")),
                   //                   Recipe(name: "Indian", recipelist: "ha", imageView: #imageLiteral(resourceName: "Indian flag")),
                   //                   Recipe(name: "Japanese", recipelist: "ha", imageView: #imageLiteral(resourceName: "Japan")),
                   //                   Recipe(name: "Haitian", recipelist: "ha", imageView: #imageLiteral(resourceName: "Haitian")),
                   //                   Recipe(name: "American", recipelist: "ha", imageView: #imageLiteral(resourceName: "american")),
                   //                   Recipe(name: "Salvadorian", recipelist: "ha", imageView: #imageLiteral(resourceName: "salvadorian")),
                   //                   Recipe(name: "Jamaican", recipelist: "ha", imageView: #imageLiteral(resourceName: "Jamaican"))
                   
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("dd")
        collectionView?.collectionViewLayout = columnLayout
        collectionView?.contentInsetAdjustmentBehavior = .always
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return recipes[section].recipelist.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "table", for: indexPath) as! RecipeCollectionViewCell
        
        
        cell.imageView.image = recipes[indexPath.item].imageView
        cell.recipeName.text = recipes[indexPath.item].name
        
        cell.imageView.layer.borderWidth = 1.0
        cell.imageView.layer.borderColor = UIColor.black.cgColor
        
        return cell
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView?.collectionViewLayout.invalidateLayout()
        super.viewWillTransition(to: size, with: coordinator)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationController = segue.destination as? recipeListTableViewController,
            let indexPath = collectionView.indexPathsForSelectedItems?.first {
               let recipe = recipes[indexPath.item]
               let recipesList = recipe.recipelist
               destinationController.recipes = recipesList
           }
        
    }
    
}
