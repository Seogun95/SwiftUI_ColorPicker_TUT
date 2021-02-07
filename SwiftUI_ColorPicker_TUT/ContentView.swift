//
//  ContentView.swift
//  SwiftUI_ColorPicker_TUT
//
//  Created by 김선중 on 2021/02/07.
//

import SwiftUI

struct ContentView: View {
    @State private var bgColor =
        Color(.sRGB, red: 0.98, green: 0.9, blue: 0.5)

        var body: some View {
            VStack {
                ColorPicker("배경화면 색상 선택", selection: $bgColor)
                    .padding()
            }
            //frame은 반드시 background 앞에 와야 한다.
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(bgColor)
            .edgesIgnoringSafeArea(.all)
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
