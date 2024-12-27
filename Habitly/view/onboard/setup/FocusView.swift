//
//  FocusView.swift
//  Habitly
//
//  Created by Sheikh Mohideen on 18/12/24.
//

import Foundation
import SwiftUI

struct FocusView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    
    @State private var isChecked: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            
        
            
            VStack {
                
                Spacer()
                
                VStack {
                    Divider().padding(.vertical)
                    
                    HStack {
                        
                        Button(
                            action: { },
                            label: {
                                NavigationLink(destination: OrganizedView()) {
                                    Text("Continue").fontWeight(.semibold)
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
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct FocusView_Previews: PreviewProvider {
    static var previews: some View {
        FocusView()
    }
}
