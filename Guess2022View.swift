//
//  Guess2022View.swift
//  NFTNews
//
//  Created by Luke Taskiran on 2022-01-14.
//

import SwiftUI
import GoogleMobileAds
struct Guess2022View: View {
   // @State var interstitial: GADInterstitialAd?
    var body: some View {
        NavigationView{
            VStack{
        ScrollView{
            Text("NFT Predictions for 2022 #1: Blockchain gaming will emerge as the killer use case for NFTs")
                .font(Font.custom("Futura", size: 20.0))
                .bold()
                .multilineTextAlignment(.center)
            Text("\tThis year, the transaction volume of multiple blockchain gaming projects surpassed $1 billion. According to a report by Forte.io, millions of people played blockchain-based games in 2021 alone. This sector is now widely considered to be a key driver of blockchain adoption for years to come. We believe NFTs will play a key role in this adoption.\n\n\tHere’s why: If the advent of the play-to-earn phenomenon has shown us anything, it’s that the line between the “virtual” and “real” economies is thinner than it has ever been. And soon, that line may not exist at all. Projects like AxieInfinity, Yield Guild Games, Zed Run, and others have shown us that it is possible to earn money in the metaverse. In some cases, that money can be life-changing.\n\n\tAs play-to-earn opportunities continue to expand, we believe that more people will start to spend more of their time in online gaming environments. And as this trend continues, NFTs will play a key role in tying the virtual economy to the physical world. This is because NFTs are crucial for generating and retaining unique value in digital spaces. Cryptocurrencies act as a means of exchange, sure. But without NFTs, none of the things we own or create in virtual spaces can be considered distinct or self-sovereign.\n\n\tSo it doesn’t matter what kind of gaming environment you’re in – if there’s an opportunity to build and retain value, there’s an opportunity for NFTs. Currently, this value is mostly associated with virtual objects and avatars, such as weapons, spaceships, and character outfits. But in the future, gaming NFTs will also play an important role in gaming identity, cross-chain reputation, and much more.").font(Font.custom("Futura", size: 14.0)).padding()
            
            Text("NFT Prediction #2: NFTs will play a major role in new kinds of investing")
                .font(Font.custom("Futura", size: 20.0))
                .bold()
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            
            Text("\tSince the advent of bitcoin, people have used blockchain technology to make huge strides in creating new financial systems based on decentralized technology. This has been truly revolutionary in many respects. People everywhere can access new wealth-building opportunities. And, many unbanked populations can access financial services for the first time.\n\n\tHowever, despite this progress, investment gatekeeping still exists in the blockchain world. Crypto-based fundraising methods like ICOs, IEOs, and STOs have high starting costs. This prevents many projects from accessing the capital they need. And because of the legal and logistical challenges associated with traditional token raises, many projects choose to go the venture capital route. The problem with that, however, is that the average person is prevented from accessing a number of high-growth opportunities.\n\n\tBut NFTs can grant more people access to better investment opportunities – and provide startups with a new path to funding. New kinds of fundraising methods, like GamesPad’s Initial NFT Offering (INO), provide an efficient and low-cost way for projects to raise capital, with neither the gatekeeping of traditional investing nor the challenges of other kinds of token raises. ").font(Font.custom("Futura", size: 14.0)).padding()
            
            Text("NFT Prediction #3: Retail companies will play a huge role in the future of NFTs")
                .font(Font.custom("Futura", size: 25.0))
                .bold()
                .multilineTextAlignment(.center)
            
            Text("\tWe predict that NFT market growth will continue as the technology expands into the mainstream over the next year. A lot of top retail companies are getting into the space, including Prada, LVMH, Adidas, PUMA, and many more.\n\n\tAs more retail companies enter the Web3 space, NFTS will enable new kinds of partnerships between major brands. These collaborations will span across both virtual and physical products. For example, clothing brands can offer their customers both physical goods and virtual wearables to be worn in the metaverse. We’re already seeing this with platforms like HighStreet.\n\n\tUltimately, we believe that these kinds of partnerships will fuel the growth of blockchain gaming and other Metaversian experiences. With the growing popularity of flexible platforms like The Sandbox and Decentraland, the variety of experiences people can have in virtual spaces is continuing to grow. The metaverse is expanding beyond blockchain-based gaming to blockchain-based social, work, and creative environments.\n\n\tIn conclusion, NFT Predictions for 2022… The bottom line is that NFTs are not going anywhere – this year’s exponential growth curve was just the beginning of something much larger. And as the use cases for NFT tech continue to develop, even the most doubtful NFT skeptics may own a few tokens themselves by year’s end.").font(Font.custom("Futura", size: 14.0)).padding()
            
            Text("Predictions on this Page may change later in the year... ;)")
                .font(Font.custom("Futura", size: 25.0))
                .bold()
                .multilineTextAlignment(.center)
                .padding()
        }
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
                          /*  ToolbarItemGroup(placement: .navigationBarTrailing) {
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
                           */
                                        
                                
                            
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


struct Guess2022View_Previews: PreviewProvider {
    static var previews: some View {
        Guess2022View()
    }
}
