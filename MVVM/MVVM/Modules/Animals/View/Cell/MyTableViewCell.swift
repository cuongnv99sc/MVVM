//
//  MyTableViewCell.swift
//  MVVM
//
//  Created by Cuong on 14/06/2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func bindData(animal: Animal) {
        self.titleLabel.text = "\(animal.name)"
        if let image = UIImage(named: animal.image) {
            self.animalImageView.image = image
            self.animalImageView.backgroundColor = .red
        }
    }
}


