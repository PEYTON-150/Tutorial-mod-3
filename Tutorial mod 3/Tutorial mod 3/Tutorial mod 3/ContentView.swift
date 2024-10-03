//
//  ContentView.swift
//  Tutorial mod 3
//
//  Created by Nicolas Reilly on 6/1/23.
//

import SwiftUI

struct ContentView: View {
    
        @State var theview: Bool = false
        @State var photo: String = "shaq"
        @State var message: String = "This is an old meme of sleeping shaq"
    var body: some View {
        VStack{
            Text("These are 2 memes one I created and one from the internet")

        }
        HStack{
            
            Label{
                Text(message)
            }
        icon:{ Image(photo).resizable().scaledToFit()
                
            }
                 VStack{
                
                
                Button(action: {
                                if theview {
                                    message = "This is an old meme of sleeping shaq"
                                    photo = "shaq"
                                    theview = false
                                } else {
                                    message = "This is an edit I made a few years ago"
                                    photo = "zach"
                                    theview = true
                                }
                            }, label: {
                                Text("Tap For Surprise!")
                                    .foregroundColor(Color.red)
                                    .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                            })
            }
            }
        
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
