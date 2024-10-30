//
//  ViewController.swift
//  DesafioTableViewSimples
//
//  Created by Jean Ramalho on 30/10/24.
//

import UIKit
    
  

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    var listBrand: [String] = ["Ford", "Chevrolet", "Wolksvagen", "BMW", "Ferrari"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listBrand.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier, for: indexPath) as? CarTableViewCell
        cell?.setupCell(title: listBrand[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(listBrand[indexPath.row])
    }
}

