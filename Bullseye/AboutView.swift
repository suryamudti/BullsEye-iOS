//
//  AboutView.swift
//  Bullseye
//
//  Created by Suryamudti Salmat on 21/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    let beige = Color(red: 255.0 / 255.0, green: 214.0 / 255.0, blue: 179.0 / 255.0)
    
    struct AboutHeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding(.top, 20)
                .padding(.bottom, 20)
        }
    }
    
    struct AboutBodyStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .padding(.leading, 60)
                .padding(.trailing, 60)
                .padding(.bottom, 20)
        }
    }
    
    var body: some View {
        Group {
            VStack {
                Text("🎯 BullsEye 🎯").modifier(AboutHeadingStyle())
                Text("This is BullsEye, the game where you can win points and earn fame by dragging slider.").modifier(AboutBodyStyle())
                Text("Your goal is to put the slider as close as possible to the target value. The closer you are, the more points you score").modifier(AboutBodyStyle())
                Text("Enjoy! 😆👍").modifier(AboutBodyStyle())
            }
            .navigationBarTitle("About BullsEye")
            .background(beige)
        }.background(Image("Background"))
    }

}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
