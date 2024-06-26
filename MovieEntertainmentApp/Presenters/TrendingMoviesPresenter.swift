import SwiftUI

class TrendingMoviesPresenter: ObservableObject {
    @Published var movies: [String] = []
    
    init() {
        fetchTrendingMovies()
    }
    
    func fetchTrendingMovies() {
        // Simulate network request
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.movies = ["Movie 1", "Movie 2", "Movie 3"]
        }
    }
}
