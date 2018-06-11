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
    @IBOutlet weak var canvasFrame: UIView! {
        didSet{
            canvasFrame.layer.applySketchShadow(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5), alpha: 0.5, x: 0, y: 2, blur: 4, spread: 0)
        }
    }
    @IBOutlet weak var pictureCanvasOne: PictureCanvasOne!
   
    
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

extension CALayer {
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.5,
        x: CGFloat = 0,
        y: CGFloat = 2,
        blur: CGFloat = 4,
        spread: CGFloat = 0)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}

