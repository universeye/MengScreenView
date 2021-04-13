//
//  GeometryGetter.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/13.
//

import SwiftUI

struct GeometryGetter: View {
    @Binding var rect: CGRect
        
        var body: some View {
            return GeometryReader { geometry in
                self.makeView(geometry: geometry)
            }
        }
        
        func makeView(geometry: GeometryProxy) -> some View {
            DispatchQueue.main.async {
                self.rect = geometry.frame(in: .global)
                print("rect: \(rect)")
                print("rect.height: \(rect.height)")
            }

            return Rectangle().fill(Color.blue)
        }
}

