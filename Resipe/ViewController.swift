//
//  ViewController.swift
//  Resipe
//
//  Created by Tony Merritt on 08/09/2016.
//  Copyright © 2016 Tony Merritt. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var recipes = [Recipe]()

    
        override func viewDidLoad() {
        super.viewDidLoad()

            tableView.delegate = self
            tableView.dataSource = self
            
            
    }
    override func  viewDidAppear(animated: Bool) {
        fetchAndSetResults()
        tableView.reloadData()
    }
    
    
            func fetchAndSetResults() {
                let app = UIApplication.sharedApplication().delegate as! AppDelegate
                let context = app.managedObjectContext
                let fetchRequest = NSFetchRequest(entityName: "Recipe")
                
                do {
                    let results = try context.executeFetchRequest(fetchRequest)
                    self.recipes = results as! [Recipe]
                
                }catch let err as NSError {
                    print(err.debugDescription)
                }
                
            }
  
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("RecipeCell") as? RecipeCell {
            
            let recipe = recipes[indexPath.row]
            cell.ConfigureCell(recipe)
            return cell
        }else {
            return RecipeCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
}

