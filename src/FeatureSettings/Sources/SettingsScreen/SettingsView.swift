//
//  SettingsView.swift
//  OrgApp
//
//  Created by Pierre Capo on 16/11/2022.
//  Copyright © 2022 Org. All rights reserved.
//

import ComposableArchitecture
import SwiftUI

public struct SettingsView: View {
    let store: StoreOf<SettingsCore>
    @ObservedObject var viewStore: ViewStoreOf<SettingsCore>
    
    public init(store: StoreOf<SettingsCore>) {
        self.store = store
        self.viewStore = ViewStore(store)
    }

    public var body: some View {
        Color.green.frame(width: 200, height: 200)
    }
}
