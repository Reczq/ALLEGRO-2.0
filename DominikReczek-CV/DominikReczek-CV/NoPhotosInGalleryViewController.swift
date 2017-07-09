import UIKit

class NoPhotosInGalleryViewController: UIViewController {

    override func loadView() {
        view = NoPhotosInGalleryView()
    }

    func castedBasicView() -> NoPhotosInGalleryView {
        return self.view as! NoPhotosInGalleryView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareNavigationBar()
    }

    func prepareNavigationBar() {
        navigationItem.title = "Wybierz zdjęcia w wierszu"
    }
}



