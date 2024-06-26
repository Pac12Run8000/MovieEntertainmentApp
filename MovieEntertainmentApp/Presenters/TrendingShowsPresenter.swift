import SwiftUI

class TrendingShowsPresenter: ObservableObject {
    @Published var shows: [String] = []
    
    init() {
        fetchTrendingShows()
    }
    
    func fetchTrendingShows() {
        // Simulate network request
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.shows = ["Show 1", "Show 2", "Show 3"]
        }
    }
}
