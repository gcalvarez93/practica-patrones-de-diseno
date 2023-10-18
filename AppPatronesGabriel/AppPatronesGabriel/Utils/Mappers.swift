//
//  Mappers.swift
//  AppPatronesGabriel
//
//  Created by Gabriel Castro on 15/10/23.
//

import Foundation

//MARK: - Protocol -
protocol MapperCharacterToHomeCellModel {
    func map(_ characters: CharactersModel?) -> [HomeCellModel]
    func map(_ character: CharacterModel?) -> HomeCellModel?
}

protocol MapperCharacterToDetailModel {
    func map(_ characters: CharactersModel?) -> [DetailModel]
    func map(_ character: CharacterModel?) -> DetailModel?
}


//MARK: - Extension Character to Home -
class MapperToHome: MapperCharacterToHomeCellModel {
    func map(_ characters: CharactersModel?) -> [HomeCellModel] {
        guard let characters = characters else {return []}
        return characters.compactMap{ map($0)}

    }
    
    func map(_ character: CharacterModel?) -> HomeCellModel? {
        guard let character = character else {return nil}
        return HomeCellModel(name: character.name, image: character.image)
    }
}


