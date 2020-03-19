//
//  Text.swift
//  HWUITabBarController
//
//  Created by Nikita Moskalenko on 3/15/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

class TextForProject: UIViewController {
    
    enum textFile {
        case instruction
        case imgName
        case givenInstructionButton
        case mainVCTitle
        
        var text: String {
            switch self {
            case .instruction:
                return "Instruction"
            case .imgName:
                return "icon25"
            case .givenInstructionButton:
                return "Read!"
            case .mainVCTitle:
                return "Lets Read!"
            }
        }
    }
    
    enum imgArray {
        case BMW
        case Audi
        case MB
        case VW
        case Saab
        case Volva
        
        var text: String {
            switch self {
            case .Audi:
                return "Audi_img"
            case .BMW:
                return "BMW_img"
            case .MB:
                return "MB_img"
            case .Saab:
                return "saab_img"
            case .Volva:
                return "Volvo_img"
            case .VW:
                return "VW_img"
            }
        }
    }
}
