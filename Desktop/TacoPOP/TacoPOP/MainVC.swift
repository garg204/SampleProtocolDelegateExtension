//
//  MainVC.swift
//  TacoPOP
//
//  Created by Ankit on 08/07/17.
//  Copyright © 2017 Ankit. All rights reserved.
//

import UIKit

class MainVC: UIViewController,DropShadow {

    
   
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
    }
    
    

    @IBAction func btnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "testsegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "testsegue"{
            
            if segue.destination is SecondVC {
                
                    if let dest  =  segue.destination as? SecondVC
                    {
                                dest.delegate = self
                    }
                
            }
    }
        
      

    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

