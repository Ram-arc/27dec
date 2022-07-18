//
//  signupVc.swift
//  27dec
//
//  Created by Vamsi krishna on 27/12/21.
//

import UIKit

class signupVc: UIViewController {

    @IBOutlet weak var mybutton: UIButton!
    @IBOutlet weak var signUpTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpTableView.delegate = self
        signUpTableView.dataSource = self
        signUpTableView.register(UINib(nibName: "TableViewCell", bundle: .main), forCellReuseIdentifier: "TableViewCell")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didtap(_ sender: Any) {
        
        
        
    }
    
    @IBAction func didTapBack(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension signupVc : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = signUpTableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        return cell
    }
    
    
    
    
    
}
