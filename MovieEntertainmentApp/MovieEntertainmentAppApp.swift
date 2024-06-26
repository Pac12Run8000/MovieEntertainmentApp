import SwiftUI

@main
struct MovieEntertainmentAppApp: App {
    @StateObject private var appCoordinator = AppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            appCoordinator.currentView
                .environmentObject(appCoordinator)
        }
    }
}
