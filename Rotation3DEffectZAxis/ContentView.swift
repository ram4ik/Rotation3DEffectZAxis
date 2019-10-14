//
//  ContentView.swift
//  Rotation3DEffectZAxis
//
//  Created by ramil on 14.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var degrees = 10.0
    
    var body: some View {
        VStack {
            Text("Rotating on the Z axis is just like using rotationEffect modifier.")
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow).opacity(0.7)
                .overlay(
                    Text("25 degrees on Axis")
                    .font(.largeTitle).bold()
            ) // Make sure only the z axis has a value
                .rotation3DEffect(Angle(degrees: 25), axis: (x: 0.0, y: 0.0, z: 1.0 ))
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow).opacity(0.7)
                .overlay(
                    Text("-25 degrees on Axis")
                    .font(.largeTitle).bold()
            ) // Make sure only the z axis has a value
                .rotation3DEffect(Angle(degrees: -25), axis: (x: 0.0, y: 0.0, z: 1.0 ))
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow).opacity(0.7)
                .overlay(
                    Text("Move slider to adjust rotation")
                    .font(.largeTitle).bold()
            ).rotation3DEffect(Angle(degrees: degrees), axis: (x: 0.0, y: 0.0, z: 1.0 ))
            
            Slider(value: $degrees, in: -180...180, step: 1).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
