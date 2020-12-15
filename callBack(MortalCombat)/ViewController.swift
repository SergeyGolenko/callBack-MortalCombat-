//
//  ViewController.swift
//  callBack(MortalCombat)
//
//  Created by Сергей Голенко on 15.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    
   
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageMC: UIImageView!
    
    @IBAction func selectPlayer(_ sender: UIButton) {
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imageMC.image = UIImage(named: "Mortal")
        labelName.text = ""
        labelName.textColor = #colorLiteral(red: 0.5446497202, green: 0.07774124295, blue: 0.168818593, alpha: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "0000"{
            if let selectVC = segue.destination as? SecondViewController {
         
                selectVC.callBack = {[weak self] image,text in
                    guard let self = self else {return}
                    self.imageMC.image = image
                    self.labelName.text = text
                  

                }
            }
        }
    }


}

