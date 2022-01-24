//
//  CryptoMarketView.swift
//  NFTNews
//
//  Created by Luke Taskiran on 2022-01-14.
//

import SwiftUI
import GoogleMobileAds
struct CryptoMarketView: View {
   // @State var interstitial: GADInterstitialAd?
    @State private var showWebView = false
    var body: some View {
        NavigationView{
            VStack{
            WebView(url: URL(string: "https://coinmarketcap.com/")!)
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

struct CryptoMarketView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoMarketView()
    }
}
struct BannerAd: UIViewRepresentable{
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    func makeUIView(context: Context) ->  GADBannerView{
        let adView = GADBannerView(adSize: GADAdSizeBanner)
        adView.adUnitID = "ca-app-pub-5472498112928020/5355044127"
        adView.rootViewController =  UIApplication.shared.getRootViewController()
        adView.delegate = context.coordinator
        adView.load(GADRequest())
        return adView
        
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    class Coordinator: NSObject, GADBannerViewDelegate{func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
        print("bannerViewDidReceiveAd")
      }

      func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
        print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
      }

      func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
        print("bannerViewDidRecordImpression")
      }

      func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
        print("bannerViewWillPresentScreen")
      }

      func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
        print("bannerViewWillDIsmissScreen")
      }

      func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
        print("bannerViewDidDismissScreen")
      }}
}


extension UIApplication{
    func getRootViewController()->UIViewController{
        guard let screen = self.connectedScenes.first as? UIWindowScene else{
            return .init()
        }
        guard let root = screen.windows.first?.rootViewController else{
            return .init()
        }
        return root
    }
}
