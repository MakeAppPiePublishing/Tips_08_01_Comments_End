//
//  ContentView.swift
//  08_05_Comments
//
//  Created by Steven Lipton on 8/15/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   // var moreLights = Lightba
     @State var lights:LightBank = LightBank(count:4,on:.allOn)
    var body: some View {
        VStack{
            Text("Light Panel")
            ForEach(0...3, id:\.self){index in
                LightBankView(lights:self.lights)
            }
        }
        .font(.largeTitle)
        .foregroundColor(.green)
            
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
