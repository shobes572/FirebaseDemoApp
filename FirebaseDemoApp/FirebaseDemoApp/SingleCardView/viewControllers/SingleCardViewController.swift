//
//  SingleCardViewController.swift
//  FirebaseDemoApp
//
//  Created by Rave Training on 2/18/22.
//

import Foundation
import UIKit

class SingleCardViewController: UIViewController {
    var model: CardModel?
    var delegate: ChangedIsFavorite?
    var modelIndex: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
