//
//  MultiCardsViewController.swift
//  FirebaseDemoApp
//
//  Created by Rave Training on 2/18/22.
//

import Foundation
import UIKit

class MultiCardsViewController: UIViewController {
    var listData: [CardModel] = []
    @IBOutlet weak var tableCardsView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableCardsView.dataSource = self
        tableCardsView.delegate = self
        tableCardsView.register(SingleCardCell.self, forCellReuseIdentifier: SingleCardCell.identifier)
    }
}
