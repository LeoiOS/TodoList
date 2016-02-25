//
//  TodoManager.swift
//  TodoList
//
//  Created by Leo on 16/2/25.
//  Copyright © 2016年 Leo. All rights reserved.
//

import UIKit

var todoManager: TodoManager = TodoManager()

struct todo {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TodoManager: NSObject {
    var todos = [todo]()
    
    func addTask(name: String, desc: String) {
        todos.append(todo(name: name, desc: desc))
    }
}
