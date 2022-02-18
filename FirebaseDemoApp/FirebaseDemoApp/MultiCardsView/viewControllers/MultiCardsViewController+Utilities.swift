//
//  MultiCardsViewController+Utilities.swift
//  FirebaseDemoApp
//
//  Created by Rave Training on 2/18/22.
//

import Foundation

protocol ChangedIsFavorite {
    func toggleIsFavorite()
}
extension MultiCardsViewController: ChangedIsFavorite {
    func refreshTableView() { DispatchQueue.main.async { self.tableCardsView.reloadData() } }
    func toggleIsFavorite() {
        self.dismiss(animated: true, completion: {
//            self.listData[modelIndex] = AnimeViewModel.shared.toggleIsFavorite(model: self.listData[modelIndex])
            self.refreshTableView()
        })

    }
    func presentSingleCard(model: CardModel, modelIndex: Int) {
        let destination = SingleCardViewController()
        destination.model = model
        destination.delegate = self
        destination.modelIndex = modelIndex
        DispatchQueue.main.async {
            self.navigationController?.present(destination, animated: true, completion: nil)
        }
    }
}
