//
//  DetailsView.swift
//  FavouriteBook
//
//  Created by owner on 12/5/20.
//

import SwiftUI

struct DetailsView: View {
    //10 artik detailsview her cagrildiginda bir chosenfav verilmesini isteyecek
    var chosenFavoriteElements : FavoriteElements
    
    
    var body: some View {
        //11
        VStack{
            Image(chosenFavoriteElements.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(chosenFavoriteElements.name) //ne secildi ise onu gosterecek ekranda
                .font(.largeTitle)
                .padding()
            Text(chosenFavoriteElements.description)
                .font(.callout)
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElements: bart) //10 codu yazinca burda hata verdi fix diyince bart yazdik random
    }
}
