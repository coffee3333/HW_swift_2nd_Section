//
//  ChecklistItem.swift
//  toDoList2ndTry
//
//  Created by Atay on 10/16/20.
//

import Foundation


class ChecklistItem {
  
  var text = ""
  var checked = false
  
  func toggleChecked() {
    checked = !checked
  }
  
}
