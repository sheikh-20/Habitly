//
//  SplashView.swift
//  Habitly
//
//  Created by Sheikh Mohideen on 18/12/24.
//

import Foundation
import SwiftUI

struct SplashView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if (self.isActive) {
                OnboardView()
            } else {
                
                VStack(alignment: .center) {
                    
                    Image("Habitly")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                    
                    Text("Habitly")
                        .font(Font.custom("PerfectlyAmicable", size: 46))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                
                CustomCircularLoadingView(lineWidth: 8, color: Color.white, size: 50)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .padding(.bottom, 50)
                }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.3) {
                withAnimation {
                    isActive = true
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(primaryColor)
        
    }
}


struct CustomCircularLoadingView: View {
    @State private var isAnimating = false
    var lineWidth: CGFloat = 5
    var color: Color = Color(red: 20/255, green: 122/255, blue: 114/255)
    var size: CGFloat = 30
    
    var body: some View {
        Circle()
            .trim(from: 0.0, to: 0.7)
            .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
            .foregroundColor(.clear)
            .frame(width: size, height: size)
            .overlay(
                Circle()
                    .trim(from: 0.3, to: 1.0)
                    .stroke(AngularGradient(gradient: Gradient(colors: [
                        color.opacity(0), color
                    ]), center: .center, startAngle: .degrees(0), endAngle: .degrees(270)), style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .frame(width: size, height: size)
            )
            .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
            .animation(
                Animation.linear(duration: 1)
                    .repeatForever(autoreverses: false)
            )
            .onAppear {
                self.isAnimating = true
            }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
