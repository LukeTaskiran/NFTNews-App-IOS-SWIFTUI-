//
//  HowToInvestView.swift
//  NFTNews
//
//  Created by Luke Taskiran on 2022-01-14.
//

import SwiftUI
import GoogleMobileAds
struct HowToInvestView: View {
  //  @State var interstitial: GADInterstitialAd?
    var body: some View {
        NavigationView{
            VStack{
            VStack(){
                Text("Youtube Link's for help")
                    .font(Font.custom("Futura", size: 25.0))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                YoutubeTab().background(Color(#colorLiteral(red: 0.2484454047, green: 0.2462328387, blue: 0.2499076947, alpha: 1))).cornerRadius(40)
                Text("Wallets for NFT's")
                    .font(Font.custom("Futura", size: 25.0))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
               
                WalletTab().background(Color(#colorLiteral(red: 0.2484454047, green: 0.2462328387, blue: 0.2499076947, alpha: 1))).cornerRadius(40)
                
            }.padding().offset(y:-40)
               // BannerAd().frame(width: .infinity, height: 100, alignment: .center)
            }
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button {
                           goHome()
                        } label: {
                            Image(systemName: "arrow.backward.square.fill")
                                .scaleEffect(1.5).padding()
                                
                        }
                    }
                    /*    ToolbarItemGroup(placement: .navigationBarTrailing) {
                            Text("Reward Me").foregroundColor(Color.blue).bold()
                            
                            Button {
                                let request = GADRequest()
                                        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-5472498112928020/1367713561",
                                                                    request: request,
                                                          completionHandler: { [self] ad, error in
                                                            if let error = error {
                                                              return
                                                            }
                                                 // Change these two lines of code
                                                
                                                 // To...
                                                 interstitial = ad
                                                 let root = UIApplication.shared.windows.first?.rootViewController
                                  self.interstitial!.present(fromRootViewController: root!)
                                                          }
                                        )
                            } label: {
                                Image(systemName: "gift.fill")
                                    .scaleEffect(1.5)
                                    .offset(y:-2)
                                    
                                    
                            }
                        } */
                    }
                }.navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationViewStyle(StackNavigationViewStyle())
        }
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: HomePage())
            
            window.makeKeyAndVisible()
        }
    }
        
    }


struct HowToInvestView_Previews: PreviewProvider {
    static var previews: some View {
        HowToInvestView()
    }
}

struct YoutubeTab: View {
    var body: some View {
        TabView {
            Youtube1()
          Youtube2()
          Youtube3()
        }
        .cornerRadius(30)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        
        
      
}
}
struct Youtube1: View {
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button{
            openURL(URL(string: "https://www.youtube.com/watch?v=pJFQeF9vV1I")!)
            
        } label: {
            Image("maxyyy").resizable().scaledToFit().padding()
        }
       
}
}
}
struct Youtube2: View {
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button{
            openURL(URL(string: "https://www.youtube.com/watch?v=QfDGFJwPbsE")!)
            
        } label: {
            Image("maxy").resizable().scaledToFit().padding()
        }
       
}
}
}
struct Youtube3: View {
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button{
            openURL(URL(string: "https://www.youtube.com/watch?v=bBKUU2_0uh4")!)
            
        } label: {
            Image("maxyy").resizable().scaledToFit().padding()
        }
       
}
}
}

struct Wallet1: View {
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button{
            openURL(URL(string: "https://metamask.io/")!)
            
        } label: {
            Image("metamask-logo").resizable().scaledToFit().padding()
        }
       
}
}
}
struct Wallet2: View {
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button{
            openURL(URL(string: "https://www.coinbase.com/")!)
            
        } label: {
            Image("coinbase").resizable().scaledToFit().padding()
        }
       
}
}
}
struct Wallet3: View {
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack{
        Button{
            openURL(URL(string: "https://alphawallet.com/")!)
            
        } label: {
            Image("alpha").resizable().scaledToFit().padding()
        }
       
}
}
}
struct WalletTab: View {
    var body: some View {
        TabView {
          Wallet1()
          Wallet2()
          Wallet3()
        }
        .cornerRadius(30)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .frame(width: 200)
      
}
}
