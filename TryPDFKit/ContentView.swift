//
//  ContentView.swift
//  TryPDFKit
//
//  Created by Weerawut Chaiyasomboon on 17/08/2568.
//

import SwiftUI
import PDFKit

struct ContentView: View {
    let fileNames = ["sample1", "sample2"]
    
    var body: some View {
        NavigationStack {
            List(fileNames, id: \.self) { fileName in
                NavigationLink {
                    if let url = Bundle.main.url(forResource: fileName, withExtension: "pdf") {
                        PDFKitView(url: url)
                    } else {
                        Text("This file is not PDF: \(fileName)")
                    }
                } label: {
                    Text(fileName)
                        .font(.title2)
                }
            }
            .navigationTitle("PDF Files")
        }
    }
}

#Preview {
    ContentView()
}
