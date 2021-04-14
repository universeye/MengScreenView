//
//  LogInCardView.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/14.
//

import SwiftUI
import SwiftUIX

struct LogInCardView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    private var buttonTextColor = RadialGradient(
        gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.5313332080841064, green: 0.36666667461395264, blue: 1, alpha: 0.8100000023841858)), location: 0),
                            .init(color: Color(#colorLiteral(red: 0.8950619101524353, green: 0.3016319274902344, blue: 0.9916666746139526, alpha: 0.699999988079071)), location: 1),
                            .init(color: Color(#colorLiteral(red: 1, green: 0.3708333373069763, blue: 0.9370830655097961, alpha: 0.7599999904632568)), location: 1)]),
        center: UnitPoint(x: -5.371759925765218e-9, y: 0.5000000000000001),
        startRadius: 2.046781974837972,
        endRadius: 200
    )
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Sign Up")
                .font(.largeTitle).bold()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Access to 120+ hours of courses, tutorials and livestreams")
                .font(.subheadline)
                .foregroundColor(Color.white.opacity(0.8))
                .frame(maxWidth: .infinity, alignment: .leading)
            CustomTextField(
                placeholder: Text("  Email").foregroundColor(.white), email: $email
                    )
            
            CustomSecureField(placeholder2: Text("  Password").foregroundColor(.white), passwaord: $password)
            
            TextField("Email", text: $email)
                .foregroundColor(.white)
                .padding(12) //padding before backGround Color
                .background(Color(#colorLiteral(red: 0.1568627451, green: 0.09411764706, blue: 0.3529411765, alpha: 1)).opacity(0.8))
            
                .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.white.opacity(0.2)))
            
            Button(action: {}) {
                Text("Create account")
                    .frame(maxWidth: .infinity)
                    .padding(12)
                    .foregroundColor(.white).opacity(0.8)
                    .background(Color(#colorLiteral(red: 0.1568627451, green: 0.09411764706, blue: 0.3529411765, alpha: 1)).opacity(0.8))
                    .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.white.opacity(0.2)))
                
            }
            .background(buttonTextColor.blur(radius: 30))
            
            Text("By clicking on Sign up, you agree to our Terms of service and Privacyt policy")
                .font(.subheadline)
                .foregroundColor(Color.white.opacity(0.8))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider().background(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)).opacity(0.4))
            
            HStack {
                Text("Already have an account?")
                    .font(.subheadline)
                    .foregroundColor(Color.white.opacity(0.8))
                    
                
                Button(action: {}) {
                    Text("Log In")
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        
        .padding(20)
        //.background(Color(#colorLiteral(red: 0.1568627451, green: 0.09411764706, blue: 0.3529411765, alpha: 1)).opacity(0.5))
        .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark)) //play the canvas to see it
        .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous).stroke(Color.white.opacity(0.4))
                    .blendMode(.overlay)) //blendMode for outline only
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        //.cornerRadius(30 )
        .padding()
    }
}

struct LogInCardView_Previews: PreviewProvider {
    static var previews: some View {
        LogInCardView().previewLayout(.sizeThatFits)
    }
}


//TextField("Email", text: $email)
//    .foregroundColor(.white)
//    .padding(12) //padding before backGround Color
//    .background(Color(#colorLiteral(red: 0.1568627451, green: 0.09411764706, blue: 0.3529411765, alpha: 1)).opacity(0.8))
//
//    .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
//    .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.white.opacity(0.2)))


//            SecureField("Password", text: $password)
//                .foregroundColor(.white)
//                .padding(12) //padding before backGround Color
//                .background(Color(#colorLiteral(red: 0.1568627451, green: 0.09411764706, blue: 0.3529411765, alpha: 1)).opacity(0.8))
//
//                .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
//                .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.white.opacity(0.2)))
