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
    @State var whoIsTehereIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("Wellcome to my first app")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
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
            Button(action: {
                print("Knock Knock")
                self.whoIsTehereIsVisible = true
            }) {
                Text("Knock Knock !")
            }.alert(isPresented: $whoIsTehereIsVisible) { () ->
                Alert in return Alert(title: Text("Who's there ?"),
                                      message: Text("Litle old Lady,"),
                                      dismissButton: .default(Text("Litle old lady who ?")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
