//
//  SceneDelegate.swift
//  CobeHotWire
//
//  Created by Mladen Ivastinovic on 27.11.2024..
//

import UIKit
import HotwireNative



class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?


    //let rootURL = URL(string: "https://hotwire-native-demo.dev")!
    let rootURL = URL(string: "https://velocity-demo-integration.fly.dev/en-gb")!
    private lazy var navigator = Navigator(pathConfiguration: pathConfiguration, delegate: self)

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        window?.rootViewController = navigator.rootViewController
        navigator.route(rootURL)
    }
    
    private lazy var pathConfiguration = PathConfiguration(sources: [
        .file(Bundle.main.url(forResource: "path-configuration", withExtension: "json")!),
    ])
}

extension SceneDelegate: NavigatorDelegate {
    
}
