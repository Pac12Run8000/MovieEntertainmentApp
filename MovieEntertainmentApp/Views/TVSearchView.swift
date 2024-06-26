import SwiftUI

struct TVSearchView: View {
    @StateObject private var presenter = TVSearchPresenter()
    @State private var query: String = ""
       
       var body: some View {
           VStack {
               TextField("Search TV Shows", text: $query, onCommit: {
                   presenter.searchTVShows(query: query)
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
