//
//  LazyView.swift
//  SwiftUITestProject
//
//  Created by user on 21.02.2022.
//

import SwiftUI

// Only loads data as it is needed to
// Makes tweets only load when you go to their profile rather than in the search view
struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: some View {
        build()
    }
}
