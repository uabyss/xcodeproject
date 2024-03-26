//
//  ContentView.swift
//  Demo AIA 2
//
//  Created by Atiqah on 21/03/2024.
//

import SwiftUI

struct MMOBIwocaView: View {
    @State private var showingDonation = false
    @State private var showingFinancing = false
    
    var body: some View {
        //Top and bottom homescreen
        ZStack {
            Image("background-red2")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("homescreentop2")
                   .resizable()
                    
                    .frame(width: 400.0, height: 390)
                    .padding(.bottom, 0.0)

                HStack (alignment: .center, spacing: 15)
                // alignment. center centers the tabs, spacing puts spacing between each of the buttons
                {
                   // Spacer()
                    Button(action: {showingDonation.toggle() }) {
                                    Image("dermabutton")
                        //^ this ties it to the image
                                }
                                .sheet(isPresented: $showingDonation) {
                                    mmobDonationDPView()
                                }
                    Button(action: {showingFinancing.toggle() }) {
                        //showingDonation is a function that opens the webview using .toggle().
                                    Image("cardButton")
                                }
                                .sheet(isPresented: $showingFinancing) {
                                    mmobCreditCardDPView()
                                }
                    Button {
                        doctor()
                    } label: {
                        Image("doctorButton")
                    
                    }

                    Button {
                        more()
                    } label: {
                        Image("moreButton")
                    }
                   // Spacer()
                }
                //Spacer()
                
                Image("homescreenbottom")
                    .resizable()
                    .frame(width: 400.0, height: 250)
                    .padding(.top, 0.0)
                
            }
        }
        
        
    }
    //function donation
    func donation () {
        print("Donation Journey")
    }
    //function financing
    func financing () {
        print("Financing Journey")
    }
    
    //function doctor
    func doctor () {
        print("Empty Doctor Journey")
    }
    
    //function More
    func more () {
        print("Empty More Journey")
    }
    
    }


struct MMOBIwocaView_Previews: PreviewProvider {
    static var previews: some View {
        MMOBIwocaView()
    }
}



