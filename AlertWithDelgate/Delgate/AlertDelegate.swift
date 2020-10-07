//
//  AlertDelegate.swift
//  AlertWithDelgate
//
//  Created by Ankit on 12/10/18.
//  Copyright © 2018 BajajAllianz. All rights reserved.
//

import UIKit

protocol AlertWithActionsDelegate {
    func okButtonAction()
    func cancelButtonAction()
}

class AlertDelegate: NSObject {
    var delegate: AlertWithActionsDelegate?
    func alertWithTitleAndMesage(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okButtonAction = UIAlertAction(title: "OK", style: .default, handler: { action in
            if ((self.delegate) != nil) {
                self.delegate?.okButtonAction()
            }
        })
        
        let cancelButtonAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            if ((self.delegate) != nil) {
                self.delegate?.cancelButtonAction()
            }
        })
        alertController.addAction(okButtonAction)
        alertController.addAction(cancelButtonAction)
        UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true, completion: nil)
    }
}
