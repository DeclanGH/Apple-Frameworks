//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Declan Onunkwo on 1/4/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingModal: Bool
    
    var body: some View {
        HStack {
            
            Spacer()
            
            Button {
                isShowingModal = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingModal: .constant(false))
}
