//
//  CustomTextField.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/14.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: Text
    @Binding var email: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if email.isEmpty { placeholder }
            TextField("", text: $email, onEditingChanged: editingChanged, onCommit: commit)
                .foregroundColor(.white)
                .padding(12) //padding before backGround Color
                .background(Color(#colorLiteral(red: 0.1568627451, green: 0.09411764706, blue: 0.3529411765, alpha: 1)).opacity(0.8))
                .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.white.opacity(0.2)))
        }
    }
}

