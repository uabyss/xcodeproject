//
//  ContentView.swift
//  CIMB Demo CP
//
//  Created by Atiqah on 25/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showingDonation = false
    
    var body: some View {
        //Top and bottom homescreen
        ZStack {
            /*Image("background3")
                .resizable()
                .ignoresSafeArea()*/
            
            VStack {
                Image("homescreenTop")
                   .resizable()
                    
                    .frame(width: 400.0, height: 300)
                    .padding(.bottom, 0.0)
                 //Spacer()
                HStack (alignment: .center, spacing: 18) {
                 
                    //Donation
                    Spacer()
                    Button(action: {showingDonation.toggle()}) {
                        Image("donationButton3")
                    }
                        
                  
                    .sheet(isPresented: $showingDonation) {
                      mmobDonationView()
                    }
                   
                    
                    Button {
                        financing()
                    } label: {
                        Image("financingButton2")
                    }
                   
                   
                    Button {
                        transfer()
                    } label: {
                        Image("transferButton2")
                            
                    }
                  
                   
                    Button {
                        more()
                    } label: {
                        Image("moreButton2")
                    }
                    Spacer()
                }
                Spacer()
                
                Image("homescreenBottom")
                    .resizable()
                    .frame(width: 400.0, height: 340)
                    .padding(.top, 0.0)
                
                
                
            }
        }
        
        
    }

    
    //function financing
    func financing () {
        print("Financing Journey")
    }
    
    //function doctor
    func transfer () {
        print("Empty Transfer Journey")
    }
    
    //function More
    func more () {
        print("Empty More Journey")
    }
    
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
