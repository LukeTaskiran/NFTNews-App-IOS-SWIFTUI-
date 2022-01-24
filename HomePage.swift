//
//  HomePage.swift
//  NFTNews
//
//  Created by Luke Taskiran on 2022-01-11.
//

import SwiftUI

struct HomePage: View {
    
    var body: some View {
        NavigationView {
        VStack{
            VStack{
        HStack(spacing: 10){
            NavigationLink(destination: WhatAreNFTView()) {
            Card1()
            }
            NavigationLink(destination: HowToInvestView()) {
            Card2() 
            }
        }.scaledToFit()
        HStack(spacing: 10){
            NavigationLink(destination: CryptoMarketView()) {
                Card3()
            }
            NavigationLink(destination: TrendingNFTView()) {
                Card4()
            }
        }.scaledToFit()
        HStack(spacing: 10){
            NavigationLink(destination: Guess2022View()) {
                Card6()
            }
            NavigationLink(destination: ThoughtsView()) {
                Card7()
            }
        }.scaledToFit()
                VStack{
                CardTab().frame(maxWidth: UIScreen.main.bounds.width,
                                maxHeight: 80).offset(y:5).scaleEffect(1.1)
                }
                
            }
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: UIScreen.main.bounds.width,
                                   maxHeight: UIScreen.main.bounds.height)
                            .padding(.vertical)
                            .offset(y:-50)
                            .scaleEffect(1.03)
                            
            
            
            
        }.frame(maxWidth: UIScreen.main.bounds.width,
                maxHeight: UIScreen.main.bounds.height)
        }.navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle(Text("Back"))
            .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

struct Card1: View {
    var body: some View {
        
        ZStack{
            Image("NFT").resizable().scaledToFit()
        Text("What are \n NFT's?")
                .font(Font.custom("Futura", size: 50.0))
                .bold()
                .foregroundColor(Color.white)
                .minimumScaleFactor(0.01)
                .padding()
        }.cornerRadius(30)
            .multilineTextAlignment(.center)
}
    
}
struct Card2: View {
    var body: some View {
       
        ZStack{
            Image("NFT9").resizable().scaledToFit()
        Text("How to \n Invest ")
                .font(Font.custom("Futura", size: 50.0))
                .bold()
                .foregroundColor(Color.white)
                .lineLimit(2)
                .minimumScaleFactor(0.01)
                .padding()
        }.cornerRadius(30)
            .multilineTextAlignment(.center)
}
    
}
struct Card3: View {
    var body: some View {
        ZStack{
            Image("NFT6").resizable().scaledToFit()
        Text("Crypto\nMarket")
                .font(Font.custom("Futura", size: 50.0))
                .bold()
                .foregroundColor(Color.white)
                .minimumScaleFactor(0.01)
                .padding()
        }.cornerRadius(30)
            .multilineTextAlignment(.center)
}
}
struct Card4: View {
    var body: some View {
        ZStack{
            Image("NFT4").resizable().scaledToFit()
        Text("Trending \n NFT's")
                .font(Font.custom("Futura", size: 50.0))
                .bold()
                .foregroundColor(Color.white)
                .minimumScaleFactor(0.01)
                .padding()
        }.cornerRadius(30)
            .multilineTextAlignment(.center)
}
}
struct Card5: View {
    var body: some View {
        ZStack{
            Image("NFT5").resizable().scaledToFit()
        
        }.cornerRadius(30)
            .multilineTextAlignment(.center)
            .scaleEffect(0.9)
}
}
struct Card6: View {
    var body: some View {
        ZStack{
            Image("NFT7").resizable().scaledToFit()
            Text("Guesses \nfor 2022")
                .font(Font.custom("Futura", size: 50.0))
                .bold()
                .foregroundColor(Color.white)
                .minimumScaleFactor(0.01)
                .padding()
        }.cornerRadius(30)
            .multilineTextAlignment(.center)
            
}
}
struct Card7: View {
    var body: some View {
        ZStack{
            Image("NFT8").resizable().scaledToFit()
            Text("Upcoming\nReleases")
            .font(Font.custom("Futura", size: 50.0))
            .bold()
            .foregroundColor(Color.white)
            .minimumScaleFactor(0.01)
            .padding()
        }.cornerRadius(30)
            .multilineTextAlignment(.center)
            
}
}
struct Card8: View {
    var body: some View {
        ZStack{
            Image("NFT5").resizable().scaledToFit().cornerRadius(40)
        
        }.cornerRadius(30)
            .multilineTextAlignment(.center)
            .scaleEffect(0.9)
}
}
struct CardTab: View {
    var body: some View {
        TabView {
          OpenSeaView()
          MintableView()
          CryptoView()
        }
        .cornerRadius(20)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
      
}
}

struct OpenSeaView: View {
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button{
            openURL(URL(string: "https://opensea.io/")!)
            
        } label: {
            Image("unnamed").resizable().scaledToFit().padding()
        }
       
}
}
}
struct MintableView: View {
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button{
            openURL(URL(string: "https://mintable.app/")!)
            
        } label: {
            Image("mintable").resizable().scaledToFit().padding()
        }
       
}
}
}
struct CryptoView: View {
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button{
            openURL(URL(string: "https://crypto.com/nft/marketplace")!)
            
        } label: {
            Image("crypto").resizable().scaledToFit().padding()
        }
       
}
}
}
