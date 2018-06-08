//
//  ViewController.swift
//  Instagrid_Project5
//
//  Created by Thibault Dev on 08/06/2018.
//  Copyright © 2018 Thibault Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layoutOneButton: UIButton!
    @IBOutlet weak var layoutTwoButton: UIButton!
    @IBOutlet weak var layoutThreeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapLayoutOneButton() {
        showCheckMark(layoutOneButton)
        hideOtherCheckMarks(layoutTwoButton, layoutThreeButton)
    }
    
    @IBAction func didTapLayoutTwoButton() {
        showCheckMark(layoutTwoButton)
        hideOtherCheckMarks(layoutOneButton, layoutThreeButton)
    }
    
    @IBAction func didTapLayoutThreeButton() {
        showCheckMark(layoutThreeButton)
        hideOtherCheckMarks(layoutOneButton, layoutTwoButton)
    }
    
    private func hideOtherCheckMarks(_ firstOtherButton: UIButton, _ secondOtherButton: UIButton){
        firstOtherButton.imageView?.isHidden = true
        secondOtherButton.imageView?.isHidden = true
    }
    
    private func showCheckMark(_ button: UIButton) {
        button.imageView?.isHidden = false
    }
    
}

