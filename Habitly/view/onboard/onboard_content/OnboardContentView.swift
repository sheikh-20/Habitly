//
//  OnboardContentView.swift
//  Habitly
//
//  Created by Sheikh Mohideen on 19/12/24.
//

import Foundation
import SwiftUI

struct OnboardView: View {
    
    @State private var currentPage = 0
    @State private var onboardContent = OnboardRepository.getOnboardContent()
    @State private var isVisible = true
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                Spacer()
                
                TabView(selection: $currentPage) {
                    
                    ForEach(onboardContent.indices, id: \.self) { index in
                        VStack(alignment: .leading) {
                            
                            Spacer()
                            
                            Text(onboardContent[index].title)
                                .font(Font.custom("PerfectlyAmicable", size: 36))
                                .fontWeight(.semibold)
                                .padding(.bottom, 10)
                                .lineSpacing(6.0)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                            
                            Text(onboardContent[index].subTitle)
                                .font(Font.custom("PerfectlyAmicable", size: 20))
                                .opacity(0.5)
                                .lineSpacing(4.0)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                        
                        }
                        .padding(.horizontal)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                HStack(spacing: 8) {
                    ForEach(onboardContent.indices, id: \.self) { index in
                        Circle()
                            .fill(currentPage == index ? primaryColor : Color.gray)
                            .frame(width: 10, height: 10)
                            .animation(.easeInOut, value: currentPage)
                    }
                }
                .padding(.top)
                .padding(.leading, 20)
                .frame(maxWidth: .infinity, alignment: .center)
    
                Divider().padding(.vertical)
                
                HStack(spacing: 16) {
                    
                    if currentPage != (onboardContent.count - 1) {
                        Button(action: { }, label: { Text("Skip")  .font(Font.custom("PerfectlyAmicable", size: 22))
                            .fontWeight(.semibold) })
                            .buttonStyle(OutlinedButtonStyle())
                            .frame(maxWidth: .infinity)
                    }
                    
                    Button(action: { nextPage() },
                                               label: {
                                            if currentPage == (onboardContent.count - 1)  {
                                                NavigationLink(destination: LoginView()) {
                                                    Text("Let's Get Started")
                                                        .font(Font.custom("PerfectlyAmicable", size: 22))
                                                        .fontWeight(.semibold)
                                                }
                                            } else { Text("Continue")
                                                    .font(Font.custom("PerfectlyAmicable", size: 22))
                                                .fontWeight(.semibold) }
                                        })
                                            .buttonStyle(ElevatedButtonStyle())
                                            .frame(maxWidth: .infinity)
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
    }
    
    func nextPage() {
        if (currentPage < (onboardContent.count - 1)) {
            currentPage = currentPage + 1
        }
    }
}



struct OutlinedButtonStyle: ButtonStyle {
    
    @Environment(\.colorScheme) var colorScheme
    
    var outlinedButtonColor: Color {
        colorScheme == .dark ? darkThemeOutlinedButtonColor : lightThemeOutlinedButtonColor
    }
    
    var textColor: Color {
        colorScheme == .dark ? Color.white : primaryColor
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(outlinedButtonColor)
            .foregroundColor(textColor)
            .cornerRadius(50)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
          
    }
}

struct ElevatedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(elevatedButtonColor)
            .foregroundColor(.white)
            .cornerRadius(50)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}
 
struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
