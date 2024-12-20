//
//  LoginView.swift
//  Habitly
//
//  Created by Sheikh Mohideen on 18/12/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 16.0) {
        
            Spacer()
            
            Image("Habitly2")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
            
            
            Text("Habitly")
                .font(.title)
                .fontWeight(.semibold)
                .padding()
            
            Text("Let's dive in into your account!")
                .font(.body)
                .padding(.horizontal)
                .padding(.bottom)
            
            Spacer()
            
            VStack(spacing: 16.0) {
                Button(
                    action: { },
                    label: {
                        Text("Continue with Google").font(.system(size: 16.0, weight: .semibold))
                    })
                .buttonStyle(SocialLoginButtonStyle())
                .frame(maxWidth: .infinity)
                
                Button(
                    action: { },
                    label: {
                        Text("Continue with Apple").font(.system(size: 16.0, weight: .semibold))
                    })
                .buttonStyle(SocialLoginButtonStyle())
                .frame(maxWidth: .infinity)
            
            }
            
            Spacer()
            
        }.padding(.horizontal)
            .navigationBarBackButtonHidden(true)
    }
}

struct SocialLoginButtonStyle: ButtonStyle {
    
    @Environment(\.colorScheme) var colorScheme
    
    var textColor: Color {
        colorScheme == .dark ? Color.white : primaryColor
    }
    
    var borderColor: Color {
        colorScheme == .dark ? darkThemeBorderButtonColor : lightThemeBorderButtonColor
    }
    
    var bgColor: Color {
        colorScheme == .dark ? darkThemeSocialButtonColor : lightThemeSocialButtonColor
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
             .padding()
             .frame(maxWidth: .infinity)
             .background(bgColor)
             .overlay(
                 RoundedRectangle(cornerRadius: 50)
                     .stroke(borderColor, lineWidth: 1) // Enhanced border color and increased width
             )
             .cornerRadius(50)
             .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
