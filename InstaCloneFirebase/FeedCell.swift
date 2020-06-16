//
//  FeedCell.swift
//  InstaCloneFirebase
//
//  Created by Sefa Çelik on 12.05.2020.
//  Copyright © 2020 Sefa Celik. All rights reserved.
//

import UIKit
import Firebase

class FeedCell: UITableViewCell {
    
    //UI
    @IBOutlet weak var usermailLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var documentIDLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func likeButtonClicked(_ sender: Any) {
        
        let firestoreDatabase = Firebase.Firestore.firestore()
        
        if let likeCount = Int(likeLabel.text!){
            let likeStore = ["likes" : likeCount+1] as [String : Any]
            firestoreDatabase.collection("Posts").document(documentIDLabel.text!).setData(likeStore, merge: true)
    
        }
    }
}









