//
//  BiographyAdditionalViewController.swift
//  AboutMe
//
//  Created by Zaki on 06.04.2023.
//

import UIKit

final class BiographyAdditionalViewController: UIViewController {
    @IBOutlet var textAboutMeLabel: UILabel!
    
    var textAboutMe: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textAboutMeLabel.text = textAboutMe
        

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
