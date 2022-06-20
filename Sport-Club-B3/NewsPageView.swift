//
//  NewsPageView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 08/06/2022.
//

import SwiftUI

struct URLImage: View {
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
                .background(Color.gray)
            
        } else {
            Image(systemName: "video")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 70)
                .background(Color.gray)
                .onAppear {
                    fetchData()
                }
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}

class ViewModel: ObservableObject {
    @Published var news: [News] = []

    func fetch() {
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else { return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            // Convert to JSON
            do {
                let news = try JSONDecoder().decode([News].self, from: data)
                
                print(news)
                
                DispatchQueue.main.async {
                    self?.news = news
                }
            }
            catch {
                print(error)
            }
        }
        
        task.resume()
    }
}


struct NewsPageView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.news, id: \.self) { oneNews in
                    HStack {
                        // URLImage(urlString: oneNews.image)
                        Text(oneNews.name)
                            .bold()
                    }
                    .padding(3)
                }
            }
            .navigationTitle("News")
            .onAppear {
                viewModel.fetch()
            }
        }
    }
}


struct NewsPageView_Previews: PreviewProvider {
    static var previews: some View {
        NewsPageView()
    }
}
