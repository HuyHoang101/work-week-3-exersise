//
//  HoneViewController.swift
//  Travel App
//
//  Created by hoang.nguyenh on 12/24/25.
//

import UIKit
class HomeViewController: UIViewController {
    lazy var square1: UIView = {
       makeSquare()
    }()
    
    lazy var square2: UIView = {
       makeSquare()
    }()
    
    lazy var square3: UIView = {
       makeSquare()
    }()
    
    lazy var square4: UIView = {
       makeSquare()
    }()
    
    lazy var dot1: UIView = {
        makeDot()
    }()
    lazy var dot2: UIView = {
        makeDot()
    }()
    
    lazy var dot3: UIView = {
        makeDot()
    }()
    
    lazy var dot4: UIView = {
        makeDot()
    }()
    lazy var dot5: UIView = {
        makeDot()
    }()
    lazy var dot6: UIView = {
        makeDot()
    }()
    lazy var dot7: UIView = {
        makeDot()
    }()
    lazy var dot8: UIView = {
        makeDot()
    }()
    lazy var dot9: UIView = {
        makeDot()
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .appBackground
        
        square1.frame.origin = CGPoint(x: 70, y: 150)
        square2.frame.origin = CGPoint(x: 210, y: 160)
        square2.transform = CGAffineTransform(rotationAngle: .pi / 7)
        square3.transform = CGAffineTransform(rotationAngle: -.pi / 7)
        
        view.addSubview(square1)
        view.addSubview(square2)
        view.addSubview(square3)
        view.addSubview(square4)
        
        square1.addSubview(dot1)
        square1.addSubview(dot2)
        square1.addSubview(dot3)
        
        square2.addSubview(dot4)
        square2.addSubview(dot5)
        square2.addSubview(dot6)
        square2.addSubview(dot7)
        square2.addSubview(dot8)
        square2.addSubview(dot9)
        
        square3.translatesAutoresizingMaskIntoConstraints = false
        square4.translatesAutoresizingMaskIntoConstraints = false

        
        NSLayoutConstraint.activate([
            dot1.topAnchor.constraint(equalTo: square1.topAnchor, constant: 5),
            dot1.leadingAnchor.constraint(equalTo: square1.leadingAnchor, constant: 5),
        
            dot2.centerXAnchor.constraint(equalTo: square1.centerXAnchor),
            dot2.centerYAnchor.constraint(equalTo: square1.centerYAnchor),

            dot3.bottomAnchor.constraint(equalTo: square1.bottomAnchor, constant: -5),
            dot3.trailingAnchor.constraint(equalTo: square1.trailingAnchor, constant: -5),

            dot4.leadingAnchor.constraint(equalTo: square2.leadingAnchor, constant: 10),
            dot4.topAnchor.constraint(equalTo: square2.topAnchor, constant: 15),
            
            dot5.centerXAnchor.constraint(equalTo: square2.centerXAnchor),
            dot5.topAnchor.constraint(equalTo: square2.topAnchor, constant: 15),
            
            dot6.trailingAnchor.constraint(equalTo: square2.trailingAnchor, constant: -10),
            dot6.topAnchor.constraint(equalTo: square2.topAnchor, constant: 15),
            
            dot7.leadingAnchor.constraint(equalTo: square2.leadingAnchor, constant: 10),
            dot7.bottomAnchor.constraint(equalTo: square2.bottomAnchor, constant: -15),
            
            dot8.centerXAnchor.constraint(equalTo: square2.centerXAnchor),
            dot8.bottomAnchor.constraint(equalTo: square2.bottomAnchor, constant: -15),
            
            dot9.trailingAnchor.constraint(equalTo: square2.trailingAnchor, constant: -10),
            dot9.bottomAnchor.constraint(equalTo: square2.bottomAnchor, constant: -15),
            
            
            
            square3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250),
            square3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            square3.widthAnchor.constraint(equalToConstant: 100),
            square3.heightAnchor.constraint(equalToConstant: 100),
            
            square4.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250),
            square4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
            square4.widthAnchor.constraint(equalToConstant: 100),
            square4.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    func makeDot() -> UIView {
        let dot = UIView()
        dot.backgroundColor = .white
        dot.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dot.widthAnchor.constraint(equalToConstant: 15),
            dot.heightAnchor.constraint(equalToConstant: 15)
        ])
        dot.layer.cornerRadius = 7.5
        return dot
    }
    
    func makeSquare() -> UIView {
        let square = UIView()
        square.frame.size = CGSize(width: 100, height: 100)
        square.backgroundColor = .systemRed
        square.layer.cornerRadius = 10
        square.layer.shadowColor = UIColor.black.cgColor
        square.layer.shadowOpacity = 0.5
        square.layer.shadowRadius = 7
        square.layer.shadowOffset = CGSize(width: -4, height: -4)
        return square
    }
    
}

#Preview {
    let hv = HomeViewController()
    return hv
}
