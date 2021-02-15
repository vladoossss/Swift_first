//
//  ViewController.swift
//  Task_1
//
//  Created by user193665 on 2/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var intro: UILabel!
    @IBOutlet weak var numbers: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showRes(_ sender: Any) {
            guard
                let text = numbers?.text,
                    text.count > 0
                else {
                    intro.textColor = .red
                    return
                }
                intro.textColor = .black
                
                let arr = text.components(separatedBy: " ").compactMap{Int($0)}
                
                var summ = 0
                for i in arr {
                    summ += i
                }
                
                ResultManage.shared.res = Final(per: String(summ))
                
                
                performSegue(withIdentifier: "Secondview", sender: sender)
    }
}

