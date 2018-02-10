//
//  ProductCell.swift
//  MAIPPLE
//
//  Created by Chen ChiYun on 10/02/2018.
//  Copyright © 2018 Chen ChiYun. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    
    let productImageView: UIImageView = {
        let image = UIImage(named: "cat2")
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let productNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(12)
        label.text = "Dior風格造型耳環"
        return label
    }()
    
    let productPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(12)
        label.text = "NT$1,300"
        return label
    }()
    
    func setupViews() {
        addSubview(mainView)
        mainView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        mainView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
        mainView.addSubview(productImageView)
        productImageView.leftAnchor.constraint(equalTo: mainView.leftAnchor).isActive = true
        productImageView.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        productImageView.rightAnchor.constraint(equalTo: mainView.rightAnchor).isActive = true
        productImageView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.8).isActive = true
        
        mainView.addSubview(productNameLabel)
        productNameLabel.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 5).isActive = true
        productNameLabel.topAnchor.constraint(equalTo: productImageView.bottomAnchor).isActive = true
        productNameLabel.bottomAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true
        productNameLabel.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.6).isActive = true
        
        mainView.addSubview(productPriceLabel)
        productPriceLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: 0).isActive = true
        productPriceLabel.topAnchor.constraint(equalTo: productImageView.bottomAnchor).isActive = true
        productPriceLabel.bottomAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true
        productPriceLabel.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.35).isActive = true
        
        
    }
}
