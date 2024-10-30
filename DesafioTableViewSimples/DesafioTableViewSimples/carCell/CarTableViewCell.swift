//
//  CarTableViewCell.swift
//  DesafioTableViewSimples
//
//  Created by Jean Ramalho on 30/10/24.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    
    static let identifier: String = "CarTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.image = UIImage(named: "car")
    }
    
    func setupCell(title: String) {
        brandLabel.text = title
    }
   
}
