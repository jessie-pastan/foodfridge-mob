//
//  SignUpWithEmailView.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/21/23.
//

import SwiftUI

struct SignUpWithEmailView: View {
    @State var name: String = ""
    
    var body: some View {
        Text("Create account")
              .font(.custom("CourierPrime-Bold", size: 40))
              .padding(.top, -105)
        
        VStack{
            TextField("username", text: $name)
                .background(Color.button4)
                .foregroundColor(Color.black)
                .font(.custom("CourierPrime-Regular", size: 30))
                .cornerRadius(70)
                .padding()
            TextField("password", text: $name)
                .background(Color.button4)
                .foregroundColor(Color.black)
                .font(.custom("CourierPrime-Regular", size: 30))
                .cornerRadius(70)
                .padding()
            Button(action: {}) {
                Spacer()
                Text("Sign Up")
                    .font(.title3)
                    .frame(maxWidth: 300)
                    .background(Color.button2)
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                    .cornerRadius(140)
                Spacer()
            }
        }
        HStack{
            Spacer()
            Text("By using the app, you agree to our Terms of use and Privacy policy")
                .padding(.bottom)
        }
    }
}
  #Preview
        {
            SignUpWithEmailView()
        }
