//
//  ViewController.swift
//  AlertWithDelgate
//
//  Created by Ankit on 12/10/18.
//  Copyright © 2018 BajajAllianz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AlertWithActionsDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        self.designUiview()
    }
    
    func designUiview() {
        UIView.animate(withDuration: 1.0, delay: 2.0, options: [.curveEaseInOut , .allowUserInteraction],
                       animations: {
                        let viewX:CGFloat = 20.0
                        let viewW:CGFloat = self.view.frame.size.width-40
                        let viewH:CGFloat = 160.0
                        let viewY:CGFloat = self.view.frame.size.height/2-(viewH/2)
                        let mainView = UIView(frame: CGRect(x: viewX, y: viewY, width: viewW, height: viewH))
                        mainView.backgroundColor = UIColor.blue
                        self.view.addSubview(mainView)
        },
                       completion: { finished in
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func okBtnClicked(_ sender: Any) {
        let alertObj = AlertDelegate()
        alertObj.delegate = self
        alertObj.alertWithTitleAndMesage(title: "AlertWithDelegate", message: "Testing")
    }
    
    // Alert Button Actions
    func okButtonAction() {
        print("Ok button pressed")
    }
    func cancelButtonAction() {
        print("Cancel button pressed")
    }
    
}

