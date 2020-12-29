//
//  ContentView.swift
//  athkar
//
//  Created by mohamad on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State var Counter :[String] = ["0","0","0"]
    var body: some View {
        VStack{
            ThekerButton(counter: $Counter[0],lalbel: "سبحان الله")
            ThekerButton(counter: $Counter[1], lalbel: "الحمدلله")
            ThekerButton(counter: $Counter[2], lalbel: "الله أكبر")
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

struct ThekerButton: View {
    @Binding var counter : String
    let lalbel : String
    var body: some View {
        HStack(){
            Text(lalbel)
                .font(.largeTitle)
            Button(action:  {
                        self.counter  = String(Int(self.counter)! + 1)
            }, label: {
                Text(counter)
            })
                .frame(width : 100 , height:100)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding()
        }
    }
}
