import SwiftUI

struct TrendingShowsView: View {
    @StateObject private var presenter = TrendingShowsPresenter()
        
        var body: some View {
            VStack {
                Text("Trending Shows")
                List(presenter.shows, id: \.self) { show in
                    Text(show)
                }
            }
            .onAppear {
                presenter.fetchTrendingShows()
            }
        }
}
