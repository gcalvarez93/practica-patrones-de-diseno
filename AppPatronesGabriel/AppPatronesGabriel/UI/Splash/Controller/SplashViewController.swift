//
//  SplashViewController.swift
//  AppPatronesGabriel
//
//  Created by Gabriel Castro on 6/10/23.
//

import UIKit


//MARK: - Protocol -
protocol SplashViewProtocol: AnyObject {
    func showLoading(_ show: Bool)
    func navigateToHome()
}


//MARK: - Class -
class SplashViewController: UIViewController {

    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var viewModel: SplashViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating()
    }
}



//MARK: - Extension -
extension SplashViewController: SplashViewProtocol {
    //Metodo cargar activity indicator
    func showLoading(_ show: Bool) {
        switch show {
        case true where !activityIndicator.isAnimating:
            activityIndicator.startAnimating()
        case false where activityIndicator.isAnimating:
            activityIndicator.stopAnimating()
        default: break
        }
    }
    
    //Metodo para navegar a la home
    func navigateToHome() {
        let nextVC = HomeTableViewController()
        nextVC.viewModel = HomeViewModel(viewDelegate: nextVC, mapperHome: MapperToHome())
        navigationController?.setViewControllers([nextVC], animated: true)
    }
    
    
}
