//
//  Secondview.swift
//  Task_1
//
//  Created by user193665 on 2/14/21.
//

import UIKit

class Secondview: UIViewController {

    @IBOutlet weak var myres: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let x = ResultManage.shared.res!.per
        myres.text = x
        
    }
}
