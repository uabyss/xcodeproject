//
//  mmobFinancingView.swift
//  EfHub
//
//  Created by Jake Figg on 19/02/2024.
//

import SwiftUI
import MmobClient

struct mmobFinancingView: UIViewRepresentable {
    
    @AppStorage("instance_domain") var instance_domain: String = "mmob"
    let client = MmobClient()
    
    func makeUIView(context: Context) -> MmobClientView  {
        let configuration = MmobIntegration(
          configuration: MmobIntegrationConfiguration(
            cp_id: "cp_TMaiVSyyzBx2rZqF-PqdY",
            integration_id: "cpd_7-59MvLdLAIwr6bdDQ618",
            environment: "stag" //  "stag" or "prod", defaults to "prod"
          ),
          customer: MmobCustomerInfo(

        )
          )
        

        return client.loadIntegration(mmobConfiguration: configuration, instanceDomain: InstanceDomain.MMOB)
    }

    func updateUIView(_ uiView: MmobClientView, context: Context) {
        print("update UI")

    }
    
}

struct mmobFinancingView_Previews: PreviewProvider {
    static var previews: some View {
        mmobFinancingView()
    }
}

