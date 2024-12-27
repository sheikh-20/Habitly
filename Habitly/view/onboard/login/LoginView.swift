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
            
            Image("Habitly2")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .padding(.top, 16)
            
            Text("Let's Get Started!")
                .font(Font.custom("PerfectlyAmicable", size: 36))
                .fontWeight(.semibold)
                .lineSpacing(6.0)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 8)
            
            Text("Let's dive in into your account")
                .font(Font.custom("PerfectlyAmicable", size: 20))
                .opacity(0.5)
                .lineSpacing(4.0)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal)
                .padding(.bottom)
        
            Spacer()
            
            VStack(spacing: 16.0) {
                Button(
                    action: {
                        // Your action here
                    },
                    label: {
                        HStack {
                            Image("ic_google") // Replace with your Google logo image name
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding(.trailing, 10)
                            
                            Text("Continue with Google")
                                .font(Font.custom("PerfectlyAmicable", size: 20))
                                .fontWeight(.semibold)
                        }
                        .frame(maxWidth: .infinity)
                    }
                )
                .buttonStyle(SocialLoginButtonStyle())
                
                
                Button(
                    action: {
                        // Your action here
                    },
                    label: {
                        HStack {
                            Image("ic_apple") // Replace with your Google logo image name
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding(.trailing, 10)
                            
                            Text("Continue with Apple")
                                .font(Font.custom("PerfectlyAmicable", size: 20))
                                .fontWeight(.semibold)
                        }
                        .frame(maxWidth: .infinity)
                    }
                )
                .buttonStyle(SocialLoginButtonStyle())
                
                
                Button(
                    action: {
                        // Your action here
                    },
                    label: {
                        HStack {
                            Image("ic_facebook") // Replace with your Google logo image name
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding(.trailing, 10)
                            
                            Text("Continue with Facebook")
                                .font(Font.custom("PerfectlyAmicable", size: 20))
                                .fontWeight(.semibold)
                        }
                        .frame(maxWidth: .infinity)
                    }
                )
                .buttonStyle(SocialLoginButtonStyle())
            
            }
            
            Spacer()
            
            VStack(spacing: 16.0) {
                Button(
                    action: { },
                    label: {
                        NavigationLink(destination: SignupEmailView()){
                            Text("Sign up")
                                .font(Font.custom("PerfectlyAmicable", size: 22))
                                .fontWeight(.semibold)
                        }
                    })
                    .buttonStyle(ElevatedButtonStyle())
                    .frame(maxWidth: .infinity)
                
                Button(
                    action: { },
                    label: {
                        NavigationLink(destination: LoginEmailView()){
                            Text("Sign in")
                                .font(Font.custom("PerfectlyAmicable", size: 22))
                                .fontWeight(.semibold)
                        }
                    })
                .buttonStyle(OutlinedButtonStyle())
                .frame(maxWidth: .infinity)
            }
            
            Spacer()
            
            HStack(alignment: .center, spacing: 8.0) {
                Text("Privacy Policy")
                    .font(Font.custom("PerfectlyAmicable", size: 18))
                    .opacity(0.5)
                
                Text("·")
                    .font(Font.custom("PerfectlyAmicable", size: 18))
                    .opacity(0.5)
                
                Text("Terms of Service")
                    .font(Font.custom("PerfectlyAmicable", size: 18))
                    .opacity(0.5)
            }
            
        }.padding(.horizontal)
            .padding(.vertical)
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
