//
//  ViewController.swift
//  MelleMeewis-MadLibs
//
//  Created by Melle Meewis on 19/11/2018.
//  Copyright © 2018 Melle Meewis. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {
    
    var text = ""
    
    @IBAction func unwindToIntroduction(segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func textButtonPressed(_ sender: UIButton) {
        var name = ""
        switch sender.title(for: .normal) {
        case "Play Simple!":
            name = "madlib0_simple"
        case "Play Tarzan!":
            name = "madlib1_tarzan"
        case "Play University!":
            name = "madlib2_university"
        case "Play Clothes!":
            name = "madlib3_clothes"
        case "Play Dance!":
            name = "madlib4_dance"
        default:
            name = ""
        }
        
        let storyPath = Bundle.main.path(forResource: name, ofType: "txt")!
        text = try! String(contentsOfFile: storyPath, encoding: .utf8)
        performSegue(withIdentifier: "WriteSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "WriteSegue" {
            let writeViewController = segue.destination as! WriteViewController
            writeViewController.story = Story(withText: text)
        }
    }

}

