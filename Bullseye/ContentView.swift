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
    @State var sliderValue: Double = 50.0
    
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
                Slider(value: self.$sliderValue, in: 1...100)
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
                Alert in
                var roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello there !"),
                                      message: Text("The sliders value is \(roundedValue)"),
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
