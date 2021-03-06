//
//  EvolutionChainTranslator.swift
//  Domain
//
//  Created by Tomosuke Okada on 2021/01/31.
//

import DataStore
import Foundation

enum EvolutionChainTranslatorProvider {

    static func provide() -> EvolutionChainTranslator {
        return EvolutionChainTranslatorImpl()
    }
}

protocol EvolutionChainTranslator {
    func convert(from response: EvolutionChainResponse) -> EvolutionChainModel
}

private struct EvolutionChainTranslatorImpl: EvolutionChainTranslator {

    func convert(from response: EvolutionChainResponse) -> EvolutionChainModel {
        return EvolutionChainModel(response)
    }
}
