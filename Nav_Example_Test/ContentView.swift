//
//  ContentView.swift
//  Nav_Example_Test
//
//  Created by David on 2/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var isActive : Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("It's a small world, afterall...")
                    .accessibility(identifier: "smallworld")
                Spacer()
                NavigationLink(
                    destination: ContentView2(rootIsActive: self.$isActive),
                    isActive: self.$isActive
                ) {
                    Text("Hello, World!")
                        .accessibility(identifier: "button1")
                    
                }
                .isDetailLink(false)
                .navigationBarTitle("Tap-Root")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {}) {
                            Image(systemName: "bell.fill")
                                .padding(.horizontal)
                        }
                        .accessibility(identifier: "bell")
                    }
                    ToolbarItem(placement: .bottomBar) {
                        Button(action: {print("button Bing Me tapped")}) {
                            Text("Bing Me")
                                .padding(.horizontal)
                        }
                        .accessibility(identifier: "bingme")
                    }
                }
                Text("accessibilityIdentifier = button1")
                    .fontWeight(.light)
                    .font(.footnote)
                    .italic()
                Spacer()
            }
        }
    }
}

struct ContentView2: View {
    @Binding var rootIsActive : Bool

    var body: some View {
        NavigationLink(destination: ContentView3(shouldPopToRootView: self.$rootIsActive)) {
            Text("Hello, World #2!")
                .accessibility(identifier: "button2")
        }
        .isDetailLink(false)
        .navigationBarTitle("Two")
    }
}

struct ContentView3: View {
    @Binding var shouldPopToRootView : Bool

    var body: some View {
        VStack {
            Text("Hello, World #3!")
            Button (action: { self.shouldPopToRootView = false } ){
                Text("Pop to root")
                    .accessibility(identifier: "button3")
            }
        }.navigationBarTitle("Three")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
