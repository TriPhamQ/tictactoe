//
//  ViewController.swift
//  tictactoe
//
//  Created by Tri Pham on 2/9/17.
//  Copyright © 2017 Tri Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//variable
    @IBOutlet var button: [UIButton]!
    var turn = 0
    var one = [Int]()
    var two = [Int]()
    var oneAcross = [[1,2,3],[0,0]]
    var twoAcross = [[4,5,6],[0,0]]
    var threeAcross = [[7,8,9],[0,0]]
    var oneDown = [[1,4,7],[0,0]]
    var twoDown = [[2,5,8],[0,0]]
    var threeDown = [[3,6,9],[0,0]]
    var oneDiag = [[1,5,9],[0,0]]
    var twoDiag = [[3,5,7],[0,0]]
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        one = [Int]()
        two = [Int]()
        turn = 0
        for b in button {
            b.backgroundColor = UIColor.white
        }
        oneAcross[1][0] = 0
        oneAcross[1][1] = 0
        twoAcross[1][0] = 0
        twoAcross[1][1] = 0
        threeAcross[1][0] = 0
        threeAcross[1][1] = 0
        oneDown[1][0] = 0
        oneDown[1][1] = 0
        twoDown[1][0] = 0
        twoDown[1][1] = 0
        threeDown[1][0] = 0
        threeDown[1][1] = 0
        oneDiag[1][0] = 0
        oneDiag[1][1] = 0
        twoDiag[1][0] = 0
        twoDiag[1][1] = 0
        winnerLabel.text = "GoodLuck"
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
//        print("Button pressed", sender.tag)
        if sender.backgroundColor == UIColor.white && turn == 0 {
            sender.backgroundColor = UIColor.red
            turn = 1
            one.append(sender.tag)
            print(one)
//            if one.count > 2 {
                for i in 0...one.count-1 {
                    if oneAcross[0].contains(one[i]) {
                        oneAcross[1][0] += 1
                        if oneAcross[1][0] == 3 {
                            winnerLabel.text = "player 1 win"
                            turn = 3
                        }
                        print(oneAcross)
                    }
                    if twoAcross[0].contains(one[i]) {
                        twoAcross[1][0] += 1
                        if twoAcross[1][0] == 3 {
                            winnerLabel.text = "player 1 win"
                            turn = 3
                        }
                        print(twoAcross)
                    }
                    if threeAcross[0].contains(one[i]) {
                        threeAcross[1][0] += 1
                        if threeAcross[1][0] == 3 {
                            winnerLabel.text = "player 1 win"
                            turn = 3
                        }
                        print(threeAcross)
                    }
                    if oneDown[0].contains(one[i]) {
                        oneDown[1][0] += 1
                        if oneDown[1][0] == 3 {
                            winnerLabel.text = "player 1 win"
                            turn = 3
                        }
                        print(oneDown)
                    }
                    if twoDown[0].contains(one[i]) {
                        twoDown[1][0] += 1
                        if twoDown[1][0] == 3 {
                            winnerLabel.text = "player 1 win"
                            turn = 3
                        }
                        print(twoDown)
                    }
                    if threeDown[0].contains(one[i]) {
                        threeDown[1][0] += 1
                        if threeDown[1][0] == 3 {
                            winnerLabel.text = "player 1 win"
                            turn = 3
                        }
                        print(threeDown)
                    }
                    if oneDiag[0].contains(one[i]) {
                        oneDiag[1][0] += 1
                        if oneDiag[1][0] == 3 {
                            winnerLabel.text = "player 1 win"
                            turn = 3
                        }
                        print(oneDiag)
                    }
                    if twoDiag[0].contains(one[i]) {
                        twoDiag[1][0] += 1
                        if twoDiag[1][0] == 3 {
                            winnerLabel.text = "player 1 win"
                            turn = 3
                        }
                        print(twoDiag)
                    }
                }
                oneAcross[1][0] = 0
                oneAcross[1][1] = 0
                twoAcross[1][0] = 0
                twoAcross[1][1] = 0
                threeAcross[1][0] = 0
                threeAcross[1][1] = 0
                oneDown[1][0] = 0
                oneDown[1][1] = 0
                twoDown[1][0] = 0
                twoDown[1][1] = 0
                threeDown[1][0] = 0
                threeDown[1][1] = 0
                oneDiag[1][0] = 0
                oneDiag[1][1] = 0
                twoDiag[1][0] = 0
                twoDiag[1][1] = 0
//            }
//            if one.count == 0 {
//                one.append(sender.tag)
//                print(one)
//            }
//            else {
//                for i in 0...one.count-1 {
//                    if sender.tag < one[i] {
//                        one.insert(sender.tag, at: i)
//                        print(one)
//                    }
//                }
//            }
        }
        else if sender.backgroundColor == UIColor.white && turn == 1 {
            sender.backgroundColor = UIColor.blue
            turn = 0
            two.append(sender.tag)
            print(two)
//            if two.count > 2 {
                for i in 0...two.count-1 {
                    if oneAcross[0].contains(two[i]) {
                        oneAcross[1][1] += 1
                        if oneAcross[1][1] == 3 {
                            winnerLabel.text = "player 2 win"
                            turn = 3
                        }
                        print(oneAcross)
                    }
                    if twoAcross[0].contains(two[i]) {
                        twoAcross[1][1] += 1
                        if twoAcross[1][1] == 3 {
                            winnerLabel.text = "player 2 win"
                            turn = 3
                        }
                        print(twoAcross)
                    }
                    if threeAcross[0].contains(two[i]) {
                        threeAcross[1][1] += 1
                        if threeAcross[1][1] == 3 {
                            winnerLabel.text = "player 2 win"
                            turn = 3
                        }
                        print(threeAcross)
                    }
                    if oneDown[0].contains(two[i]) {
                        oneDown[1][1] += 1
                        if oneDown[1][1] == 3 {
                            winnerLabel.text = "player 2 win"
                            turn = 3
                        }
                        print(oneDown)
                    }
                    if twoDown[0].contains(two[i]) {
                        twoDown[1][1] += 1
                        if twoDown[1][1] == 3 {
                            winnerLabel.text = "player 2 win"
                            turn = 3
                        }
                        print(twoDown)
                    }
                    if threeDown[0].contains(two[i]) {
                        threeDown[1][1] += 1
                        if threeDown[1][1] == 3 {
                            winnerLabel.text = "player 2 win"
                            turn = 3
                        }
                        print(threeDown)
                    }
                    if oneDiag[0].contains(two[i]) {
                        oneDiag[1][1] += 1
                        if oneDiag[1][1] == 3 {
                            winnerLabel.text = "player 2 win"
                            turn = 3
                        }
                        print(oneDiag)
                    }
                    if twoDiag[0].contains(two[i]) {
                        twoDiag[1][1] += 1
                        if twoDiag[1][1] == 3 {
                            winnerLabel.text = "player 2 win"
                            turn = 3
                        }
                        print(twoDiag)
                    }
                }
                oneAcross[1][0] = 0
                oneAcross[1][1] = 0
                twoAcross[1][0] = 0
                twoAcross[1][1] = 0
                threeAcross[1][0] = 0
                threeAcross[1][1] = 0
                oneDown[1][0] = 0
                oneDown[1][1] = 0
                twoDown[1][0] = 0
                twoDown[1][1] = 0
                threeDown[1][0] = 0
                threeDown[1][1] = 0
                oneDiag[1][0] = 0
                oneDiag[1][1] = 0
                twoDiag[1][0] = 0
                twoDiag[1][1] = 0
//            }
//            if two.count == 0 {
//                two.append(sender.tag)
//                print(two)
//            }
//            else {
//                for i in 0...two.count-1 {
//                    if sender.tag < two[i] {
//                        two.insert(sender.tag, at: i)
//                        print(two)
//                    }
//                }
//            }
        }
    }
    
    
    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for b in button {
            b.backgroundColor = UIColor.white
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

