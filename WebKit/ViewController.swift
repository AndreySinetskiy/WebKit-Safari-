//
//  ViewController.swift
//  WebKit
//
//  Created by 1 on 15.10.2021.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    private let label: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 100, width: 400, height: 200)
        label.text = "Create by Andrey"
        label.font = UIFont(name: "Zapfino" , size: 30)
        label.textAlignment = .center
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 70)
        button.setTitle("Google", for: .normal)
        button.titleLabel?.font = UIFont(name: "Zapfino" , size: 30)
        button.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        button.setTitleColor(.yellow, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()
        view.addSubview(button)
        view.addSubview(label)
        button.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
        button.center = view.center
        
    }

    @objc func didTabButton() {
        if let url = URL(string: "http://www.google.com") {
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
    }
    private func addGradient() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.yellow.cgColor, UIColor.white.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        gradient.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        view.layer.insertSublayer(gradient, at: 0)
    }
}

