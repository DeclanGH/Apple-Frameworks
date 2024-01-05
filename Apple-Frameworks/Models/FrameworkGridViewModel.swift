//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Declan Onunkwo on 1/4/24.
//

import Foundation
import SwiftUI

// make your class final if you are not going to subclass it

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                                   GridItem(.flexible()),
                                   GridItem(.flexible())]

}

