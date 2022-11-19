//
// Created by Pierre Capo on 02/11/2022.
// Copyright (c) 2022 Org. All rights reserved.
//

import ComposableArchitecture
import FeatureSettings
import Foundation
import SwiftUI
import UIKit

public struct HomeView: View {
    let store: StoreOf<Home>

    public var body: some View {
        WithViewStore(store) { viewStore in
            profileIcon(store: store, viewStore: viewStore)
        }
    }

    fileprivate func profileIcon(store: StoreOf<Home>, viewStore: ViewStoreOf<Home>) -> some View {
        NavigationLink(
            destination:
            SettingsView(store: store.scope(state: \.settings, action: Home.Action.settings)),
            isActive: viewStore.binding(
                get: \.isSettingsScreenPresented,
                send: {
                    $0
                        ? .profileIconTapped
                        : .profileScreenDismissed
                }
            )
        ) {
            ZStack {
                Rectangle()
                    .fill(.white)
                    .frame(width: 200, height: 50)
                Text("go to profile settings")
            }
        }
    }
}
