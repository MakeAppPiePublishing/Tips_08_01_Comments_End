//
//  SwiftUIView.swift
//  08_05_Comments
//
//  Created by Steven Lipton on 8/15/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct LightBankView: View {
    @State var lights:LightBank = LightBank(count:4,on:.allOn)
    var body: some View {
        HStack{
            ForEach(0..<4){
                ToggleButtonView(isOn:self.lights.lights[$0].isOn)
            }
            
        }
    }
}

#if DEBUG
struct LightBankView_Previews: PreviewProvider {
    static var previews: some View {
        LightBankView()
    }
}
#endif
