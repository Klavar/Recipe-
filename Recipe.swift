//
//  Recipe.swift
//  Resipe
//
//  Created by Tony Merritt on 08/09/2016.
//  Copyright © 2016 Tony Merritt. All rights reserved.
//

import Foundation
import CoreData
import UIKit
@objc(Recipe)
class Recipe: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    func setRecipeImage(image: UIImage) {
        let data = UIImagePNGRepresentation(image)
        self.image = data
        
    }
    
    func getRecipeImage() -> UIImage {
        let image = UIImage(data: self.image!)!
        return image
        
    }
}
