//
//  NibView.swift
//  ContactApp
//
//  Created by Silouanos Nicolaou on 01/09/2020.
//

import UIKit

open class NibView: UIView {
    
    var contentView: UIView! {
        willSet {
            contentView?.removeFromSuperview()
            newValue.frame = bounds
            newValue.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(newValue)
        }
    }
    
    public init() {
        super.init(frame: .zero)
        initialize()
        configure()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
        configure()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
        configure()
    }
    
    open func configure() {
        
    }
    
    private func initialize() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: prefferedBundle())
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView ?? UIView()
        contentView = view
    }
    
    open func prefferedBundle() -> Bundle? {
        return Bundle(for: type(of: self))
    }
}
