//
//  Results.swift
//  Task_1
//
//  Created by user193665 on 2/14/21.
//

import Foundation

class Final {
    let per: String
    init(per:String) {
        self.per = per
    }
    
}

class ResultManage {
    
    static let shared = ResultManage()
    private init(){}
    
    var res: Final? = nil
}
