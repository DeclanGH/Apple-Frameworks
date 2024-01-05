//
//  FrameworkButton.swift
//  Apple-Frameworks
//
//  Created by Declan Onunkwo on 1/4/24.
//

import SwiftUI

struct FrameworkButton: View {
    
    let title: String
    
    var body: some View {
        
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    FrameworkButton(title: "Text Title")
}
