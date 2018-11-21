//
//  WriteViewController.swift
//  MelleMeewis-MadLibs
//
//  Created by Melle Meewis on 19/11/2018.
//  Copyright © 2018 Melle Meewis. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController {
    
    var story: Story!

    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var fillPlaceholdersTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func addWordButtonPressed(_ sender: UIButton) {
        addWord()
        if story.remainingPlaceholders > 0 {
            updateUI()
        }
        else {
            performSegue(withIdentifier: "ReadSegue", sender: nil)
        }
    }
    
    func updateUI() {
        fillPlaceholdersTextfield.text = nil
        wordsRemainingLabel.text = "Words remaining: \(story.remainingPlaceholders)"
        fillPlaceholdersTextfield.placeholder = story.nextPlaceholder?.lowercased()
    }
    
    func addWord() {
        let newWord = fillPlaceholdersTextfield.text!
        story.fillInPlaceholder(word: newWord)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ReadSegue" {
            let storyResultViewController = segue.destination as! StoryResultViewController
            storyResultViewController.text = story.normalText
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
