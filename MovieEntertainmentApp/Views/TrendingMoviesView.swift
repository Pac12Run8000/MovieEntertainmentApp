import SwiftUI

struct TrendingMoviesView: View {
    @StateObject private var presenter = TrendingMoviesPresenter()
       
       var body: some View {
           VStack {
               Text("Trending Movies")
               List(presenter.movies, id: \.self) { movie in
                   Text(movie)
               }
           }
           .onAppear {
               presenter.fetchTrendingMovies()
           }
       }
}
