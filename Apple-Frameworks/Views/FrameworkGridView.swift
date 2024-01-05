//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Declan Onunkwo on 1/3/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // use @ObservedObject when ejecting it from a previous view
    // use @StateObject when initializing as a new object
    @StateObject var viewModel = FrameworkGridViewModel()
    
        
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework
                                    ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
    
}

#Preview {
    FrameworkGridView()
}
