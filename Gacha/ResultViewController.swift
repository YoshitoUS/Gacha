//
//  ResultViewController.swift
//  Gacha
//
//  Created by Yoshito Usui on 2024/05/07.
//

import UIKit

class ResultViewController: UIViewController {
    var number: Int!
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        number = Int.random(in: 0...9)
        if number == 9{
            characterImageView.image = UIImage(named: "IoTMesh")
            backgroundImageView.image = UIImage(named: "beBlue")
        }else if number >= 7{
            characterImageView.image = UIImage(named: "camera")
            backgroundImageView.image = UIImage(named: "bgGreen")
        }else{
            characterImageView.image = UIImage(named: "iphone")
            backgroundImageView.image = UIImage(named: "bgRed")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.characterImageView.center = self.view.center
        UIView.animate(withDuration: 1.0,delay: 0,options: [.curveEaseIn, .autoreverse, .repeat], animations: {
            self.characterImageView.center.y += 10.0
        }){ _ in
            self.characterImageView.center.y -= 10.0
            
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

}
