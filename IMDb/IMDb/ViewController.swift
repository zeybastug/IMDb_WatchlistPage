//
//  ViewController.swift
//  IMDb
//
//  Created by Zeynep Baştuğ on 3.05.2022.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var movieTitleCountLabel: UILabel!
    @IBOutlet weak var movieSortLabel: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var movieTableView: UITableView!
    
    var movieAndSeriesList = [MovieAndSeries]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let item = tabItems[1]
        }
        
        let appearance = UITabBarAppearance()
        //appearance.backgroundColor = UIColor.white
        
        itemRenkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        //arka planın rengini değiştirir
        
        
        let navappearance = UINavigationBarAppearance()
        
       navappearance.backgroundColor = UIColor(named: "navicolor")
        
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = navappearance
        navigationController?.navigationBar.compactAppearance = navappearance
        navigationController?.navigationBar.scrollEdgeAppearance = navappearance
        
        searchBar.delegate = self
        movieTableView.delegate = self
        movieTableView.dataSource = self
        
        let m1 = MovieAndSeries(movieID: 1, movieName: "Victoria", releaseDate: "2015", duration: "2h 18m", ageLimit: "15+", rating: "7.6", directorName: "Sebastian Schipper", movieImageName: "VictoriaMovie")
        
      let m2 = MovieAndSeries(movieID: 2, movieName: "Euphoria", releaseDate: "2019", duration: "19 eps", ageLimit: "18+", rating: "8.4", directorName: "Sam Levinson", movieImageName: "Euphoria")

        let m3 = MovieAndSeries(movieID: 3, movieName: "Dogs of Berlin", releaseDate: "2018", duration: "11 eps", ageLimit: "18+", rating: "7.5", directorName: "Christian Alvart", movieImageName: "DogsOfBerlin")
        
        movieAndSeriesList.append(m1)
        movieAndSeriesList.append(m2)
        movieAndSeriesList.append(m3)
    }
    
    func itemRenkDegistir(itemAppearance:UITabBarItemAppearance) {
        // Seçili olmayan durum rengi
      //  itemAppearance.normal.iconColor = UIColor.black
       // itemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        itemAppearance.normal.badgeBackgroundColor = UIColor.red
        
        // Seçili olan durum rengi
       // itemAppearance.selected.iconColor = UIColor.blue
      //  itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        itemAppearance.selected.badgeBackgroundColor = UIColor.red
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search Result: \(searchText)")
    }
    
    @IBAction func movieTypeButton(_ sender: Any) {
    }
    
    @IBAction func movieWatchOptionsButton(_ sender: Any) {
    }
    
    @IBAction func movieStreamingButton(_ sender: Any) {
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieAndSeriesList.count
    }

    func tableView(_ tableView: UITableView,
               heightForRowAt indexPath: IndexPath) -> CGFloat {
       // Make the first row larger to accommodate a custom cell.
       return 180
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movieAndSeriesList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
        
        cell.movieImage.image = UIImage(named: movie.movieImageName!)
        cell.movieName.text = movie.movieName
        cell.movieRating.text = movie.rating
        cell.movieDate.text = movie.releaseDate
        cell.movieAgeLimitLabel.text = movie.ageLimit
        cell.movieDurationLabel.text = movie.duration
        cell.movieDirectorLabel.text = movie.directorName
        
        return cell
    }
}
    
    
