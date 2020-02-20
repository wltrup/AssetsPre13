# AssetsPre13

## What

**AssetsPre13** is an iOS framework to manage a variety of assets, applicable to iOS versions up to but **not** including iOS 13.0. Its main advantages are:

- *modularity*: your application assets are organised in a single module, separate from the rest of your application
- *type safety*: assets are accessed via enumeration values (which *you* define), rather than string literals
- *uniform API*: **AssetsPre13** manages Strings, Images, and Colors, using a uniform pattern, like so:
```swift
        Assets.color(.backgroundMainView)
        Assets.image(.doneButton)
```

It achieves its goals by relying on another library of mine, [AssetCatalogAwarePre13](https://github.com/wltrup/AssetCatalogAwarePre13), which is responsible for defining the various protocols and functions required to manage assets. This separation of concerns is what allows **AssetsPre13** to be customisable to your heart's content.

An example project for UIKit is provided. Here are the relevant parts, illustrating how **AssetsPre13** is used in practice:
```swift
        import AssetsPre13

        class ViewController: UIViewController {

            @IBOutlet private var exampleView: UIView!
            @IBOutlet private var exampleLabel: UILabel!

            override func viewDidLoad() {

                super.viewDidLoad()

                self.view.backgroundColor = Assets.color(.backgroundMainView)
                exampleView.backgroundColor = Assets.color(.backgroundExampleView)
                exampleView.layer.cornerRadius = 20
                exampleLabel.text = Assets.string(.exampleText)

            }

        }
```

## Installation

At the moment, **AssetsPre13** can only be installed by cloning or downloading its GitHub repository. I'm waiting for the Swift Package Manager to support resources so I can turn it into a proper package, since I'm moving away from CocoaPods and Carthage.

## Newer iOS versions

**AssetsPre13** is meant to be used with versions of iOS below 13.0. If you need to support newer versions, you might want to look at [Assets](https://github.com/wltrup/Assets), instead.

## Author

Wagner Truppel, trupwl@gmail.com

## License

**AssetsPre13** is available under the MIT license. See the LICENSE file for more info.
