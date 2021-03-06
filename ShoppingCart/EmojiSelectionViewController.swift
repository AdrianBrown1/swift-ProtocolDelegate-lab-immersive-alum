//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    @IBOutlet weak var firstTextFeild: UITextField!
    @IBOutlet weak var secondTextFeild: UITextField!
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        let emojis: (String, String) = (firstTextFeild.text!, secondTextFeild.text!)
        emojiDelegate?.create(emojiGroup: emojis)
        dismiss(animated: true, completion: nil)
        
    }
    
}
