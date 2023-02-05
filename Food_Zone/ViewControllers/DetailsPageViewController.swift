//
//  DetailsPageViewController.swift
//  Food_Zone
//
//  Created by Kaushani Watagoda on 2/4/23.
//

import UIKit
import SnapKit

class DetailsViewController: UIViewController {
    
    let view1 : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        view.addSubview(view1)
        setupConstraint()

       
    }
    
    func setupConstraint(){
        view1.snp.makeConstraints { make in
                                  make.leading.equalTo(view.snp_leadingMargin).offset(20)
                                  make.trailing.equalTo(view.snp_trailingMargin).offset(-20)
                                  make.top.equalTo(view.snp_topMargin).offset(20)
                                  make.bottom.equalTo(view.snp_bottomMargin).offset(-20)
    }
        }
}
