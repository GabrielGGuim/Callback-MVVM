//
//  Model.swift
//  CallBack-MVVM
//
//  Created by Gabriel Gonçalves Guimarães on 12/02/21.
//

import Foundation
import UIKit

class Model:UIView{
    
    let lbName: UILabel = {
        let lbName = UILabel()
        lbName.text = "Name"
        lbName.translatesAutoresizingMaskIntoConstraints = false
        
        return lbName
    }()
    
    let lbPassword: UILabel = {
        let lbPassword = UILabel()
        lbPassword.text = "Password"
        lbPassword.translatesAutoresizingMaskIntoConstraints = false
        return lbPassword
    }()
    
    let tfName: UITextField = {
        let tfName = UITextField()
        tfName.translatesAutoresizingMaskIntoConstraints = false
        tfName.borderStyle = .roundedRect

        return tfName
    }()
    
    let tfPassword: UITextField = {
        let tfPassword = UITextField()
        tfPassword.translatesAutoresizingMaskIntoConstraints = false
        tfPassword.borderStyle = .roundedRect
        
        
        return tfPassword
    }()

    let btnSubmit: UIButton = {
        let btnSubmit = UIButton()
        btnSubmit.translatesAutoresizingMaskIntoConstraints = false
        btnSubmit.backgroundColor = .gray
        btnSubmit.isEnabled = false
        btnSubmit.setTitle("Send", for: .normal)
        return btnSubmit
    }()

    init() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override class func awakeFromNib() {
        
        lbName.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor, constant: 30).isActive = true
        lbName.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        lbName.heightAnchor.constraint(equalTo: lbName.widthAnchor, multiplier: 0.25).isActive = true
        lbName.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true

        
        tfName.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor, constant: 30).isActive = true
        tfName.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        tfName.heightAnchor.constraint(equalTo: tfName.widthAnchor, multiplier: 0.25).isActive = true
        tfName.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        
        lbPassword.topAnchor.constraint(equalTo: self.lbName.bottomAnchor, constant: 60).isActive = true
        lbPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        lbPassword.heightAnchor.constraint(equalTo: lbPassword.widthAnchor, multiplier: 0.25).isActive = true
        lbPassword.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        
        tfPassword.topAnchor.constraint(equalTo: self.tfName.bottomAnchor, constant: 60).isActive = true
        tfPassword.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        tfPassword.heightAnchor.constraint(equalTo: tfPassword.widthAnchor, multiplier: 0.25).isActive = true
        tfPassword.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true

        
        btnSubmit.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
        btnSubmit.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        btnSubmit.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.07).isActive = true
        btnSubmit.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
    }
}
