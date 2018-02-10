//
//  CategoryBar.swift
//  MAIPPLE
//
//  Created by Chen ChiYun on 10/02/2018.
//  Copyright © 2018 Chen ChiYun. All rights reserved.
//

import UIKit

class CategoryBar: UIView , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = UIColor(red: 185/255, green: 185/255, blue: 185/255, alpha: 1)
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        
        backgroundColor = UIColor(red: 185/255, green: 185/255, blue: 185/255, alpha: 1)
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CategoryCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width / 4, height: frame.height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 20, 0, 0)
    }
}

class CategoryCell: UICollectionViewCell {
    
    let categoryLabel: UILabel = {
       let tb = UILabel()
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.text = "時尚配件"
        tb.textColor = UIColor.white
        tb.font = tb.font.withSize(17)
        return tb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(categoryLabel)
        categoryLabel.heightAnchor.constraint(equalToConstant:  60).isActive = true
        categoryLabel.widthAnchor.constraint(equalToConstant: 90).isActive = true
        categoryLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        categoryLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
}
