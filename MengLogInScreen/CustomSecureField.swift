//
//  CustomSecureField.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/14.
//

import SwiftUI

struct CustomSecureField: View {
    var placeholder2: Text
    @Binding var passwaord: String
    //var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if passwaord.isEmpty { placeholder2 }
            SecureField("", text: $passwaord, onCommit: commit)
                .foregroundColor(.white)
                .padding(12) //padding before backGround Color
                .background(Color(#colorLiteral(red: 0.1568627451, green: 0.09411764706, blue: 0.3529411765, alpha: 1)).opacity(0.8))
                .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.white.opacity(0.2)))
        }
    }
}

