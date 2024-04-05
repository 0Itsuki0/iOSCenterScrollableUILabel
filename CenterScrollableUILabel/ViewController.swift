//
//  ViewController.swift
//  CenterScrollableUILabel
//
//  Created by Itsuki on 2024/04/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centerYConstraint: NSLayoutConstraint!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(label.intrinsicContentSize.height)
        print(scrollView.frame.height)
        self.centerYConstraint.isActive = (label.intrinsicContentSize.height < scrollView.frame.height)

    }



}

