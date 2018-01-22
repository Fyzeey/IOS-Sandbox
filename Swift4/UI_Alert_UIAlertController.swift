// Create alert object
// Create alert action, run the function you want inside action
// Add action to alert object
// Present UI alert to view


let alert = UIAlertController(title: "Awesome", message: "You've finished all the questionss, do you want to start over?", preferredStyle: .alert)

let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
alert.addAction(restartAction)
            
present(alert, animated: true, completion: nil)
