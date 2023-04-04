//
//  Array.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 04.04.2023.
//

import UIKit

extension Array {
    var lastNote: Notebook {
        return self[endIndex - 1] as! Notebook
    }
}
