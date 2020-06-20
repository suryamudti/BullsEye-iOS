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
            Spacer()
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to: ")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.green)
                Text(/*@START_MENU_TOKEN@*/"100"/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            
            // Slider row
            HStack {
                Text("1")
                Slider(value: .constant(50))
                Text("100")
            }
            Spacer()
            
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
            Spacer()
            
            // Score row
            HStack {
                Button(action: {}){
                    Text("Start Over")
                }
                Spacer()
                Text("Score:")
                Text("99999")
                Spacer()
                Text("Round")
                Text("99999")
                Spacer()
                Button(action: {}){
                    Text("Info")
                }
            }.padding(.bottom, 20)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
