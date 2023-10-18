//
//  DetailViewModel.swift
//  AppPatronesGabriel
//
//  Created by Gabriel Castro on 7/10/23.
//

import Foundation

// MARK: - Protocol -
protocol DetailViewModelProtocol {
    func onViewsLoaded()
}


//MARK: - Class -
final class DetailViewModel {
    
    private var characterData: DetailModel
    private weak var viewDelegate: DetailViewProtocol?
    
    init(data: DetailModel, viewDelegate: DetailViewProtocol?) {
        characterData = data
        self.viewDelegate = viewDelegate
    }
}


//MARK: - Extensions -
extension DetailViewModel: DetailViewModelProtocol {
    
    func onViewsLoaded() {
    // Notificamos a la vista que actualice la imagen y titulo
        viewDelegate?.update(image: characterData.homeCellModel.image)
        viewDelegate?.update(title: characterData.homeCellModel.name)
        viewDelegate?.update(description: characterData.description)
    }
    
}
