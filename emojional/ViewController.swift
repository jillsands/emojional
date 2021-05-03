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
    let customMessages = ["yoga":["in through the nose, out through the mouth", "smile", "inhale deep"], "weight lifting": ["never lose your strength", "remember who you are", "stay strong"]]
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = (sender.titleLabel?.text)!
        let options = customMessages[emojis[selectedEmotion]!]!
        let emojiMessage = options.randomElement()
        let alertController = UIAlertController(title: "Alert!", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}

