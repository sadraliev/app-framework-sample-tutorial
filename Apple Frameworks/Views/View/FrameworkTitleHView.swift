//
//  FrameworkTitleHView.swift
//  Apple Frameworks
//
//  Created by Aibek Sadraliev on 8/29/24.
//

import SwiftUI

struct FrameworkTitleHView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }

    }
}

#Preview {
    FrameworkTitleHView(framework: MockData.sampleFramework)
}
