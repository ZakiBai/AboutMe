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
    
    var username = "Zaki"
    var password = "iphone"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
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

