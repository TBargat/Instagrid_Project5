//
//  PictureCanvasOne.swift
//  Instagrid_Project5
//
//  Created by Thibault Dev on 10/06/2018.
//  Copyright © 2018 Thibault Dev. All rights reserved.
//

import UIKit

class PictureCanvasOne: UIView {

    @IBOutlet private var frameButtonOne: UIView! {
        didSet{
            frameButtonOne.layer.cornerRadius = 2
            frameButtonOne.layer.masksToBounds = true
        }
    }
    @IBOutlet private var buttonOne: UIButton!
    @IBOutlet private var imageOne: UIImageView!
    
    @IBOutlet private var frameButtonTwo: UIView! {
        didSet{
            frameButtonTwo.layer.cornerRadius = 2
            frameButtonTwo.layer.masksToBounds = true
        }
    }
    @IBOutlet private var buttonTwo: UIButton!
    
    @IBOutlet private var frameButtonThree: UIView! {
        didSet{
            frameButtonThree.layer.cornerRadius = 2
            frameButtonThree.layer.masksToBounds = true
        }
    }
    @IBOutlet private var buttonThree: UIButton!
    
    var pictureOne = #imageLiteral(resourceName: "jim") {
        didSet {
            imageOne.image = pictureOne
        }
    }
}


