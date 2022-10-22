//
//  TransformerClass.swift
//  TransformersList
//
//  Created by Berke Topcu on 21.10.2022.
//

import Foundation
import UIKit

enum TransformerType {
    case Autobot
    case Desepticons
}

class Transformers {
    var name : String
    var image : UIImage
    var type : TransformerType
    
    init(initedName:String,initedImage:UIImage,initedType:TransformerType) {
        name = initedName
        image = initedImage
        type = initedType
    }
}
