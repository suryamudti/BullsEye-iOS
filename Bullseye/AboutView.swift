//
//  AboutView.swift
//  Bullseye
//
//  Created by Suryamudti Salmat on 21/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("🎯 BullsEye 🎯")
            Text("This is BullsEye, the game where you can win points and earn fame by dragging slider.")
            Text("Your goal is to put the slider as close as possible to the target value. The closer you are, the more points you score")
            Text("Enjoy! 😆👍")
        }
        .navigationBarTitle("About BullsEye")
    }

}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
