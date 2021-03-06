//
//  ItemListTranslator.swift
//  Domain
//
//  Created by Tomosuke Okada on 2021/01/30.
//

import DataStore
import Foundation

enum ItemListTranslatorProvider {

    static func provide() -> ItemListTranslator {
        return ItemListTranslatorImpl()
    }
}

protocol ItemListTranslator {
    func convert(from response: ItemListResponse) -> ItemListModel
}

private struct ItemListTranslatorImpl: ItemListTranslator {

    func convert(from response: ItemListResponse) -> ItemListModel {
        return ItemListModel(response)
    }
}
