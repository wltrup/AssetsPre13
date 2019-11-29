import UIKit
import AssetsPre13

class ViewController: UIViewController {

    @IBOutlet private var exampleView: UIView!
    @IBOutlet private var exampleLabel: UILabel!

    override func viewDidLoad() {

        super.viewDidLoad()

        self.view.backgroundColor = Assets.color(.backgroundMainView)
        exampleView.backgroundColor = Assets.color(.backgroundExampleView)
        exampleLabel.text = Assets.string(.exampleText)

    }

}
