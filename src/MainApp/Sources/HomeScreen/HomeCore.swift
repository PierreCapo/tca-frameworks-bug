//
// Created by Pierre Capo on 02/11/2022.
// Copyright (c) 2022 Org. All rights reserved.
//

import ComposableArchitecture
import FeatureSettings

public struct Home: ReducerProtocol {
    public struct State: Equatable {
        var settings: SettingsCore.State

        var isSettingsScreenPresented: Bool = false

        public init() {
            self.settings = .init()
        }
    }

    public enum Action: Equatable {
        case settings(SettingsCore.Action)

        case profileIconTapped
        case profileScreenDismissed
    }
    
    public init() {}

    public var body: some ReducerProtocol<State, Action> {
        Scope(state: \.settings, action: /Action.settings) {
            SettingsCore()
        }
        Reduce { state, action in
            switch action {
            case .profileIconTapped:
                state.isSettingsScreenPresented = true
                return .none
            case .profileScreenDismissed:
                state.isSettingsScreenPresented = false
                return .none
            case .settings:
                return .none
                }
            }
        }
    }

