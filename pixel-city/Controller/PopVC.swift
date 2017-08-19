//
//  PopVC.swift
//  pixel-city
//
//  Created by kitiwat chanluthin on 8/19/17.
//  Copyright © 2017 kitiwat chanluthin. All rights reserved.
//

import UIKit

class PopVC: UIViewController,UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage:UIImage!
    
    func initData(forImage image:UIImage){
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }

    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(PopVC.doubleTapHandler))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }

    @objc func doubleTapHandler(){
        dismiss(animated: true, completion: nil)
    }
}
