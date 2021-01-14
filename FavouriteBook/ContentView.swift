//
//  ContentView.swift
//  FavouriteBook
//
//  Created by owner on 12/5/20.
//

import SwiftUI
//6
struct ContentView: View {
    var body: some View {
        
        //8
        NavigationView {
        
        List{ //(myfavorites) { favorite in
            //Text(favorite.title) //alt alta ekledi ama baslik olmadi henuz bunun icin iki tane ic ice for each kullanacagiz
            ForEach(myfavorites) { favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements) { element in
                        //7 her elemanda navigsation var artik
                        NavigationLink(
                            destination: DetailsView(chosenFavoriteElements: element)){
                                Text(element.name)
                            }
                        //Text(element.name)//6
                    }
                    
                }
            }
            
        } .navigationBarTitle(Text("Favourite Book")) //9 yukarisi
    }
    } //8 navigationview yazdiktan sonra yaptik herseyi icine alir
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
