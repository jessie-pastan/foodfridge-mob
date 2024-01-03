//
//  SignUpWithEmailView.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/21/23.
//

import SwiftUI

struct SignUpWithEmailView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack (alignment: .center) {
            Text("Create account")
                  .font(.custom("CourierPrime-Bold", size: 40))
                  .padding(.top, 100)
            TextField("username", text: $username)
                .frame(height:40)
                .background(Color.button4)
                .foregroundColor(Color.black)
                .font(.custom("CourierPrime-Regular", size: 25))
                .cornerRadius(150)
                .frame(maxWidth: .infinity)
                .padding()
            TextField("password", text: $password)
                .frame(height:40)
                .background(Color.button4)
                .foregroundColor(Color.black)
                .font(.custom("CourierPrime-Regular", size: 25))
                .cornerRadius(150)
                .frame(maxWidth: .infinity)
                .padding()
           Spacer()
            Button(action: {}) {
                Text("Sign Up")
                    .lineLimit(1)
                    .frame(width: 300 , height: 45)
                    .foregroundColor(Color.button1)
                    .font(Font.custom("CourierPrime-bold", size: 20))
                    .padding(7)
                    .background(Color.button2)
                    .cornerRadius(120)
                    .offset(y: -250)
            }
        }
        VStack{
            Text("By using the app, you agree to our Terms of use and Privacy policy")
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .font(.custom("CourierPrime-Regular", size: 12))
                .padding(.bottom)
                .offset(y: -220)
       }
    }
}
  #Preview
        {
            SignUpWithEmailView()
        }
