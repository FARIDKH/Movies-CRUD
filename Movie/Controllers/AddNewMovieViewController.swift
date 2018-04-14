//
//  AddNewMovieViewController.swift
//  Movie
//
//  Created by Farid Qanbarov on 4/13/18.
//  Copyright © 2018 Farid Qanbarov. All rights reserved.
//

import UIKit

protocol MovieDelegate {
    func addNewMovie(movie : Movie)
}

class AddNewMovieViewController: UIViewController, UINavigationControllerDelegate, UITextViewDelegate  {
    
    

    @IBOutlet weak var newMovieTitle: UITextView!
    var newMovie : Movie?
    var delegate : MovieDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = self
        navigationItem.title = "New Movie"
        
        newMovieTitle.becomeFirstResponder()
        newMovieTitle.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" , let movieTitle = textView.text {
            self.newMovie = addNewMovie(title: movieTitle)
            textView.resignFirstResponder()
            delegate?.addNewMovie(movie: self.newMovie!)
            navigationController?.popViewController(animated: true)
            dismiss(animated: true, completion: nil)
            return false
        }
        return true
    }
    // Protocol Function
    
    
    
    // View Controller Function
    func addNewMovie(title : String) -> Movie {
        let movie = Movie()
        movie.title = title
        return movie
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
