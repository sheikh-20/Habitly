//
//  SignupEmailView.swift
//  Habitly
//
//  Created by Sheikh Mohideen on 25/12/24.
//

import Foundation
import SwiftUI

struct SignupEmailView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    
    @State private var isChecked: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Join Habitly Today 👋")
                        .font(Font.custom("PerfectlyAmicable", size: 36))
                        .fontWeight(.semibold)
                        .lineSpacing(6.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 16)
                        .padding(.horizontal)
                    
                    Text("Start your habit journey with Habitly. It's quick easy and free!")
                        .font(Font.custom("PerfectlyAmicable", size: 24))
                        .opacity(0.5)
                        .lineSpacing(4.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 2)
                        .padding(.horizontal)
                    
                    Text("Email")
                        .font(Font.custom("PerfectlyAmicable", size: 22))
                        .fontWeight(.semibold)
                        .lineSpacing(6.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .leading, .trailing])
                    
                    HStack {
                        Image(systemName: "envelope.fill")  // Email icon from SF Symbols
                            .foregroundColor(.gray)
                        
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .padding(.horizontal)
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    .padding(.horizontal)
                    
                    Text("Password")
                        .font(Font.custom("PerfectlyAmicable", size: 22))
                        .fontWeight(.semibold)
                        .lineSpacing(6.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .leading, .trailing])
                    
                    HStack {
                        Image(systemName: "lock.fill")  // Email icon from SF Symbols
                            .foregroundColor(.gray)
                        
                        if isPasswordVisible {
                            TextField("Password", text: $password)
                                .disableAutocorrection(true)
                                .padding(.horizontal)
                        } else {
                            SecureField("Password", text: $password)
                                .disableAutocorrection(true)
                                .padding(.horizontal)
                        }
                        
                        Button(action: { isPasswordVisible.toggle() }) {
                            Image(systemName: isPasswordVisible ? "eye.fill" : "eye.slash.fill" )
                                .foregroundColor(.gray)
                            
                        }
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1))
                    .padding(.horizontal)
                    
                    HStack(alignment: .center, spacing: 12) {
                        Button(action: {
                            isChecked.toggle()
                        }) {
                            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                                .foregroundColor(isChecked ? .blue : .gray)
                        }
                        
                        HStack(alignment: .center, spacing: 4) {
                            Text("I agree to Habitly")
                                .font(Font.custom("PerfectlyAmicable", size: 20))
                                .opacity(0.6)
                                .lineSpacing(4.0)
                            
                            Text("Terms & Conditions")
                                .font(Font.custom("PerfectlyAmicable", size: 20))
                                .foregroundColor(primaryColor)
                                .opacity(1.0) // Ensures this text is fully visible
                                .onTapGesture {
                                    // Add your action here for "Terms & Conditions"
                                    print("Terms & Conditions tapped!")
                                }
                        }
                    }.padding([.top, .leading, .trailing])
                
                    HStack(alignment: .center, spacing: 8) {
                        Text("Already have an account?")
                            .font(Font.custom("PerfectlyAmicable", size: 20))
                            .opacity(0.6)
                            .lineSpacing(4.0)
                        
                        Text("Sign in")
                            .font(Font.custom("PerfectlyAmicable", size: 20))
                            .foregroundColor(primaryColor)
                            .opacity(1.0) // Ensures this text is fully visible
                            .onTapGesture {
                                // Add your action here for "Terms & Conditions"
                                print("Terms & Conditions tapped!")
                            }
                    
                }
                    .frame(maxWidth: .infinity)
                    .padding([.top, .leading, .trailing])
                
                    HStack {
                        Divider().frame(maxWidth: .infinity, maxHeight: 0.3).background(Color.gray)
                        
                        Text("or")
                            .font(Font.custom("PerfectlyAmicable", size: 24))
                            .opacity(0.5)
                            .lineSpacing(4.0)
                            .padding(.horizontal, 4)
                        
                        Divider().frame(maxWidth: .infinity, maxHeight: 0.3).background(Color.gray)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
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
                    .padding(.horizontal)
                }
            }.padding(.bottom, 100)
                
            VStack {
                
                Spacer()
                
                VStack {
                    Divider().padding(.vertical)
                    
                    HStack {
                        
                        Button(
                            action: {
                                //                        viewmodel.loginWithPassword(email: email, password: password)
                            },
                            label: {
                                NavigationLink(destination: SleepDurationView()) {
                                    Text("Sign up").fontWeight(.semibold)
                                }
                            })
                        .buttonStyle(ElevatedButtonStyle())
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    }.padding(.horizontal)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct SignupEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SignupEmailView()
    }
}
