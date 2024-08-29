//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Aibek Sadraliev on 8/25/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks, id: \.id) {
                        framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .navigationTitle("Apps Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView){
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                }
                
            }
        }
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

