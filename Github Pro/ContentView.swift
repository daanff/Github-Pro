//
//  ContentView.swift
//  Github Pro
//
//  Created by daanff on 2021-08-08.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack(alignment: .leading){
            CircleView()
            HeaderLabels()
                .padding(.bottom, 8)
            FeaturesView()
            HStack{
                Spacer()
                Button(action: {
                    // do stuff
                }, label: {
                    Text("$3.99 per month")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .cornerRadius(25)
                })
                Spacer()
            }
 
            HStack{
                Spacer()
                Link("Terms of Service", destination: URL(string: "https://github.com")!)
                    .foregroundColor(Color.gray)
                    .padding(3)
                Spacer()
                Link("Privacy Policy", destination: URL(string: "https://github.com")!)
                    .foregroundColor(Color.gray)
                    .padding(3)
                Spacer()
                Link("Details", destination: URL(string: "https://github.com")!)
                    .foregroundColor(Color.gray)
                    .padding(3)
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}

struct FeaturesView: View {
    let features: [String] = [
        "GitHub Support via email",
        "Required pull request reviewers",
        "Multiple pull request reviewers",
        "Auto-linked references",
        "GitHub Pages",
        "Wikis",
        "Protexted branches",
        "Code owners",
        "Repository insights graphs:Pulse, contributors, traffic, commits, code frequency, network, and forks"

    ]
    var body: some View{
        ScrollView(.vertical){
            ForEach(features, id: \.self){feature in
                HStack{
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(Color(UIColor.systemGray))
                        .padding(.trailing, 6)
                    Text(feature)
                        .opacity(0.7)
                        .font(.system(size: 22,weight: .semibold, design: .default))
                    Spacer()
                }
                .padding(.top, 6)
                .padding(.leading, 4)
                .padding(.trailing, 4)
                .padding(.bottom, 4)
            }
        }
    }
}
struct HeaderLabels: View {
    var body: some View{
        Text("GitHub Pro")
            .font(.system(size: 32,weight: .bold, design: .default))
        Text("Get advanced tools for your private repositoryes with GitHub Pro.")
            .opacity(0.7)
            .font(.system(size: 22,weight: .semibold, design: .default))
            .padding(.top, 6)
    }
}

struct CircleView: View {
    var body: some View{
        ZStack{
            Circle()
                .frame(width: 80, height: 80)
                .foregroundColor(Color.purple)
            
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
