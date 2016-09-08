//
//  RecipeCell.swift
//  Resipe
//
//  Created by Tony Merritt on 08/09/2016.
//  Copyright © 2016 Tony Merritt. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func ConfigureCell(recipe: Recipe) {
        
        recipeTitle.text = recipe.title
        recipeImage.image = recipe.getRecipeImage()
    }

}
