//
//  ViewController.swift
//  AboutMe
//
//  Created by Zaki on 05.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameLabel: UITextField!
    @IBOutlet var passwordLabel: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    private let biography = Biography.getBiography()
    
    var username = "Zaki"
    var password = "iphone"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        
        userNameLabel.text = biography.username
        passwordLabel.text = biography.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let firstVC = viewController as? WelcomeViewController {
                firstVC.name = "\(biography.person.name) \(biography.person.surname)"
                firstVC.guestName = biography.person.guest
            } else if let navigationVC = viewController as? UINavigationController {
                if let secondVC = navigationVC.topViewController as? BiographyMainViewController {
                    secondVC.titleName = "\(biography.person.name) \(biography.person.surname)"
                    secondVC.name = biography.person.name
                    secondVC.surname = biography.person.surname
                    secondVC.gender = biography.person.gender
                    secondVC.birthDate = biography.person.dateOfBirth
                    secondVC.homeTown = biography.person.homeTown
                    secondVC.education = biography.person.education
                    secondVC.hobby = biography.person.hobby
                } else if let secondAdditionVC = navigationVC.topViewController as? BiographyAdditionalViewController {
                    secondAdditionVC.textAboutMe = biography.person.aboutMyself
                }
            }
                        
//
//                guard let secondAdditionVC = navigationVC.topViewController as? BiographyAdditionalViewController else { return }
//                secondAdditionVC.textAboutMe = biography.person.aboutMyself
            
//            else if let navigationVC = viewController as? UINavigationController {
//                guard let thirdVC = navigationVC.topViewController as? BiographyAdditionalViewController else { return }
//                    thirdVC.textAboutMe = biography.person.aboutMyself
//                }
            }
        }
        
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameLabel.text = ""
        passwordLabel.text = ""
    }

    @IBAction func loginButtonTapped() {
        guard userNameLabel.text == username, passwordLabel.text == password else {
            showAlert(
                title: "Wrong login or password",
                message: "Please check filled area again",
                textField: passwordLabel
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        
    }
    
    @IBAction func hintAlertButtonsTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your username is \(username)")
        : showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }

        alert.addAction(okAction)
        present(alert, animated: true)
        
    }

    
}

