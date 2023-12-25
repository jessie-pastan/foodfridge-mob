//
//  ContentView.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/20/23.
//

import SwiftUI

struct AuthenthicationView: View {
    @State private var signUpWithEmailShow: Bool = false
    @State private var signUpWithGoogleShow: Bool = false
    @State private var signUpWithAppleShow: Bool = false
    @State private var landingPageShow: Bool = false
    @State private var logInPageShow: Bool = false
    
    var body: some View {
        NavigationStack {
            
            VStack {
                HStack {
                   
                    Spacer()
                    //MARK: Image
                    Image("cooking")
                        .resizable()
                        .frame(width: 270, height: 270)
                        .scaledToFit()
                        .offset(x: 20, y: 20)
                    Spacer()
                    
                    //MARK: Skip link to landing page
                    NavigationLink {
                        LandingPageView()
                    } label: {
                        Text("Skip")
                    }
                    .offset(y: -130)
                    .foregroundStyle(Color(.button4))
                }
                VStack {
                    Text("Ready to explore new menu ?")
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                    
                }
                .font(Font.custom("CourierPrime-Regular", size: 26))
                .padding(.top, 10)
                .frame(width: 250)
                
                //MARK: Buttons for create account and sign in
                //create account with email
                VStack {
                    LoginButton(title:"Create account") {
                        self.signUpWithEmailShow = true
                    }
                    .sheet(isPresented: $signUpWithEmailShow, content: {
                        SignUpWithEmailView()
                    })
                    
                    LoginButton(title:"Sign in with Email") {
                        self.logInPageShow = true
                    }
                    .sheet(isPresented: $logInPageShow, content: {
                        LogInView()
                    })
                }
                .padding(.leading,-30)
                .font(Font.custom("CourierPrime-Bold", size: 25))
                
                Text("or")
                    .padding([.top,.bottom], 30)
                    .font(Font.custom("CourierPrime-Regular", size: 17))
                
                
                HStack {
                    Image("googleIcon")
                        .resizable()
                        .frame(width: 55, height: 55)
                    Image("appleIcon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .offset(y: -5)
                    
                }
                
                Spacer()
                
            }
            .padding()
        }
    }
    
}




#Preview {
    AuthenthicationView()
}
