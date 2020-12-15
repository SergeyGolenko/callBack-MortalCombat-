//
//  SecondViewController.swift
//  callBack(MortalCombat)
//
//  Created by Сергей Голенко on 15.12.2020.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let subzeroText = "Subzero"
    private let xirexText = "Xirex"
    private let reptiliaText = "Reptilia"
    
    private let subzero = UIImage(named: "subzero")
    private let xirex  = UIImage(named: "xirex")
    private let scorpion = UIImage(named: "scorpion")
    private let reptilia = UIImage(named: "reptilia")
    
    var callBack:((UIImage?,String) -> ())?
    
    
    
    
    @IBAction func firstButton(_ sender: UIButton) {
        callBack? (subzero,subzeroText)
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func secondButton(_ sender: UIButton) {
        callBack? (xirex,xirexText)
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func thirdButton(_ sender: UIButton) {
        callBack? (scorpion,"Scorpion")
        navigationController?.popViewController(animated: true)
    }
    
    
    
    
    @IBAction func fourButton(_ sender: UIButton) {
        callBack? (reptilia,reptiliaText)
        navigationController?.popViewController(animated: true)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
}
