//
//  ViewController.swift
//  PhotoFrame
//
//  Created by David Lima de Oliveira on 21/01/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var StackView: UIStackView!
    @IBOutlet weak var ImgBoat: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        StackView.layer.borderWidth = 10
        StackView.layer.borderColor = UIColor.orange.cgColor
        
        ImgBoat.layer.borderWidth = 20
        ImgBoat.layer.borderColor = UIColor.brown.cgColor
        
    }


}

