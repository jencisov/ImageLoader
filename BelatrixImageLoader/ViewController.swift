//
//  ViewController.swift
//  BelatrixImageLoader
//
//  Created by Jorge on 5/11/17.
//  Copyright © 2017 Jorge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var belatrixImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageLoader.with(imageView: belatrixImageView).load(url: "http://www.belatrixsf.com/img/Belatrix.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

