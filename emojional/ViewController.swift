//
//  ViewController.swift
//  emojional
//
//  Created by Jillian Sands on 5/3/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let emojis = ["🧘🏼‍♀️": "yoga", "🏋🏾‍♀️": "weight lifting"]
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = (sender.titleLabel?.text)!
        let alertController = UIAlertController(title: "Alert!", message: emojis[selectedEmotion], preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}

