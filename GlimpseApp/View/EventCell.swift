//
//  EventCell.swift
//  youtubeTesting
//
//  Created by Kelson Flint on 1/29/19.
//  Copyright © 2019 Kelson Flint. All rights reserved.
//

import Foundation
import UIKit

class EventCell : UITableViewCell {
    
    var event : Event? 
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    func setupViews() {
        addSubview(date)
        addSubview(name)
        addSubview(thumbnailImageView)
        
        NSLayoutConstraint.activate([
            //thumbnailImageView.rightAnchor.constraint(equalTo: rightAnchor),
            //thumbnailImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            thumbnailImageView.topAnchor.constraint(equalTo: topAnchor),
            thumbnailImageView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            thumbnailImageView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 9 / 16),
            
            name.leftAnchor.constraint(equalTo: leftAnchor, constant: 12),
            name.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            
            date.leftAnchor.constraint(equalTo: leftAnchor, constant: 18),
            date.bottomAnchor.constraint(equalTo: bottomAnchor)
            //date.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 24),
        ])
    }
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    let name: UILabel = {
        let eventName = UILabel()
        eventName.translatesAutoresizingMaskIntoConstraints = false
        eventName.font = UIFont.boldSystemFont(ofSize: 18)
        eventName.textColor = .white
        return eventName
    }()
    
    let date: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = .white
        return text
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
