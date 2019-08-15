//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Sau on 8/14/19.
//  Copyright © 2019 Sau. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currecnyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size , height: size))
        currecnyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8)
        currecnyLbl.textAlignment = .center
        currecnyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currecnyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currecnyLbl.text = formatter.currencySymbol
        addSubview(currecnyLbl)
        
        
    }
    
    
    override func prepareForInterfaceBuilder() {
        customizedView()
    }
    
    override func awakeFromNib() {
       customizedView()
    }
    
    func customizedView() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
