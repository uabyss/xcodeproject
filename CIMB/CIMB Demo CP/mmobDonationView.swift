//
//  mmobClientView.swift
//  CIMB Demo CP
//
//  Created by Atiqah on 25/03/2024.
//

import Foundation
import SwiftUI
import MmobClient

struct mmobDonationView: UIViewRepresentable {
    
    @AppStorage("instance_domain") var instance_domain: String = "mmob"
    let client = MmobClient()
    
    func makeUIView(context: Context) -> MmobClientView  {
        let configuration = MmobIntegration(
          configuration: MmobIntegrationConfiguration(
            cp_id: "cp_prD8VAN6BlhJRha-hsVZx",
            integration_id: "cpd_pKBixfPPgSKOgsN6pD8-V",
            environment: "stag" //  "stag" or "prod", defaults to "prod"
          ),
          customer: MmobCustomerInfo(
            email: "james.tan7@example.com",
            title: "Mr", first_name: "James",
            surname: "Tan",
            building_number: "Flat 82",
            address_1: "99 Block Square",
            town_city: "Milton Keynes",
            postcode: "MK1 1AU"
        )
          )
        

        return client.loadIntegration(mmobConfiguration: configuration, instanceDomain: InstanceDomain.MMOB)
    }

    func updateUIView(_ uiView: MmobClientView, context: Context) {
        print("update UI")

    }
    
}

struct mmobDonationView_Previews: PreviewProvider {
    static var previews: some View {
        mmobDonationView()
    }
}
