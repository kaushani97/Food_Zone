//
//  foodCell.swift
//  Food_Zone
//
//  Created by Kaushani Watagoda on 2/5/23.
//

import UIKit

class foodCell: UITableViewCell {
    
    var foodImageView = UIImageView()
    var foodTitleLable = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .black
        addSubview(foodImageView)
        addSubview(foodTitleLable)
        
        configureImageView()
        configureTitleLable()
        setImageConstraints()
        setTitleLableConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(Foods: Foods) {
        foodImageView.image = Foods.image
        foodTitleLable.text = Foods.title
    }
    
    
    func configureImageView() {
        foodImageView.layer.cornerRadius = 19
        foodImageView.clipsToBounds = true
    }
    
    func configureTitleLable() {
        foodTitleLable.numberOfLines = 0
        foodTitleLable.textColor = .white
        foodTitleLable.adjustsFontSizeToFitWidth = true
    }
    
    
    func setImageConstraints() {
        foodImageView.translatesAutoresizingMaskIntoConstraints                                              = false
        foodImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                              = true
        foodImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive                = true
        foodImageView.heightAnchor.constraint(equalToConstant: 80).isActive                                  = true
        foodImageView.widthAnchor.constraint(equalTo: foodImageView.heightAnchor, multiplier: 16/9).isActive = true
        
    }
    
    func setTitleLableConstraints() {
        foodTitleLable.translatesAutoresizingMaskIntoConstraints                                              = false
        foodTitleLable.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                              = true
        foodTitleLable.leadingAnchor.constraint(equalTo: foodImageView.trailingAnchor, constant: 20).isActive = true
        foodTitleLable.heightAnchor.constraint(equalToConstant: 80).isActive                                  = true
        foodTitleLable.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive             = true
    }

}
