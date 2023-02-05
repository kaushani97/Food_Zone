//
//  FoodDetailsViewController.swift
//  Food_Zone
//
//  Created by Kaushani Watagoda on 2/5/23.
//
//
//import SnapKit
//import UIKit
//
//class FoodDetailsViewController: UIViewController {
//    
//    var selectedFood : Sizeandcrust?
//    
//    let MyImage : UIImageView = {
//        let image = UIImageView()
//        image.contentMode = .scaleAspectFit
//        return image
//    }()
//    
//    let titleLable : UILabel = {
//        let lable = UILabel()
//        lable.translatesAutoresizingMaskIntoConstraints = false
//        lable.font = .systemFont(ofSize: 18, weight : .bold)
//        return lable
//    }()
//    
//    let overviewLable : UILabel = {
//        let lable = UILabel()
//        lable.translatesAutoresizingMaskIntoConstraints = false
//        lable.font = .systemFont(ofSize: 12 , weight: .regular)
//        return lable
//    }()
//    
//    let releaseDateLable : UILabel = {
//        let lable = UILabel()
//        lable.translatesAutoresizingMaskIntoConstraints = false
//        lable.font = .systemFont(ofSize: 12 , weight: .regular)
//        return lable
//    }()
//        
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        self.view.backgroundColor = .white
//        setupConstraint()
//        loadContent()
//
//    }
//    func setupConstraint(){
//        self.view.addSubview(MyImage)
//        MyImage.snp.makeConstraints { make in
//            make.top.equalToSuperview()
//            make.height.equalTo(400)
//            make.leading.trailing.equalToSuperview()
//        }
//        
//    
//        let holder = UIStackView(arrangedSubviews: [titleLable, releaseDateLable, overviewLable])
//        holder.spacing = 10
//        holder.axis = .vertical
//        self.view.addSubview(holder)
//        
//        holder.snp.makeConstraints { make in
//            make.top.equalTo(MyImage.snp_bottomMargin).offset(40)
//            make.leading.equalTo(view.snp_leadingMargin).offset(20)
//            make.trailing.equalTo(view.snp_trailingMargin).offset(-20)
//            
//        }
//    }
//    
//    func loadContent(){
//        if let food = selectedFood {
//            let imageLink = "https://api.pizzahut.io/v1/content/en-in/in-1/images/pizza/double-paneer-supreme.3cb382529b41d14d4a041b5cc5e64341.1.jpg?width=550" + food.mediumstuffedcrustchickenseekhkebab
//            if let imageURL = URL(string: imageLink){
//                MyImage.kf.setImage(with: imageURL)
//            }
//            
//            
//            titleLable.text = food.mediumStuffedCrustKebab
//            releaseDateLable.text = food.mediumstuffedcrustchickenseekhkebab
//            overviewLable.text = food.mediumStuffedCrustVegKebab
//        }
//    }
//    
//}
