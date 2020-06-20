//
//  ContentView.swift
//  Bullseye
//
//  Created by Suryamudti Salmat on 20/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            // Target row
            Text("Wellcome to my first app")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            
            // Slider row
            
            // Button row
            Button(action: {
                print("Button pressed")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me !"/*@END_MENU_TOKEN@*/)
            }.alert(isPresented: $alertIsVisible) { () ->
                Alert in return Alert(title: Text("Hello there !"),
                                      message: Text("this is my first pop-up"),
                                      dismissButton: .default(Text("Awesome!")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
