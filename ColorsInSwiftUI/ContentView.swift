//
//  ContentView.swift
//  ColorsInSwiftUI
//
//  Created by Sarah Alsharif on 5/25/20.
//  Copyright © 2020 Sarah Alsharif. All rights reserved.
//

let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
let gradientStartDark = Color(red: 95.0 / 255, green: 169.0 / 255, blue: 244.0 / 255)

let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
let gradientEndDark = Color(red: 79.0 / 255, green: 178.0 / 255, blue: 141.0 / 255)

let toggleTextcolorLight = Color(red: 227.0 / 255, green: 227.0 / 255, blue: 227.0 / 255)
let toggleTextcolorDark = Color(red: 34.0 / 255, green: 38.0 / 255, blue: 58.0 / 255)

let textColorDark = Color(red: 238.0 / 255, green: 238.0 / 255, blue: 238.0 / 255)
let textColorLight = Color(red: 41.0 / 255, green: 45.0 / 255, blue: 67.0 / 255)

let bgColorDark = Color(red: 41.0 / 255, green: 45.0 / 255, blue: 67.0 / 255)
let bgColorLight = Color(red: 238.0 / 255, green: 238.0 / 255, blue: 238.0 / 255)
import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            ZStack(alignment: .top) {
                ShapeView().offset(x: -80, y : -389).shadow(radius: 12)
            }
            VStack {
                Text(colorScheme == .light ? "Light Mode" : "Dark Mode").font(.system(size: 40)).bold().foregroundColor(colorScheme == .light ? textColorLight : textColorDark )
                }.offset(y: 50).padding()
                ShapeView().offset(x: 80, y : 389).shadow(radius: 12)
            }.background(colorScheme == .light ? bgColorLight: bgColorDark)
             .edgesIgnoringSafeArea(.all)
    }
}
