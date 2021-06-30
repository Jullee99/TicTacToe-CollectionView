//
//  TIcTacToeCell.swift
//  TicTacToe
//
//  Created by DCS on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class TIcTacToeCell: UICollectionViewCell {
    
    private let myImageViewCell:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    func setupCell(with status:Int) {
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.addSubview(myImageViewCell)
        myImageViewCell.frame = CGRect(x: 10, y: 10, width: 60, height: 60)
        
        let name = status == 0 ? "circle" : status == 1 ? "multiply" : ""
        myImageViewCell.image = UIImage(named: name)
    }
}
