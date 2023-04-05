//
//  BiographyMainViewController.swift
//  AboutMe
//
//  Created by Zaki on 06.04.2023.
//

import UIKit

class BiographyMainViewController: UIViewController {

    @IBOutlet var mainTitleName: UILabel!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var homeTownLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    var titleName: String!
    
    var name: String!
    var surname: String!
    var gender: String!
    var birthDate: String!
    var homeTown: String!
    var education: String!
    var hobby: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTitleName.text = titleName
        
        nameLabel.text = "Name: \(name ?? "")"
        surnameLabel.text = "Surname \(surname ?? "")"
        genderLabel.text = "Gender: \(gender ?? "")"
        dateOfBirthLabel.text = "Date of Birth: \(birthDate ?? "")"
        homeTownLabel.text = "Hometown: \(homeTown ?? "")"
        educationLabel.text = "Education: \(education ?? "")"
        hobbyLabel.text = "Hobby: \(hobby ?? "")"

        // Do any additional setup after loading the view.
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
