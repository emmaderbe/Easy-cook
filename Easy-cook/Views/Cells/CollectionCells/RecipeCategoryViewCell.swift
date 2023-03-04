//
//  RecipeCategoryViewCell.swift
//  Easy-cook
//
//  Created by Дербе Эмма on 04.03.2023.
//

import UIKit


class RecipeCategoryViewCell: UICollectionViewCell {

    static let reuseId = "recipeCategoryViewCell"

    let mainImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 24
        image.clipsToBounds = true
        image.backgroundColor = .lightGray
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let recipeLabel: UILabel = {
        let label = UILabel()
        label.font = .poppinsBold14()
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
        setupCellConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

//MARK: - setupCellConstraints
extension RecipeCategoryViewCell {
    func setupCell() {
        addSubview(backgroundImage)
        backgroundImage.addSubview(mainImage)
        backgroundImage.addSubview(recipeLabel)

    }
}

//MARK: - setupCellConstraints
extension RecipeCategoryViewCell {
    func setupCellConstraints() {
        backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        mainImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        mainImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        mainImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainImage.bottomAnchor.constraint(equalTo: recipeLabel.topAnchor, constant: -7).isActive = true

        recipeLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        recipeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        recipeLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
    }
}