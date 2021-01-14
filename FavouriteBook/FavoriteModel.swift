//
//  FavoriteModel.swift
//  FavouriteBook
//
//  Created by owner on 12/5/20.
//

import Foundation


//1
struct FavoriteModel : Identifiable { //boylece listede bunu verdigimizde id sormayacak
    //2
    //identif yaptiigimiz her modelin icinde id olmasi gerekir
    var id = UUID() //uuid ile her olusturuldugunda uydurma deger veriyor onceki ile ayni olmuyor
    //var id : Int da yapabiliriz ancak tek tek manuel id vermemiz gerekiyr 0 1 2 gibi
    var title : String //filmler muzik gruplari gibi basliklar olacak
    //bunlarin altinda da elemanlar olacak
    //4
    var elements : [FavoriteElements]
    
    
    
    
}

//3
struct  FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

//5
let sfcity = FavoriteElements(name: "goldengate", imagename: "goldengate", description: "best place")
let nyscity = FavoriteElements(name: "empire", imagename: "empire", description: "best place2")
let menatcity = FavoriteElements(name: "pyramids", imagename: "pyramids", description: "best place3")

let favoritePlaces = FavoriteModel(title: "Startup Places", elements: [sfcity,nyscity,menatcity])

let bart = FavoriteElements(name: "bart", imagename: "bart", description: "son")
let homer = FavoriteElements(name: "homer", imagename: "homer", description: "dad")
let lisa = FavoriteElements(name: "lisa", imagename: "lisa", description: "daughter")

let favoriteSimpsons = FavoriteModel(title: "Simpsons", elements: [bart,homer,lisa])

let myfavorites = [favoriteSimpsons, favoritePlaces]
