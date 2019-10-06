//
//  Projects.swift
//  G. Rosay
//
//  Created by Gaspard Rosay on 06.10.19.
//  Copyright © 2019 Gaspard Rosay. All rights reserved.
//

import SwiftUI

struct Project : Identifiable{
    var id = UUID()
    var imageName: String
    var name: String
    var subtitle: String
    var year: String
    var desc: String
    
    var gImageName:String { return imageName }
    var gName:String { return name }
    var gSubtitle:String { return subtitle }
    var gYear:String { return year }
    var gDesc:String { return desc }
}

let projectsData = [
    Project(imageName: "intervidia", name: NSLocalizedString("intervidia_title", comment: ""), subtitle: NSLocalizedString("intervidia_subtitle", comment: ""), year: "2019", desc: NSLocalizedString("intervidia_desc", comment: ""))
]
