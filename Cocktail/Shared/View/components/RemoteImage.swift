//
//  RemoteImage.swift
//  Cocktail
//
//  Created by Michael Thornton on 12/14/20.
//

import Combine
import SwiftUI

struct RemoteImage: View {

    @ObservedObject
    private var imageLoader: ImageLoader

    @State
    private var image: Image
    private var placeholder: Image

    var isShowingPlaceholder: Bool {
        self.image == self.placeholder
    }

    init(withImageAt urlString: String, placeholder: Image = Image(systemName: "photo")) {
        self.placeholder = placeholder
        self._image = .init(initialValue: placeholder)
        self.imageLoader = ImageLoader(forImageAt: urlString)
    }

    var body: some View {
        VStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
        }
        .onReceive(imageLoader.didChange) { data in
            guard let uiImage = UIImage(data: data) else { return }
            self.image = Image(uiImage: uiImage)
        }

    }
}

struct RemoteImage_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImage(withImageAt: DesignTime.imageUrl)
    }
}
