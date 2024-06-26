//
//  ContentView.swift
//  MovieEntertainmentApp
//
//  Created by Norbert Grover on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TrendingMoviesView()
                .tabItem {
                    Image(systemName: "film")
                    Text("Trending Movies")
                }
            
            TrendingShowsView()
                .tabItem {
                    Image(systemName: "tv")
                    Text("Trending Shows")
                }
            
            MovieSearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Movie Search")
                }
            
            TVSearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("TV Search")
                }
        }
    }
}

#Preview {
    ContentView()
}
