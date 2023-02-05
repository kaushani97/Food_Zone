//
//  UIView+Ext.swift
//  Food_Zone
//
//  Created by Kaushani Watagoda on 2/5/23.
//
//
import UIKit

extension UIView {
    
    func pin(to superView : UIView)
    {
        translatesAutoresizingMaskIntoConstraints  = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}
