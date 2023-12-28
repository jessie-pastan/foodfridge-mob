//
//  SignUpWithEmailView.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/21/23.
//

import SwiftUI

struct SignUpWithEmailView: View {
    var body: some View {
        Text("Create account")
            .font(.custom("CourierPrime-Bold", size: 30))
            .padding(.leading, -80.0)
            .frame(height: 3.0)
            .offset(y: -300)
            .foregroundColor(Color.black)
        VStack{
            Text("Username")
                .font(.custom("CourierPrime-Regular", size: 20))
                .padding(.leading, -150.0)
                .frame(width: 2.0, height: 2.0)
                .offset(y: -200)
                .foregroundColor(Color.black)
            Text("Password")
                .font(.custom("CourierPrime-Regular", size: 20))
                .padding(.leading, -150.0)
                .frame(width: 2.0, height: 2.0)
                .offset(y: -120)
                .foregroundColor(Color.black)
        }
    }
    
}
        
        
        
 #Preview {
    SignUpWithEmailView()
    
        }
