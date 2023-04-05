//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Zaki on 05.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var guestNameLabel: UILabel!
    
    var name: String!
    var guestName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "My name is \(name ?? "")"
        guestNameLabel.text = "Welcome \(guestName ?? "")"
        
        setUpBackgroundColor()

        // Do any additional setup after loading the view.
    }
    
    private func setUpBackgroundColor() {
        view.backgroundColor = .systemCyan
        navigationItem.title = "Gradient View"
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.systemCyan.cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        gradientLayer.frame = view.frame
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
