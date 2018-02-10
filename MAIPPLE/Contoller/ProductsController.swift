//
//  ViewController.swift
//  MAIPPLE
//
//  Created by Chen ChiYun on 09/02/2018.
//  Copyright © 2018 Chen ChiYun. All rights reserved.
//

import UIKit

class ProductsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let numberOfCells: Int = 20
    
    let logoImageView: UIImageView = {
        let image = UIImage(named: "maipplePic")
        let imageView = UIImageView()
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let categoryBar: CategoryBar = {
        let cb = CategoryBar()
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isTranslucent = false
        
        collectionView?.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        navigationItem.titleView = logoImageView
        
        collectionView?.register(ProductCell.self, forCellWithReuseIdentifier: "cellId")
        
        collectionView?.contentInset = UIEdgeInsetsMake(35, 0, 0, 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(35, 0, 0, 0)
        
        setupCategoryBar()
        setupNavBarItems()
    }
 
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func setupNavBarItems() {
        let menuImg = UIImage(named: "icon_menu")?.withRenderingMode(.alwaysOriginal)
        let menuBtn = UIBarButtonItem(image: menuImg, style: .plain, target: self, action: #selector(handleMenu))
        let searchImg = UIImage(named: "icon_search")?.withRenderingMode(.alwaysOriginal)
        let searchBtn = UIBarButtonItem(image: searchImg, style: .plain, target: self, action: #selector(handleSearch))
        
        let checkImg = UIImage(named: "icon_check")?.withRenderingMode(.alwaysOriginal)
        let checkBtn = UIBarButtonItem(image: checkImg, style: .plain, target: self, action: #selector(handleCheck))
        
        navigationItem.leftBarButtonItem = menuBtn
        navigationItem.rightBarButtonItems = [checkBtn, searchBtn]
    }
    
    @objc func handleMenu() {
        print(111)
    }
    
    @objc func handleSearch() {
        print(222)
    }
    
    @objc func handleCheck() {
        print(333)
    }
    
    func setupCategoryBar(){
        view.addSubview(categoryBar)
        categoryBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        categoryBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        categoryBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        categoryBar.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! ProductCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 2 * 0.91, height: view.frame.height / 3.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {

        return UIEdgeInsetsMake(5, 12, 5, 12)
    }
}

