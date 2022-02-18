//
//  MultiCardsViewController+Delegate&Datasource.swift
//  FirebaseDemoApp
//
//  Created by Rave Training on 2/18/22.
//

import Foundation
import UIKit

extension MultiCardsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return listData.count }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { 35 }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SingleCardCell.identifier) as? SingleCardCell else { return UITableViewCell() }
        let model = listData[indexPath.row]
        guard let heading = model.heading else { return UITableViewCell() }
        guard let description = model.description else { return UITableViewCell() }
        
        return cell
    }
}
