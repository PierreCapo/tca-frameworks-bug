//
//  SettingsCore.swift
//  OrgApp
//
//  Created by Pierre Capo on 16/11/2022.
//  Copyright © 2022 Org. All rights reserved.
//

import ComposableArchitecture
import UIKit

public struct SettingsCore: ReducerProtocol {
    public init() {}
    public struct State: Equatable {
        public init() {}
    }

    public enum Action: Equatable {
        case someAction
    }

    public func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .someAction:
            return .none
        }
    }
}
