//
//  Apollo.swift
//  shopTogether
//
//  Created by CtanLI on 2019-08-03.
//  Copyright © 2019 shopTogether. All rights reserved.
//

import Apollo

class Apollo {
    static let shared = Apollo()
    let client: ApolloClient

    init() {
        client = ApolloClient(url: URL(string: "https://stmockdata.goubiq.com/graphql")!)
    }
}
