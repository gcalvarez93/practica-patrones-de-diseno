//
//  HomeViewModel.swift
//  AppPatronesGabriel
//
//  Created by Gabriel Castro on 6/10/23.
//

import Foundation

//MARK: - Protocol -
protocol HomeViewModelProtocol {
    var dataCount: Int { get }
    func onViewsLoaded()
    func data(at index: Int) -> HomeCellModel?
    func onItemSelected(at index: Int)
}




//MARK: - Class -
final class HomeViewModel {
    
    private weak var viewDelegate: HomeViewProtocol?
    private var viewData = [HomeCellModel]()
    private var mapperHome: MapperCharacterToHomeCellModel
    
    
    init(viewDelegate: HomeViewProtocol, mapperHome: MapperCharacterToHomeCellModel) {
        self.viewDelegate = viewDelegate
        self.mapperHome = mapperHome
    }
    
    private func loadData() {
        viewData = mapperHome.map(sampleCharacterData)
        viewDelegate?.updateViews()
    }
}




//MARK: - Extensions -
extension HomeViewModel: HomeViewModelProtocol{
    func onItemSelected(at index: Int) {
        guard let data = data(at:index) else {return}
        let detailData = DetailModel(homeCellModel: data, description: sampleCharacterData[index].description)
        
        viewDelegate?.navigateToDetail(with: detailData)
    }
    
    func data(at index: Int) -> HomeCellModel? {
        guard index < dataCount else {return nil}
        return viewData[index]
    }
    
    var dataCount: Int {
        viewData.count
    }
    
    func onViewsLoaded() {
       loadData()
    }
}
