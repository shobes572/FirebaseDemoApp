//
//  SingleCardCell.swift
//  FirebaseDemoApp
//
//  Created by Rave Training on 2/18/22.
//

import UIKit

class SingleCardCell: UITableViewCell {
    static let identifier = String(describing: SingleCardCell.self)
    @IBOutlet weak var lblHeading: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imgIsFavorite: UIImageView!
}
