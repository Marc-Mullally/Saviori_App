//
//  RecipeCollectionViewController.swift
//  Saviori_App
//
//  Created by 11k on 2/29/24.
//

import UIKit

//private let reuseIdentifier = "table"

class RecipeCollectionViewController: UICollectionViewController {
    let inset: CGFloat = 10
      let minimumLineSpacing: CGFloat = 10
      let minimumInteritemSpacing: CGFloat = 10
      let cellsPerRow = 5
    let recipes = [Recipe(name: "Chinese", recipelist: "ha", imageView: #imageLiteral(resourceName: "download")),
                   Recipe(name: "Cubian", recipelist: "ha", imageView: #imageLiteral(resourceName: "New Project (2) (1)")),
                   Recipe(name: "Greek", recipelist: "ha", imageView: #imageLiteral(resourceName: "New Project (2) (1)")),
                   Recipe(name: "Indian", recipelist: "ha", imageView: #imageLiteral(resourceName: "New Project (2) (1)")),
                   Recipe(name: "Japanese", recipelist: "ha", imageView: #imageLiteral(resourceName: "New Project (2) (1)")),
                   Recipe(name: "Haitian", recipelist: "ha", imageView: #imageLiteral(resourceName: "New Project (2) (1)")),
                   Recipe(name: "American", recipelist: "ha", imageView: #imageLiteral(resourceName: "New Project (2) (1)")),
                   Recipe(name: "Salvadorian", recipelist: "ha", imageView: #imageLiteral(resourceName: "New Project (2) (1)")),
                   Recipe(name: "Jamaican", recipelist: "ha", imageView: #imageLiteral(resourceName: "New Project (2) (1)"))
                   
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.contentInsetAdjustmentBehavior = .always

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
         return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return minimumLineSpacing
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
         return minimumInteritemSpacing
     }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let marginsAndInsets = inset * 2 + collectionView.safeAreaInsets.left + collectionView.safeAreaInsets.right + minimumInteritemSpacing * CGFloat(cellsPerRow - 1)
               let itemWidth = ((collectionView.bounds.size.width - marginsAndInsets) / CGFloat(cellsPerRow)).rounded(.down)
               return CGSize(width: itemWidth, height: itemWidth)
        }
//        collectionView.setCollectionViewLayout(generateLayout(), animated: false)
//        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        
        // Do any additional setup after loading the view.
    

    /*
     
     
     
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return recipes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "table", for: indexPath) as! RecipeCollectionViewCell
        
        
       cell.imageView.image = recipes[indexPath.item].imageView
        cell.recipeName.text = recipes[indexPath.item].name

        
        return cell
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
           collectionView?.collectionViewLayout.invalidateLayout()
           super.viewWillTransition(to: size, with: coordinator)
       }
    
    
}
