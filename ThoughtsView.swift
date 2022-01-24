//
//  ThoughtsView.swift
//  NFTNews
//
//  Created by Luke Taskiran on 2022-01-14.
//

import SwiftUI
import WebKit
import GoogleMobileAds
struct ThoughtsView: View {
   // @State var interstitial: GADInterstitialAd?
    @State private var showWebView = false
    var body: some View {
        NavigationView{
            VStack{
            WebView(url: URL(string: "https://upcomingnft.art/")!)
            
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
                     /*   ToolbarItemGroup(placement: .navigationBarTrailing) {
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
struct ThoughtsView_Previews: PreviewProvider {
    static var previews: some View {
        ThoughtsView()
    }
}
struct WebView: UIViewRepresentable {
 
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
