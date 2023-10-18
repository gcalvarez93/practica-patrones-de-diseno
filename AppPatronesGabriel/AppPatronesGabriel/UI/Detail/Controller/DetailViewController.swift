//
//  DetailViewController.swift
//  AppPatronesGabriel
//
//  Created by Gabriel Castro on 7/10/23.
//

import UIKit

// MARK: - Protocol -
protocol DetailViewProtocol: AnyObject {
    func update(image: String?)
    func update(title: String?)
    func update(description: String?)
}


// MARK: - Class -
class DetailViewController: UIViewController {
    
    var viewModel: DetailViewModelProtocol?
    
    @IBOutlet weak var characterImage: UIImageView!
    
    @IBOutlet weak var characterName: UILabel!
    
    @IBOutlet weak var characterDescription: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
        
    }
}
    
// MARK: - Extensions -
extension DetailViewController: DetailViewProtocol {
    func update(title: String?) {
        characterName.text = title ?? ""
    }
    func update(description: String?) {
        characterDescription.text = description ?? ""
    }
    func update(image: String?) {
        characterImage.image = UIImage(named: image ?? "")
    }
}
