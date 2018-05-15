
    /**
    modal_ac("title","string more")
    popup modal...
     */
    func modal_ac(_ v1: String ,_ v2 :String){
        let alert = UIAlertController(title: v1, message: v2, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay.", style: .default) { _ in })
        
        //Show
        self.present(alert, animated: true){}
        
    }
 /**
    get_data("v1")
    return data from forkey
*/
    func get_data( _ v1: String) -> String {
        if let name = UserDefaults.standard.string(forKey: v1) {
            return name;
        }else{
            return "";
        }
    }
 /**
    set_data("v1","data-value")
    return data from forkey

*/
    func set_data(_ v1: String, _ v2: String){
        let defaults = UserDefaults.standard
        defaults.set(v2, forKey: v1)
        defaults.synchronize()
    }



/**
    let timer = setTimeout(0.3) {
        // do something
    }
    timer.invalidate()      // cancel it.
 */
func setTimeout(_ delay:TimeInterval, block:@escaping ()->Void) -> Timer {
    return Timer.scheduledTimer(timeInterval: delay, target: BlockOperation(block: block), selector: #selector(Operation.main), userInfo: nil, repeats: false)
}

/**
 setInternval()
 */
func setInterval(_ interval:TimeInterval, block:@escaping ()->Void) -> Timer {
    return Timer.scheduledTimer(timeInterval: interval, target: BlockOperation(block: block), selector: #selector(Operation.main), userInfo: nil, repeats: true)
}
