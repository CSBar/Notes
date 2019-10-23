//
//  DetailViewController.swift
//  Notes
//  Code For IOS 
//  Created by Roshan Lamichhane on 10/23/19.
//  Copyright © 2019 CSBar. All rights reserved.
//
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var text: String = ""
    var masterView: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        textView.text = text
        textView.becomeFirstResponder()
        
    }
    
    func setText(text: String) {
        self.text = text
        if isViewLoaded{
            textView.text = text
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        masterView.newRowText = textView.text
    }

    
}
