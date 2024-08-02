import SwiftUI

struct ContentView: View {
    @State private var imageName1 = "heart"
    @State private var imageName2 = "heart"
    @State private var imageName3 = "heart"
    @State private var imageName4 = "heart"
    @State private var color1: Color = .white
    @State private var color2: Color = .white
    @State private var color3: Color = .white
    @State private var color4: Color = .white
    let images = ["wow", "woww", "wowww", "wowwww", "wowwwww"]
        
    @State private var currentImageIndex = 0
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    @State var count = 0
    var body: some View {
        NavigationStack {
            ZStack {
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.black, Color.gray]),
//                    center: .center,
//                    startRadius: 50,
//                    endRadius: 500
//                )
                Color(red:25/255 , green: 25/255, blue: 25/255)
                .ignoresSafeArea()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack() {
                        Text("Scholargram")
                            .font(.custom("Lobster 1.4", size: 35))
                            .foregroundColor(Color.white)
                            .padding(.top, 120)
                            .padding(.top, -120)
                            .position( x: 110, y: 14)
                        
                        Divider()
                            .background(Color.gray.opacity(0.5))
                            .frame(height: 1)
                        
                            .onAppear {
                                for family in UIFont.familyNames.sorted() {
                                    print("Family: \(family)")
                                    let names = UIFont.fontNames(forFamilyName: family)
                                    for fontName in names {
                                        print("- \(fontName)")
                                    }
                                }
                            }
                        
                        HStack{
                            Image("me")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 45, height: 45)
                            
                                .clipShape(Circle())
                            //                                .position(x: 40, y : 20)
                            
                            
                            Text("manya malhotra")
                                .font(.title3)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 35.0)
                                .foregroundStyle(.white)
                        }
                        .position(x: 135, y: 25)
                        
                        Divider()
                            .background(Color.gray.opacity(0.5))
                            .frame(height: 1)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 2) {
                                Image("scholars")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 400.0, height: 350.0)
                                
                                Image("groupq")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 400.0, height: 350.0)
                                
                                Image("groupa")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 400.0, height: 350.0)
                            }
                            .position(x: 560,y : 110)
                            .padding(.horizontal, 35.0)
                            
                            
                        }
                        
                        VStack(alignment: .leading, spacing: 5) {
                            HStack{
                                
                                //                                Button(action: {print("like button tapped")}) {
                                //                                    Image(systemName: "heart")
                                //                                        .foregroundColor(.white)
                                //                                }
                                
                                Button{
                                    self.count += 1
                                    if count%2 == 0 {
                                        imageName2 = "heart"
                                        color2 = .white
                                        print("unliked")
                                    } else {
                                        imageName2 = "heart.fill"
                                        color2 = .pink
                                        print("liked")
                                    }
                                } label: {
                                    Image(systemName: imageName2)
                                    //                                                 .resizable()
                                    //                                                 .aspectRatio(contentMode: .fit)
                                    //                                                 .frame(width: 100, height: 100)
                                        .foregroundColor(color2)
                                }
                                
                                //                                    }
                                //                                  }
                                
                                
                                Button(action: {print("comment button tapped")}) {
                                    Image(systemName: "message")
                                        .foregroundColor(.white)
                                }
                            }.padding(.top, -105)
                                .padding(.leading, 10)
                            
                            //                            .padding(.top, -105)
                            //                            .padding(.leading, -100)
                            
                            HStack(alignment: .top, spacing: 4)  {
                                Text("manya")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundStyle(.white)
                                Text(" it was such fun experience with you guys🫶🏼, I got to learn things from you all and had such a great time helping you all solve your problems! not to forget the brain breaks and the culture of tech sessions💗")
                                    .font(.headline)
                                    .fontWeight(.regular)
                                    .foregroundStyle(.white)
                            }
                            .padding(.horizontal, 10)
                            .padding(.top, -90.0)
                        }
                    }
                    
                    Divider()
                        .background(Color.gray.opacity(0.5))
                        .frame(height: 1)
                    
                    //                        Text("⭐️FINAL PROJECT GROUPS⭐️")
                    //                            .font(.title2)
                    //                            .fontWeight(.heavy)
                    //                            .foregroundColor(Color.white)
                    //                            .padding(.top)
                    HStack{
                        Image("pearl")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45, height: 45)
                        
                            .clipShape(Circle())
                        //                                .position(x: 40, y : 20)
                        
                        
                        Text("pearl nyax")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 35.0)
                            .foregroundStyle(.white)
                    }
                    .position(x: 105, y: 25)
                    Divider()
                        .background(Color.gray.opacity(0.5))
                        .frame(height: 1)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 2) {
                            Image("group1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400.0, height: 350.0)
                            
                            Image("group2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400.0, height: 350.0)
                            
                            Image("group3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400.0, height: 350.0)
                            
                            Image("group4")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400.0, height: 350.0)
                            
                            Image("group5")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400.0, height: 350.0)
                            
                            Image("group6")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400.0, height: 350.0)
                            
                        }
                        .position(x: 1175,y : 110)
                        .padding(.leading, 35.0)
                        .padding(.trailing, -10.0)
                        //                            .padding(.bottom)
                        
                        
                        
                        
                        
                        
                    }
                    VStack(alignment: .leading, spacing: 5) {
                        HStack{
                            
                            //                                Button(action: {print("like button tapped")}) {
                            //                                    Image(systemName: "heart")
                            //                                        .foregroundColor(.white)
                            //                                }
                            
                            Button{
                                self.count += 1
                                if count%2 == 0 {
                                    imageName1 = "heart"
                                    color1 = .white
                                    print("unliked")
                                } else {
                                    imageName1 = "heart.fill"
                                    color1 = .pink
                                    print("liked")
                                }
                            } label: {
                                Image(systemName: imageName1)
                                //                                                 .resizable()
                                //                                                 .aspectRatio(contentMode: .fit)
                                //                                                 .frame(width: 100, height: 100)
                                    .foregroundColor(color1)
                            }
                            
                            //                                    }
                            //                                  }
                            
                            
                            Button(action: {print("comment button tapped")}) {
                                Image(systemName: "message")
                                    .foregroundColor(.white)
                            }
                        }.padding(.top, -105)
                            .padding(.leading, 10)
                        
                        HStack(alignment: .top, spacing: 4)  {
                            Text("pearl")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                            Text("💐I have had the best time being an IA for you guys, you are all incredibly bright, talented and humorous people.💫 What most stood out to me was your impenetrable spirit and persistence when faced with any challenges along the way, you all have very bright futures ahead of you whichever path you choose💐")
                                .font(.headline)
                                .fontWeight(.regular)
                                .foregroundStyle(.white)
                        }
                        .padding(.horizontal, 10)
                        .padding(.top, -90.0)
                    }
                    
                    Divider()
                        .background(Color.gray.opacity(0.5))
                        .frame(height: 1)
                    
                    
                    HStack{
                        Image("img1")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45, height: 45)
                        
                            .clipShape(Circle())
                        //                                .position(x: 40, y : 20)
                        
                        
                        
                        Text("tracey bullington")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 35.0)
                            .foregroundStyle(.white)
                    }
                    .position(x: 130, y: 25)
                    Divider()
                        .background(Color.gray.opacity(0.5))
                        .frame(height: 1)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 2) {
                            Image("img")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Use .fill to ensure the entire frame is filled
                                .frame(width: 400.0, height: 350.0)
                                .clipped() // Clipping is optional, to avoid any overflow
                            
                            Image("img2")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Use .fill to ensure the entire frame is filled
                                .frame(width: 400.0, height: 350.0)
                                .clipped() // Clipping is optional, to avoid any overflow
                            
                            Image("img3")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Use .fill to ensure the entire frame is filled
                                .frame(width: 400.0, height: 350.0)
                                .clipped() // Clipping is optional, to avoid any overflow
                            
                            //
                            
                        }
                        //                            .position(x: 7)
                        .padding(.horizontal, 5.0)
                        .padding(.top, -30)
                        //                            .padding(.bottom)
                        
                        
                        
                        
                        
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 5) {
                        HStack{
                            
                            //                                Button(action: {print("like button tapped")}) {
                            //                                    Image(systemName: "heart")
                            //                                        .foregroundColor(.white)
                            //                                }
                            
                            Button{
                                self.count += 1
                                if count%2 == 0 {
                                    imageName3 = "heart"
                                    color3 = .white
                                    print("unliked")
                                } else {
                                    imageName3 = "heart.fill"
                                    color3 = .pink
                                    print("liked")
                                }
                            } label: {
                                Image(systemName: imageName3)
                                //                                                 .resizable()
                                //                                                 .aspectRatio(contentMode: .fit)
                                //                                                 .frame(width: 100, height: 100)
                                    .foregroundColor(color3)
                            }
                            
                            //                                    }
                            //                                  }
                            
                            
                            Button(action: {print("comment button tapped")}) {
                                Image(systemName: "message")
                                    .foregroundColor(.white)
                            }
                        }.padding(.top, -5)
                            .padding(.leading, 10)
                        
                        HStack(alignment: .top, spacing: 4)  {
                            Text("tracey")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                            Text("✨So proud of everything you all have accomplished in camp!!!!✨I'm so grateful that I've gotten to know this amazing group of coding queens 👑")
                                .font(.headline)
                                .fontWeight(.regular)
                                .foregroundStyle(.white)
                        }
                        .padding(.horizontal, 10)
                        .padding(.top, -5.0)
                    }
                    
                    Divider()
                        .background(Color.gray.opacity(0.5))
                        .frame(height: 1)
                    
                    
                    HStack{
                        Image("smth1")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45, height: 45)
                        
                            .clipShape(Circle())
                        //                                .position(x: 40, y : 20)
                        
                        
                        Text("michelle abt")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 35.0)
                            .foregroundStyle(.white)
                    }
                    .position(x: 115, y: 25)
                    Divider()
                        .background(Color.gray.opacity(0.5))
                        .frame(height: 1)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 2) {
                            Image("pic")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Use .fill to ensure the entire frame is filled
                                .frame(width: 400.0, height: 350.0)
                                .clipped() // Clipping is optional, to avoid any overflow
                            
                            Image("pic1")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Use .fill to ensure the entire frame is filled
                                .frame(width: 400.0, height: 350.0)
                                .clipped() // Clipping is optional, to avoid any overflow
                            
                            Image("pic2")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Use .fill to ensure the entire frame is filled
                                .frame(width: 400.0, height: 350.0)
                                .clipped() // Clipping is optional, to avoid any overflow
                            
                            
                        }
                        .position(x: 570,y : 110)
                        .padding(.leading, 35.0)
                        //                            .padding(.bottom)
                        
                        
                        
                        
                        
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 5) {
                        HStack{
                            
                            //                                Button(action: {print("like button tapped")}) {
                            //                                    Image(systemName: "heart")
                            //                                        .foregroundColor(.white)
                            //                                }
                            
                            Button{
                                self.count += 1
                                if count%2 == 0 {
                                    imageName4 = "heart"
                                    color4 = .white
                                    print("unliked")
                                } else {
                                    imageName4 = "heart.fill"
                                    color4 = .pink
                                    print("liked")
                                }
                            } label: {
                                Image(systemName: imageName4)
                                //                                                 .resizable()
                                //                                                 .aspectRatio(contentMode: .fit)
                                //                                                 .frame(width: 100, height: 100)
                                    .foregroundColor(color4)
                            }
                            
                            //                                    }
                            //                                  }
                            
                            
                            Button(action: {print("comment button tapped")}) {
                                Image(systemName: "message")
                                    .foregroundColor(.white)
                            }
                        }.padding(.top, -70)
                            .padding(.leading, 10)
                        
                        HStack(alignment: .top, spacing: 4)  {
                            Text("michelle")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                            Text(" You all are INCREDIBLE!!💚 It has been so fun watching you learn and grow your coding skills!! So excited to see all your hard work come together on Demo day when you have the opportunity to show off your coding superpowers! ⭐️")
                                .font(.headline)
                                .fontWeight(.regular)
                                .foregroundStyle(.white)
                        }
                        .padding(.horizontal, 10)
                        .padding(.top, -55.0)
                    }
                    
                    Divider()
                        .background(Color.gray.opacity(0.5))
                        .frame(height: 1)
                    VStack {
                        // Display the current image
                        Text("We hope you enjoyed the camp!💗")
                            .font(.custom("UpheavalTT-BRK-", size: 30))
                            .foregroundColor(Color.purple)
                            .multilineTextAlignment(.center)
                        Image(images[currentImageIndex])
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400.0, height: 350.0)
                            .clipped()
                            .onReceive(timer) { _ in
                                // Update the current image index
                                currentImageIndex = (currentImageIndex + 1) % images.count
                            }
                        
//                        Text("Image \(currentImageIndex + 1)")
//                            .font(.title)
                        //                        Spacer(minLength: 50)
                    }
                }
                    .padding(.bottom, 50)
                
                
                VStack {
                    
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Home button tapped")
                        }) {
                            Image(systemName: "house.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Button(action: {
                            print("Search button tapped")
                        }) {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Button(action: {
                            print("Reels button tapped")
                        }) {
                            Image(systemName: "play.rectangle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Button(action: {
                            print("Profile button tapped")
                        }) {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    .padding(.top)
                    .background(Color.black.opacity(0.3))
                }
                .padding(.top, 450)

            }
        }
                
//        HStack {
//            Spacer()
//
//            Button(action: { print("Home tapped") }) {
//                Image(systemName: "house")
//                    .foregroundColor(.whi=te)
//                    .padding()
//            }
//
//            Spacer()
//
//            Button(action: { print("Search tapped") }) {
//                Image(systemName: "magnifyingglass")
//                    .foregroundColor(.white)
//                    .padding()
//            }
//
//            Spacer()
//
//            Button(action: { print("Profile tapped") }) {
//                Image(systemName: "person")
//                    .foregroundColor(.white)
//                    .padding()
//            }
//
//            Spacer()
//        }
//        .background(Color.black.opacity(0.8))
//        .frame(height: 50)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
