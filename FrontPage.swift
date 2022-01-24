//
//  FrontPage.swift
//  NFTNews
//
//  Created by Luke Taskiran on 2022-01-11.
//

import SwiftUI

struct FrontPage: View {
    
    @State private var animateGradient = false
    @State var tap = false
    var body: some View {
        
        VStack(spacing: 30) {
            
            HomeCardView()
                    
            Text("Welcome to NFTNews")
                .font(Font.custom("Futura", size: 25.0))
                .bold()
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            Text("Up-to-date information and trending data on NFT's. Newest Projects, Crypto Market, Trending Items, and more. Internet is Required for full access ")
                .font(Font.custom("Futura", size: 17.0))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            VStack {
                Image("NFTtransparent").resizable()
            }
            .frame(width: 128, height: 128)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.0001922522367, green: 0.5740824798, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.1616644322, blue: 0.9475895275, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(RoundedRectangle(cornerRadius: 30))
            .shadow(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(tap ? 0.6 : 0.3), radius: tap ? 20 : 10, x: 0, y: tap ? 10 : 20)
            .scaleEffect(tap ? 1.2 : 1)
            .animation(.spring(response: 0.4, dampingFraction: 0.6))
            .onTapGesture {
                tap = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                    tap = false
                    
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                   
                    goHome()
                }
            }
            
        
        }.multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(colors: [.red, .indigo], startPoint: animateGradient ? .topLeading : .bottomLeading, endPoint: animateGradient ? .topTrailing : .topTrailing)
                            .ignoresSafeArea()
                            .onAppear {
                                withAnimation(.linear(duration: 2.0).repeatForever(autoreverses: true)) {
                                    animateGradient.toggle()
                                }
                            }
)
            .edgesIgnoringSafeArea(.all)
            .animation(.spring(response: 10, dampingFraction: 0.5 , blendDuration: 0))
        
            
    }
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: HomePage())
            
            window.makeKeyAndVisible()
        }
    }
}

struct FrontPage_Previews: PreviewProvider {
    static var previews: some View {
        FrontPage()
    }
}
struct PayButton: View {
    @EnvironmentObject var appState: AppState
    @GestureState var tap = false
    @State var press = false
    @State var hasTimeElapsed = false
    var body: some View {
        ZStack {
            
            Image("NFTtransparent")
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .opacity(press ? 1 : 1)
                .scaleEffect(press ? 0 : 1)
            
            
            Image("NFTtransparent")
                .clipShape(Rectangle().offset(y: tap ? 0 : 50))
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .animation(.easeInOut)
                .opacity(press ? 0 : 1)
                .scaleEffect(press ? 0 : 1)
            
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 44, weight: .light))
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .opacity(press ? 1 : 0)
                .scaleEffect(press ? 1 : 0)
                
            
            
        }
        .frame(width: 120, height: 120)
        .background(
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(press ? #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) : #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)), Color(press ? #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) : #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
                Circle()
                    .stroke(Color.clear, lineWidth: 10)
                    .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 3, x: -5, y: -5)
                
                Circle()
                    .stroke(Color.clear, lineWidth: 10)
                    .shadow(color: Color(press ? #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 3, x: 3, y: 3)
            }
            
        )
            .clipShape(Circle())
        .overlay(
            Circle()
                .trim(from: tap ? 0.001 : 1, to: 1)
                .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .frame(width: 88, height: 88)
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.3), radius: 5, x: 3, y: 3)
                .animation(.easeInOut)
            
        )
            .shadow(color: Color(press ? #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 20, x: -20, y: -20)
            .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
            .scaleEffect(tap ? 1.2 : 1)
            .gesture(
                LongPressGesture().updating($tap) { currentState, gestureState, transaction in
                    gestureState = currentState
                    
                    
                }
                .onEnded { value in
                    self.press.toggle()
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        goHome()
                    }
                    
                    
                }
                
        )
        
        
    }
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: HomePage())
            
            window.makeKeyAndVisible()
        }
    }
    
    }

enum ImageEnum: String {
    case img0 = "0"
    case img1 = "1"
    case img2 = "2"
    case img3 = "3"
    case img4 = "4"
    case img5 = "5"
    case img6 = "6"
    case img7 = "7"
    

    func next() -> ImageEnum {
        switch self {
            case .img0: return .img1
            case .img1: return .img2
            case .img2: return .img3
            case .img3: return .img4
            case .img4: return .img5
            case .img5: return .img6
            case .img6: return .img7
            case .img7: return .img0
        
        
    }
}
}
struct HomeCardView: View {
    @State private var img = ImageEnum.img0
        @State private var fadeOut = false
        var body: some View {
            Image(img.rawValue).resizable().frame(width: 300, height: 300)
                .cornerRadius(30)
                .opacity(fadeOut ? 0 : 1)
                .animation(.easeOut(duration: 0.15))    // animatable fade in/out
                .onTapGesture{
                    self.fadeOut.toggle()                 // 1) fade out

                    // delayed appear
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.19) {
                        withAnimation {
                            self.img = self.img.next()    // 2) change image
                            self.fadeOut.toggle()         // 3) fade in
                        }
                    }
                }
        }
}
