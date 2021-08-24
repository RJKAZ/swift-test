

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fetchBookData { books in
            for book in books{
                print(book.title!)
            }
        }
    }

    // we will write a function that will take our book data from the internet
    
    func fetchBookData(completionHandler: @escaping([Book]) -> Void){
        let bookListURL =
        "https://reeses-blog-default-rtdb.firebaseio.com/books"
        
        guard let url = URL(string: bookListURL) else { return }
        
        
        let dataTask = URLSession.shared.dataTask(with: url) { ( data, response, error) in
            do {
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Book].self, from: data!)
                
                completionHandler(jsonData)
            
            }
            catch{
                let error = error
                print(error.localizedDescription)
            }
        }
        dataTask.resume()
                       
    }
}

