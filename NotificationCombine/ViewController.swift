//
//  ViewController.swift
//  NotificationCombine
//
//  Created by Вячеслав Квашнин on 13.05.2022.
//

import UIKit
import Combine

extension Notification.Name {
    static let example = Notification.Name("example")
}

class ViewController: UIViewController {
    
    var cancellabel: AnyCancellable?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cancellabel = NotificationCenter.Publisher(
            center: .default,
            name: .example,
            object: nil)
            .sink(receiveValue: { notification in
                print(notification)
            })
        
        NotificationCenter.default.post(name: .example, object: nil)
    }
}

