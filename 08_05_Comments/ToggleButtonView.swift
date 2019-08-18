//
//  ToggleButtonView.swift
//  08_05_Comments
//
//  Created by Steven Lipton on 8/15/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ToggleButtonView:View {
    @State var isOn = false
    func toggle() {isOn = !isOn}
    func change(to state:Bool){
            isOn = state
    }
    var body: some View {
        Button(action:toggle){
            Image(systemName: isOn ? "circle.fill" : "circle")
        }
    .padding()
    }
}

#if DEBUG
struct ToggleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButtonView()
            .font(.largeTitle)
    }
}
#endif
