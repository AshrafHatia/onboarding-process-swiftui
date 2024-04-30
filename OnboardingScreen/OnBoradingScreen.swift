//
//  OnBoradingScreen.swift
//  OnboardingScreen
//
//  Created by Ashraf Hatia on 27/04/24.
//

import SwiftUI

var totalPages = 3
struct OnBoradingScreen: View {
    
    @AppStorage("currentPage") var currentPage = 1
    var body: some View {
        ZStack {
            if currentPage == 1 {
                ScreenView(image: "learnonline", title: "Enroll in Academy", details: "")
            }
            if currentPage == 2 {
                ScreenView(image: "professor", title: "Skilled Tutors", details: "")
            }
            
            if currentPage == 3 {
                ScreenView(image: "student", title: "Get Skilled", details: "")
            }
        }
    }
}

#Preview {
    OnBoradingScreen()
}

struct ScreenView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var image: String
    var title: String
    var details: String
    
    var body: some View {
        VStack{
            HStack{
                
                if currentPage == 1{
                    Text("Hey Learners")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .kerning(1.4)
                }
                else{
                    Button(action: {
                        currentPage -= 1
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                }
                
                Spacer()
                Button(action: {
                    currentPage = 4
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                })
            }
            .padding()
            .foregroundColor(.black)
            
            Spacer(minLength: 0)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)
                .frame(height: 300)
            
            Spacer(minLength: 80)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color("appColor"))
                .kerning(1.2)
                .padding(.top)
                .padding(.bottom, 5)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry")
                .font(.body)
                .fontWeight(.regular)
            //                    .padding([.leading, .trailing])
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .kerning(1.2)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            HStack {
                if currentPage == 1 {
                    Color("appColor").frame(height: 8 / UIScreen.main.scale)
                    Color.gray.frame(height: 8 / UIScreen.main.scale)
                    Color.gray.frame(height: 8 / UIScreen.main.scale)
                }
                if currentPage == 2 {
                    Color("appColor").frame(height: 8 / UIScreen.main.scale)
                    Color("appColor").frame(height: 8 / UIScreen.main.scale)
                    Color.gray.frame(height: 8 / UIScreen.main.scale)
                }
                
                if currentPage == 3 {
                    Color("appColor").frame(height: 8 / UIScreen.main.scale)
                    Color("appColor").frame(height: 8 / UIScreen.main.scale)
                    Color("appColor").frame(height: 8 / UIScreen.main.scale)
                }
            }
            
            Button(action: {
                if currentPage <= totalPages {
                    currentPage += 1
                }
            }, label: {
                if currentPage == 3 {
                    Text("Get Started")
                        .fontWeight(.semibold)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("appColor"))
                        .cornerRadius(40)
                        .padding(.horizontal, 16.0)
                }
                else{
                    Text("Next")
                        .fontWeight(.semibold)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("appColor"))
                        .cornerRadius(40)
                        .padding(.horizontal, 16.0)
                }
            })
        }
    }
}
