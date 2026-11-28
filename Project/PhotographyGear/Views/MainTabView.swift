import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var router: AppRouter
    @EnvironmentObject var auth: AuthenticationViewModel
    @State private var tab = 0
    var body: some View {
        TabView(selection: $tab) {
            NavigationStack { DashboardView(showGear: { tab = 1 }) }.tabItem { Label("Dashboard", systemImage: "house") }.tag(0)
            NavigationStack { GearListView() }.tabItem { Label("Gear", systemImage: "camera") }.tag(1)
            NavigationStack { AddGearView(onSaved: { tab = 1 }) }.tabItem { Label("Add", systemImage: "plus.circle.fill") }.tag(2)
            NavigationStack { SearchFilterView() }.tabItem { Label("Search", systemImage: "magnifyingglass") }.tag(3)
            NavigationStack { List { Button("Logout", role: .destructive) { auth.logout(); router.navigate(to: .login) } }.navigationTitle("More") }.tabItem { Label("More", systemImage: "ellipsis") }.tag(4)
        }
    }
}
