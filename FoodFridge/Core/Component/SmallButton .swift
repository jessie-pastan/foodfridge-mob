//
//  SmallButton .swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/25/23.
//

import SwiftUI


struct SmallButton: View {
   
    var title = "Title"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.button2)
            Text(title)
                .font(Font.custom("CourierPrime-Regular", size: 17))
                .foregroundStyle(Color.black)
                .bold()
        }

    }
}
#Preview {
    SmallButton()
}
