import SwiftUI

struct MovieSearchView: View {
    @StateObject private var presenter = MovieSearchPresenter()
    @State private var query: String = ""
        
        var body: some View {
            VStack {
                TextField("Search Movies", text: $query, onCommit: {
                    presenter.searchMovies(query: query)
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .autocorrectionDisabled(true)
                .autocapitalization(.none)
                List(presenter.searchResults, id: \.self) { result in
                    Text(result)
                }
            }
        }
}
