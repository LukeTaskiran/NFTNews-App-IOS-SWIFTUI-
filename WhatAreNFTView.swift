//
//  WhatAreNFTView.swift
//  NFTNews
//
//  Created by Luke Taskiran on 2022-01-14.
//
import SwiftUI
import GoogleMobileAds
struct WhatAreNFTView: View {
   // @State var interstitial: GADInterstitialAd?
    var body: some View {
        NavigationView{
            VStack{
        ScrollView{
            Text("Why are NFTs important?")
                .font(Font.custom("Futura", size: 25.0))
                .bold()
                .multilineTextAlignment(.center)
            Text("\tYou can think of NFTs as being kind of like certificates of authenticity for digital artifacts. They’re currently being used to sell a huge range of virtual collectibles, including:\n-NBA virtual trading cards\n-Music and video clips from EDM stars like Deadmau5 \nVideo art by Grimes\n-A tweet by Dallas Mavericks owner and entrepreneur Mark Cuban\n\n      Virtual real estate in a place called DecentralandAs as Bitcoin and other crypto has boomed in popularity over the last year, NFTs have also soared — growing to an estimated $338 million in 2020. Each NFT is stored on an open blockchain (often Ethereum’s) and anyone interested can track them as they’re created, sold, and resold. Because they use smart contract technology, NFTs can be set up so that the original artist continues to earn a percentage of all subsequent sales.\n\n\tAlong the way, NFTs have raised fascinating philosophical questions about the nature of ownership. Wondering why digital artifacts that can be endlessly copied and pasted have any value at all? Proponents would point out that most kinds of collecting isn’t based on inherent value. Old comic books were produced for pennies’ worth of ink and paper. Rare sneakers are often made out of the same materials as worthless ones. Some paintings hang in the Louvre, others end up in thrift shops.\n\n\tAs the collector who sold the $6.6 million Beeple piece noted, you can take a nice picture of the Mona Lisa, but it’s not the Mona Lisa. “It doesn’t have any value because it doesn’t have the provenance or the history of the work,” said the Beeple fan. “The reality here is that this is very, very valuable because of who is behind it.").font(Font.custom("Futura", size: 14.0)).padding()
            
            Text("What does \n“non-fungible” mean?")
                .font(Font.custom("Futura", size: 25.0))
                .bold()
                .multilineTextAlignment(.center)
            
            Text("\tEvery bitcoin is worth as much as every other bitcoin. NFTs, on the other hand, are all unique. “Fungibility” refers to goods or assets that are all the same and can be swapped interchangeably. A dollar bill is another perfect example — each is worth exactly one dollar.\n\n\tConcert tickets, by contrast, are non-fungible. Even if every Radiohead ticket is the same price, they aren’t directly exchangeable. Each represents a specific seat and a specific date — no other ticket will have those exact characteristics.").font(Font.custom("Futura", size: 14.0)).padding()
            
            Text("What can you do with NFTs once you buy them?")
                .font(Font.custom("Futura", size: 25.0))
                .bold()
                .multilineTextAlignment(.center)
            
            Text("\tGood question! Some people display their digital artworks on large monitors. Some buy virtual real estate (via NFT, of course) in which they’re able to build virtual galleries or museums. You can also roam virtual worlds like Decentraland and check out other people’s collections. For some fans, the appeal is in the buying and selling — much like any other asset class. (The collector who sold the $6.9 million Beeple paid less than $70,000 for it in October 2020).\n\n\tMore and more mainstream artists have also gotten involved in the space — especially from the world of music. In early March, Nashville band Kings of Leon announced their next album would arrive in the form of multiple NFTs. Depending on which a fan buys, various perks will be unlocked — like alternate cover art, limited-edition vinyl, and even a “golden ticket” to a VIP concert experience. ").font(Font.custom("Futura", size: 14.0)).padding()
        }
                //BannerAd().frame(width: .infinity, height: 100, alignment: .center)
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
                     /*       ToolbarItemGroup(placement: .navigationBarTrailing) {
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
                            }*/
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

struct WhatAreNFTView_Previews: PreviewProvider {
    static var previews: some View {
        WhatAreNFTView()
    }
}
