//
//  AudioCell.swift
//  Memorize It
//
//  Created by Jonathan Oh on 8/25/17.
//  Copyright © 2017 esohjay. All rights reserved.
//

import UIKit

class AudioCell: UITableViewCell {

    static let reuseID = "audioCellReuse"
        
    init() {
        super.init(style: .default, reuseIdentifier: AudioCell.reuseID)
        
        let centerText = UILabel()
        centerText.translatesAutoresizingMaskIntoConstraints = false
        centerText.textAlignment = .center
        centerText.text = "What's up!"
        
        addSubview(centerText)
        
        let centerTextTopAnchor = centerText.topAnchor.constraint(equalTo: topAnchor, constant: 5.0)
        let centerTextCenterXAnchor = centerText.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0.0)
        let centerTextHeightAnchor = centerText.heightAnchor.constraint(equalToConstant: 45.0)
        let centerTextWidthAnchor = centerText.widthAnchor.constraint(equalToConstant: 300.0)
        
        NSLayoutConstraint.activate([
            centerTextTopAnchor,
            centerTextCenterXAnchor,
            centerTextWidthAnchor,
            centerTextHeightAnchor
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
