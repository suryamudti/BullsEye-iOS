//
//  ContentView.swift
//  Bullseye
//
//  Created by Suryamudti Salmat on 20/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Wellcome to my first app")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            Button(action: {
                print("Button pressed")
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me !"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
