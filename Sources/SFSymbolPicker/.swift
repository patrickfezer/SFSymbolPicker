//
//  SwiftUIView.swift
//  SFSymbolPicker
//
//  Created by Patrick Fezer on 08.06.25.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var showSheet = false
    var body: some View {
        Button("Sheet") {
            showSheet = true
    }
}

#Preview {
    SwiftUIView()
}
