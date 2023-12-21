//
//  ContentView.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/20/23.
//

import SwiftUI

struct LoginView: View {
    @State private var signUpWithEmailShow: Bool = false
    @State private var signUpWithGoogleShow: Bool = false
    @State private var signUpWithAppleShow: Bool = false
    @State private var landingPageShow: Bool = false
    
    var body: some View {
        VStack {
            Image("cooking")
                .resizable()
                .frame(width: 150, height: 150)
                .scaledToFit()
            VStack {
                Text("For a personalized experince please sign into your account").font(.callout)
            }
            .padding(.top, 10)
            .frame(width: 250)
            
            //MARK: Buttons for sign in
            //Email
            LoginButton(title:"Sign up with Email") {
                self.signUpWithEmailShow = true
            }
            .sheet(isPresented: $signUpWithEmailShow, content: {
                SignUpWithEmailView()
            })
            //Google
            LoginButton(title:"Sign up with Google") {
                self.signUpWithGoogleShow = true
            }
            //Apple
            LoginButton(title:"Sign up with Apple") {
                self.signUpWithAppleShow = true
            }
            
            Text("or")
                .padding([.top,.bottom], 30)
            
            LoginButton(title:"Enter as a guest") {
                self.landingPageShow = true
            }
             
               
            Spacer()
            
        }
        .padding()
        
        
    }
}

#Preview {
    LoginView()
}
