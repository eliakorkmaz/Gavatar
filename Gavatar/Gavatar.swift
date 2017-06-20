//
//  Gavatar.swift
//  Gavatar
//
//  Created by xcodewarrior on 19.06.2017.
//  Copyright © 2017 EmrahKorkmaz. All rights reserved.
//

import UIKit


/*
    Enums for Super Heroes
    ImageView basically have 36 section/piece so these figures are not very clear
*/

enum SuperHeroes {
    case Batman
    case Thor
    case GreenLantern
    case Flash
    case Xmen
    case Ironman
}

/*
    Gavatar class Definition
 */
class Gavatar{
    
    /*
     avatarSize represent basically imageView frame size
     */
    var avatarSize : CGSize;
    
    init(){
        self.avatarSize = CGSize();
    }
    
    init(avatarSize : CGSize){
        self.avatarSize = avatarSize;
    }
    
    func getSize() -> CGSize{
        return self.avatarSize;
    }
    
    
    
    func generateLetter(letter : Character) -> UIImage?{
        
        UIGraphicsBeginImageContextWithOptions(self.getSize(), true, 1)
    
        self.fillSectionAlphabetFigure(character: letter, size: getSize());
        
        let createdAvatar = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return createdAvatar
        
    }
    
    func generateNumber(number : Int) -> UIImage?{

        UIGraphicsBeginImageContextWithOptions(self.getSize(), true, 1)
    
        self.fillSectionNumberFigure(number: number, size: getSize());
        
        let createdAvatar = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return createdAvatar
        
    }
    
    func generateSuperHero(hero: SuperHeroes) -> UIImage? {

        UIGraphicsBeginImageContextWithOptions(self.getSize(), true, 1)
        
        self.fillSectionSuperHeroesFigure(hero: hero, size: getSize());
        
        let createdAvatar = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return createdAvatar
        
    }
    

    /*
        fillSection fill the given section(0..35 section) to chosen color.
    */
    func fillSection(section : Int , withColor : UIColor , withSize : CGSize) {
        let width = Int(withSize.width);
        let height = Int(withSize.height);
        
        let sectionX : Int = width / 6;
        let sectionY : Int = height / 6;
        
        let context = UIGraphicsGetCurrentContext()!
        
        
        let rowSection = section % 6;
        let columnSection = section / 6;
        
        var temp1 : Int = 0;
        var temp2 : Int = 0;
        for _ in 0..<sectionX {
            for _ in 0..<sectionY {
                context.setFillColor(withColor.cgColor);
                context.fill(CGRect(x: rowSection * sectionX + temp1 , y: columnSection * sectionY + temp2, width: 1, height: 1));
                temp2 += 1;
            }
            temp2 = 0;
            temp1 += 1;
        }
    }
    
    /*
        to create Alphabet figure , I created array for every Alphabet 
       [0 , 1 , 2 , 3 , 4 , 5
        6 , 7 , 8 , 9 , 10, 11
        12, 13, 14, 15, 16, 17
        18, 19, 20, 21, 22, 23
        24, 25, 26, 27, 28, 29
        30, 31, 32, 33, 34, 35
        ]                           
     
        matris above represent that I have handled the section problem .
        For example to create i/I figure , I feel free to take 3,9,15,21,27 or 8,14,20,26 sections.
     */
    func fillSectionAlphabetFigure(character : Character , size : CGSize){
        let color : UIColor = randomColorGenerate();
        var followingSections : [Int] = [];
        
        switch character {
        case "a", "A":
            followingSections = [8,9,10,20,21,22,14,16,26,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "b", "B":
            followingSections = [8,9,10,14,17,20,21,26,22,29,32,33,34];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "c", "C":
            followingSections = [8,9,10,14,20,26,32,33,34];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "d", "D":
            followingSections = [8,9,10,14,20,26,32,33,34,17,23,29];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "e", "E":
            followingSections = [8,9,10,14,20,26,32,33,34,21,22];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "f", "F":
            followingSections = [8,9,10,14,20,26,32,21,22];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "g", "G":
            followingSections = [8,9,10,14,20,26,32,33,34,21,22,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "h", "H":
            followingSections = [8,10,14,20,26,32,34,21,22,32,16,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "i", "I":
            followingSections = [8,14,20,26,32];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "j", "J":
            followingSections = [10,16,22,28,27,26];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "k", "K":
            followingSections = [7,13,19,20,25,31,15,10,27,34];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "l", "L":
            followingSections = [8,14,20,26,27,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "m", "M":
            followingSections = [7,13,19,25,14,21,16,11,17,23,29]
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "n", "N":
            followingSections = [7,13,19,25,14,21,28,10,16,22]
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "o", "O":
            followingSections = [7,13,19,9,15,21,8,20]
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "p", "P":
            followingSections = [7,13,19,25,8,9,20,21,15];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "q", "Q":
            followingSections = [7,13,19,25,9,15,21,27,8,26,34];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "r", "R":
            followingSections = [7,13,19,25,8,9,20,21,16,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "s", "S":
            followingSections = [8,9,10,20,21,22,32,33,34,14,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "t", "T":
            followingSections = [8,9,10,15,21,27];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "u", "U":
            followingSections = [7,13,19,25,26,27,21,15,9];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "v", "V":
            followingSections = [6,13,20,15,10];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "w", "W":
            followingSections = [6,8,12,19,25,14,21,27,16,10];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "x", "X":
            followingSections = [13,15,25,27,20];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "y", "Y":
            followingSections = [0,6,13,2,8,19,25];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case "z", "Z":
            followingSections = [6,7,8,9,14,19,24,25,26,27];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        default:
            break;
        }
    }
    
    func fillSectionNumberFigure(number : Int , size : CGSize){
        let color : UIColor = randomColorGenerate();
        var followingSections : [Int] = [];
        
        switch number {
        case 1:
            followingSections = [4,9,10,16,22,27,28,29];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case 2:
            followingSections = [8,9,10,16,22,21,20,26,32,33,34];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            
            break;
        case 3:
            followingSections = [8,9,10,20,21,22,32,33,34,16,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case 4:
            followingSections = [8,14,20,21,22,10,16,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case 5:
            followingSections = [8,9,10,20,21,22,32,33,34,14,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            
            break;
        case 6:
            followingSections = [20,21,22,32,33,34,26,28,8,14];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case 7:
            followingSections = [8,9,10,16,22,28,34];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            
            break;
        case 8:
            followingSections = [8,9,10,20,21,22,32,33,34,14,28,26,16];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case 9:
            followingSections = [8,9,10,20,21,22,32,33,34,14,28,16];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        default:
            // 0
            followingSections = [8,9,10,20,22,32,33,34,14,28,26,16];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor: color, withSize: size);
            }
            for i in 0..<35 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            
            break;
        }
    }
    
    func fillSectionSuperHeroesFigure(hero : SuperHeroes, size : CGSize)
    {
        var followingSections : [Int] = [];
        var color : UIColor = randomColorGenerate();
        switch hero {
        case .Batman:
            color = .black;
            followingSections = [0,1,4,6,12,18,24,25,28,13,14,15,16,17,11,5,23,29,8,9];
            for i in 0..<followingSections.count{
                if (followingSections[i] == 8 || followingSections[i] == 9 ){
                    fillSection(section: followingSections[i], withColor: .yellow, withSize: size);
                }else{
                    fillSection(section: followingSections[i], withColor: color, withSize: size);
                }
            }
            for i in 0..<36 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case .Thor:
            color = .yellow;
            followingSections = [7,8,9,13,14,15,20,26,32];
            for i in 0..<followingSections.count{
                if (followingSections[i] == 20 || followingSections[i] == 32) {
                    fillSection(section: followingSections[i], withColor:.lightGray, withSize: size);
                }else{
                    fillSection(section: followingSections[i], withColor: color, withSize: size);
                }
            }
            for i in 0..<36 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case .GreenLantern:
            color = .green;
            followingSections = [6,7,8,9,10,18,19,20,21,22,13,15,14];
            for i in 0..<followingSections.count{
                if (followingSections[i] == 14) {
                    fillSection(section: followingSections[i], withColor:.white, withSize: size);
                }else{
                    fillSection(section: followingSections[i], withColor: color, withSize: size);
                }
            }
            for i in 0..<36 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            
            break;
        case .Flash:
            color = .yellow;
            followingSections = [4,9,14,21,26,31];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor:color, withSize: size);
            }
            for i in 0..<36 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case .Xmen:
            color = .black;
            followingSections = [0,7,14,9,4,19,24,21,28];
            for i in 0..<followingSections.count{
                fillSection(section: followingSections[i], withColor:color, withSize: size);
            }
            for i in 0..<36 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        case .Ironman:
            color = .red;
            followingSections = [1,2,3,6,7,8,9,10,15,13,20,14];
            for i in 0..<followingSections.count{
                if(followingSections[i] == 14 || followingSections[i] == 8 || followingSections[i] == 9 || followingSections[i] == 7){
                    fillSection(section: followingSections[i], withColor:.yellow, withSize: size);
                }else{
                    fillSection(section: followingSections[i], withColor:color, withSize: size);
                }
            }
            for i in 0..<36 {
                if followingSections.contains(i) == false {
                    fillSection(section: i, withColor: randomColorGenerate(), withSize: size);
                }
            }
            break;
        default:
            print("Unknown type for Super Heroes");
            break;
        }
    }
    
    
    func randomColorGenerate() -> UIColor {
        return UIColor(red: CGFloat(arc4random_uniform(256))/255.0, green: CGFloat(arc4random_uniform(256))/255.0, blue: CGFloat(arc4random_uniform(256))/255.0, alpha: 1.0);
    }

}
