//
//  HomeTableViewController.swift
//  AppPatronesGabriel
//
//  Created by Gabriel Castro on 6/10/23.
//

import UIKit

//MARK: - Protocol -
protocol HomeViewProtocol: AnyObject {
    func navigateToDetail(with data: DetailModel?)
    func updateViews()
}

//MARK: - Class -
class HomeTableViewController: UITableViewController {
    
    var viewModel: HomeViewModelProtocol?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        viewModel?.onViewsLoaded()
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.dataCount ?? 0
    }

    //Update views
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
        }
        
        if let data = viewModel?.data(at: indexPath.row) {
            cell.updateViews(data: data)
        }
        return cell
    }
    
    //Select item
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.onItemSelected(at: indexPath.row)
    }
}


//MARK: - Extension -
extension HomeTableViewController: HomeViewProtocol {
    func updateViews() {
        tableView.reloadData()
    }
    
    func navigateToDetail(with data: DetailModel?) {
        guard let data = data else { return }
        let nextVC = DetailViewController()
        let nextVM = DetailViewModel(data: data, viewDelegate: nextVC)
        nextVC.viewModel = nextVM
        navigationController?.pushViewController(nextVC, animated: true)
    }
}


