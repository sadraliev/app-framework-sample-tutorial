//
//  FrameworkListView.swift
//  Apple Frameworks
//
//  Created by Aibek Sadraliev on 8/29/24.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(MockData.frameworks, id: \.id) { framework in
                    NavigationLink(destination: FrameworkDetailView(
                        framework: framework,
                        isShowingDetailView: $viewModel.isShowingDetailView)) {
                        
                        FrameworkTitleHView(framework: framework)
                    }
                        .navigationTitle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Title@*/Text("Title")/*@END_MENU_TOKEN@*/)
                }
            }  
            .navigationTitle("Apps Frameworks")
            
        }
        .accentColor(Color(.label))
    }
        
}

#Preview {
    FrameworkListView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
