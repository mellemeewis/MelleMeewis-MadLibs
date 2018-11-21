//
//  StoryResultViewController.swift
//  MelleMeewis-MadLibs
//
//  Created by Melle Meewis on 20/11/2018.
//  Copyright © 2018 Melle Meewis. All rights reserved.
//

import UIKit

class StoryResultViewController: UIViewController {

    var text: String!
    @IBOutlet weak var resultStoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        resultStoryLabel.text = text
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
