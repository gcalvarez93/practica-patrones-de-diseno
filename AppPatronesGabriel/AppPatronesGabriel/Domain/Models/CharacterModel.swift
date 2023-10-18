//
//  CharacterModel.swift
//  AppPatronesGabriel
//
//  Created by Gabriel Castro on 6/10/23.
//

import Foundation

typealias CharactersModel = [CharacterModel]

struct CharacterModel {
    var name: String
    var job: String
    var image: String?
    var description: String
}

var sampleCharacterData: CharactersModel = [
    CharacterModel(name: "Shin Chan",
                   job: "Estudiante en el Parvulario Futaba",
                   image: "shin_chan",
                   description: "Es un niño de 5 años travieso al que le gustan mucho las chicas y ver Ultrahéroe.Es hijo de Hiroshi y Misae Nohara y hermano de Himawari Nohara. Sus mejores amigos son Toru Kazama, Masao Sato, Boochan y Nené Sakurada."),
    CharacterModel(name: "Hiroshi Nohara",
                   job: "Oficinista en Comercial Futaba",
                   image: "hiroshi_nohara",
                   description: "Hiroshi Nohara es un oficinista de 35 años marido de Misae Nohara y padre de Shinnosuke y Himawari Nohara. Sus aficiones son las chicas jóvenes, la cerveza e ir de copas."),
    CharacterModel(name: "Misae Nohara",
                   job: "Ama de Casa",
                   image: "misae_nohara",
                   description: "Misae Nohara es un ama de casa de 29 años, esposa de Hiroshi Nohara y madre de Shinnosuke y Himawari Nohara. Lo que mas le gusta es hacer el vago, los chicos e ir de compras."),
    CharacterModel(name: "Himawari Nohara",
                   job: "No tiene, es un bebé",
                   image: "himawari_nohara",
                   description: "Himawari Nohara es el miembro más joven de la familia Nohara. Es la hija de Hiroshi y Misae Nohara y la hermana pequeña de Shinnosuke Nohara. Sus aficiones son los chicos guapos y las cosas brillantes"),
    CharacterModel(name: "Toru Kazama",
                   job: "Estudiante en el Parvulario Futaba",
                   image: "toru_kazama",
                   description: "Toru Kazama es uno de los amigos de Shin Chan. Es muy inteligente y estudioso y va a clases de inglés. Odia que Shin Chan le sople en la oreja y no le gustan sus bromas. Además sus otros amigos son Masao Sato, Boochan y Nené Sakurada."),
    CharacterModel(name: "Masao Sato",
                   job: "Estudiante en el Parvulario Futaba",
                   image: "masao_sato",
                   description: "Masao Sato es el mejor amigo de Shin Chan. Va a la guardería Futaba. Es un chico tímido y miedoso que se asusta por cualquier cosa. Le tiene miedo a su amiga Nené"),
    CharacterModel(name: "Boo Chan",
                   job: "Estudiante en el Parvulario Futaba",
                   image: "Boochan",
                   description: "Boochan es otro de los amigos de Shin Chan. Asiste a la guardería Futaba con sus amigos Shin Chan, Kazama, Masao y Nené. Es un chico muy callado pero en realidad parece muy inteligente."),
    CharacterModel(name: "Nené Sakurada",
                   job: "Estudiante en el Parvulario Futaba",
                   image: "nene_sakurada",
                   description: "Nené Sakurada es otra amiga de Shin Chan y la única niña del grupo. Es una niña con un fuerte carácter a la que le gustan mucho las telenovelas y jugar a papás y mamás.")
]

