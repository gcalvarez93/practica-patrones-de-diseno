//
//  HomeTableViewCell.swift
//  AppPatronesGabriel
//
//  Created by Gabriel Castro on 6/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var viewCellHome: UIView!
    
    @IBOutlet weak var nameCellHome: UILabel!
    
    @IBOutlet weak var imageCellHome: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCellHome.layer.cornerRadius = 4.0
        viewCellHome.layer.shadowColor = UIColor.gray.cgColor
        viewCellHome.layer.shadowOffset = .zero
        viewCellHome.layer.shadowOpacity = 0.7
        viewCellHome.layer.shadowRadius = 4.0
        imageCellHome.layer.cornerRadius = 4.0
        imageCellHome.layer.opacity = 0.7
    }
    
    //Función para limpiar celdas
    override func prepareForReuse() {
        super.prepareForReuse()
        imageCellHome.image = nil
        nameCellHome.text = nil
    }
    
    //Función para pintar las celdas
    func updateViews(data: HomeCellModel) {
        update(title: data.name)
        update(image: data.image)
    }
    
    //Funciones de actualizacion de Imagen y Título
    private func update(image: String?) {
        imageCellHome.image = UIImage(named: image ?? "")
    }
    
    private func update(title: String?) {
        nameCellHome.text = title
    }
}
