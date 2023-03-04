//
//  CategoryCollectionView.swift
//  Easy-cook
//
//  Created by Дербе Эмма on 04.03.2023.
//

import UIKit

class CategoryCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {

 var cells = [RecieptListModel]()

 func set(cells: [RecieptListModel]) {
    self.cells = cells
}

// MARK: - init
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = 8
        contentInset = UIEdgeInsets(top: 0, left: CellsConstants.leftDestination, bottom: 0, right: CellsConstants.rightDestination)

        delegate = self
        dataSource = self
        register(CategoryViewCell.self, forCellWithReuseIdentifier: CategoryViewCell.reuseId)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

// MARK: - numberOFItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }

// MARK: - cellForItemAt
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CategoryViewCell.reuseId, for: indexPath) as! CategoryViewCell
        cell.recipeLabel.text = cells[indexPath.row].title
        return cell
    }

}

//MARK: - sizeForItem
extension CategoryCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: 166, height: 68)
    }
}