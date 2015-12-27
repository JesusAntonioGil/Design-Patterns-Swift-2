//
//  ViewController.swift
//  CompositePattern
//
//  Created by Jesus Antonio Gil on 18/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let horrorCategory = VODCategory(name: "Horror", descriptionCategory: "Horror movies category")
        let tvSeriesCategory = VODCategory(name: "TV Series", descriptionCategory: "TV Series category")
        let comedyCategory = VODCategory(name: "Comedy", descriptionCategory: "Comedy category")
        let voSTvSeries = VODCategory(name: "VOSTSeries", descriptionCategory: "VOST TV Series sub category")
        
        let allVODComponents = VODCategory(name: "All VOD", descriptionCategory: "All vod components")
        let vodManager = VODManager(vod: allVODComponents)
        
        allVODComponents.add(horrorCategory)
        allVODComponents.add(tvSeriesCategory)
        allVODComponents.add(comedyCategory)
        
        tvSeriesCategory.add(voSTvSeries)
        
        horrorCategory.add(VODItem(name: "Scream", descriptionItem: "Scream movie", price: 9.99))
        horrorCategory.add(VODItem(name: "Paranormal Activity", descriptionItem: "Paranormal Activity movie", price: 9.99))
        horrorCategory.add(VODItem(name: "Blair Witch Project", descriptionItem: "Blair Witch movie", price: 9.99))
        
        tvSeriesCategory.add(VODItem(name: "Game of Thrones S1E1", descriptionItem: "Game of Thrones season 1 episode 1", price: 1.99))
        tvSeriesCategory.add(VODItem(name: "Deadwood S1E1", descriptionItem: "Deadwood season 1 episode 1", price: 1.99))
        tvSeriesCategory.add(VODItem(name: "Breaking Bad S1E1", descriptionItem: "Breaking Bad season 1 episode 1", price: 1.99))
        
        voSTvSeries.add(VODItem(name: "Doc Martin S1E1 French", descriptionItem: "Doc Martin season 1 episode 1 French", price: 1.99))
        voSTvSeries.add(VODItem(name: "Camping Paradis S1E1 French", descriptionItem: "Camping Paradis season 1 episode 1 French", price: 1.99))
        
        comedyCategory.add(VODItem(name: "Very Bad Trip", descriptionItem: "Very Bad Trip movie", price: 9.99))
        comedyCategory.add(VODItem(name: "Hot Chick", descriptionItem: "Hot Chick movie", price: 9.99))
        comedyCategory.add(VODItem(name: "Step Brothers", descriptionItem: "Step Brothers movie", price: 9.99))
        comedyCategory.add(VODItem(name: "Bad Teacher", descriptionItem: "Bad Teacher movie", price: 9.99))
        
        vodManager.displayCatalog()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

