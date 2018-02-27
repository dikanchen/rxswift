//
//  ViewController.swift
//  combinedcodex
//
//  Created by User on 2/23/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

import UIKit

var apiStr = ""

class ViewController: UIViewController {

    @IBAction func Buttontapped(_ sender: UIButton) {
        apiStr = "http://pokeapi.co/api/v2/pokemon/?limit=949&offset=0/"
        performSegue(withIdentifier: "segue", sender: self)
    }
    @IBAction func SWButtontapped(_ sender: UIButton) {
        apiStr = "https://swapi.co/api/people/"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

