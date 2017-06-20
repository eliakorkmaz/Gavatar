//
//  ViewController.swift
//  Gavatar
//
//  Created by xcodewarrior on 19.06.2017.
//  Copyright © 2017 EmrahKorkmaz. All rights reserved.
//

import UIKit
import CoreImage
import CoreGraphics



/*
    Controller for testing Gavatar the Avatar Generator without mapping.
 */

class ViewController: UIViewController {

    var tappedCount : Int = 0;
    
    
    // outlets for buttons
    
    @IBOutlet weak var numbersButton: UIButton!
    @IBOutlet weak var aButtonOutlet: UIButton!
    @IBOutlet weak var bButtonOutlet: UIButton!
    @IBOutlet weak var cButtonOutlet: UIButton!
    @IBOutlet weak var dButtonOutlet: UIButton!
    @IBOutlet weak var xButtonOutlet: UIButton!
    @IBOutlet weak var wButtonOutlet: UIButton!
    @IBOutlet weak var tButtonOutlet: UIButton!
    @IBOutlet weak var pButtonOutlet: UIButton!
    @IBOutlet weak var ironManButtonOutlet: UIButton!
    @IBOutlet weak var flashButtonOutlet: UIButton!
    @IBOutlet weak var greenButtonOutlet: UIButton!
    @IBOutlet weak var thorButtonOutlet: UIButton!
    //////////////////////
    
    
    func setButtonsStyle(){
        numbersButton.backgroundColor = UIColor.blue;
        numbersButton.setTitle("NUMBERS", for: .normal)
        numbersButton.setTitleColor(.black, for: .normal);
        numbersButton.layer.cornerRadius = 3;
        
        aButtonOutlet.backgroundColor = UIColor.blue;
        aButtonOutlet.setTitle("A ", for: .normal)
        aButtonOutlet.setTitleColor(.black, for: .normal);
        aButtonOutlet.layer.cornerRadius = 3;
        
        bButtonOutlet.backgroundColor = UIColor.blue;
        bButtonOutlet.setTitle("B", for: .normal);
        bButtonOutlet.layer.cornerRadius = 3;
        bButtonOutlet.setTitleColor(.black, for: .normal);

        
        cButtonOutlet.backgroundColor = UIColor.blue;
        cButtonOutlet.setTitle("C", for: .normal);
        cButtonOutlet.layer.cornerRadius = 3;
        cButtonOutlet.setTitleColor(.black, for: .normal);

        dButtonOutlet.backgroundColor = UIColor.blue;
        dButtonOutlet.setTitle("D", for: .normal);
        dButtonOutlet.layer.cornerRadius = 3;
        dButtonOutlet.setTitleColor(.black, for: .normal);

        xButtonOutlet.backgroundColor = UIColor.blue;
        xButtonOutlet.setTitle("X", for: .normal);
        xButtonOutlet.layer.cornerRadius = 3;
        xButtonOutlet.setTitleColor(.black, for: .normal);

        wButtonOutlet.backgroundColor = UIColor.blue;
        wButtonOutlet.setTitle("W", for: .normal);
        wButtonOutlet.layer.cornerRadius = 3;
        wButtonOutlet.setTitleColor(.black, for: .normal);

        tButtonOutlet.backgroundColor = UIColor.blue;
        tButtonOutlet.setTitle("T", for: .normal);
        tButtonOutlet.layer.cornerRadius = 3;
        tButtonOutlet.setTitleColor(.black, for: .normal);

        pButtonOutlet.backgroundColor = UIColor.blue;
        pButtonOutlet.setTitle("P", for: .normal);
        pButtonOutlet.layer.cornerRadius = 3;
        pButtonOutlet.setTitleColor(.black, for: .normal);

        ironManButtonOutlet.backgroundColor = UIColor.red;
        ironManButtonOutlet.setTitle("IRON MAN", for: .normal);
        ironManButtonOutlet.layer.cornerRadius = 3;
        ironManButtonOutlet.setTitleColor(.black, for: .normal);

        
        flashButtonOutlet.backgroundColor = UIColor.yellow;
        flashButtonOutlet.setTitle("FLASH", for: .normal);
        flashButtonOutlet.layer.cornerRadius = 3;
        flashButtonOutlet.setTitleColor(.black, for: .normal);

        greenButtonOutlet.backgroundColor = UIColor.green;
        greenButtonOutlet.setTitle("GREEN LANTERN", for: .normal);
        greenButtonOutlet.layer.cornerRadius = 3;
        greenButtonOutlet.setTitleColor(.black, for: .normal);

        
        thorButtonOutlet.backgroundColor = UIColor.yellow
        thorButtonOutlet.setTitle("THOR", for: .normal);
        thorButtonOutlet.layer.cornerRadius = 3;
        thorButtonOutlet.setTitleColor(.black, for: .normal);

        
        
        
    }
    
    
    var fAvatar : Gavatar = Gavatar();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fAvatar = Gavatar(avatarSize: CGSize(width: imageView.frame.width, height: imageView.frame.height));
        
        self.setButtonsStyle()

        self.imageView.image = fAvatar.generateNumber(number: 3);
    }

    override func awakeFromNib() {
        
    }
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func buttonPressed(_ sender: Any) {
        let avatar : Gavatar = Gavatar(avatarSize: CGSize(width: imageView.frame.width, height: imageView.frame.height));
        
        
        self.imageView.image = avatar.generateNumber(number: tappedCount);
        
        if(tappedCount >= 10){
            tappedCount %= 10;
        }
        
        tappedCount +=  1;
    }

    
    @IBAction func aButton(_ sender: Any) {
    
        self.imageView.image = fAvatar.generateLetter(letter: "a");
        
    }
    
    @IBAction func bButton(_ sender: Any) {
        
        self.imageView.image = fAvatar.generateLetter(letter: "b");
    }
    
    @IBAction func cButton(_ sender: Any) {
        
        self.imageView.image = fAvatar.generateLetter(letter: "c");
    }
    
    @IBAction func dButton(_ sender: Any) {
        
        self.imageView.image = fAvatar.generateLetter(letter: "d");
    }
    
    @IBAction func xButton(_ sender: Any) {
    
        self.imageView.image = fAvatar.generateLetter(letter: "x");
        
    }
    @IBAction func wButton(_ sender: Any) {
    
        self.imageView.image = fAvatar.generateLetter(letter: "w");
        
    }
    
    
    @IBAction func tButton(_ sender: Any) {
        
        self.imageView.image = fAvatar.generateLetter(letter: "t");
        
    }
    
    @IBAction func pButton(_ sender: Any) {
        
        
        self.imageView.image = fAvatar.generateLetter(letter: "p");
        
    }
    
    @IBAction func ironManButton(_ sender: Any) {
      
        
        self.imageView.image = fAvatar.generateSuperHero(hero: .Ironman)
        
    }
    
    @IBAction func flashButton(_ sender: Any) {
       
        
        self.imageView.image = fAvatar.generateSuperHero(hero: .Flash)
        
    }
    
    
    @IBAction func greenButton(_ sender: Any) {
        
        self.imageView.image = fAvatar.generateSuperHero(hero: .GreenLantern)
    }
    
    @IBAction func thorButton(_ sender: Any) {
        
        self.imageView.image = fAvatar.generateSuperHero(hero: .Thor)
    }
    
}

