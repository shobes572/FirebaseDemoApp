//
//  MultiCardsViewModel.swift
//  FirebaseDemoApp
//
//  Created by Rave Training on 2/18/22.
//

import Foundation

class MultiCardsViewModel {
    static let shared = MultiCardsViewModel()
    func toggleIsFavorite(model: inout CardModel) -> CardModel {
        model.isFavorite = !(model.isFavorite ?? false)
        return model
    }
    func getData() {
        
    }
    func setData() {
        
    }
}
