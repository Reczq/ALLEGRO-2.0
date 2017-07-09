import UIKit
import SnapKit

class NoPhotosInGalleryView: UIView {

    lazy var backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }()

    lazy var descriptionLabel: UILabel = {
        var label = UILabel()
        label.text = """
            Żeby wybrać zdjęcia do opisu,
            musisz dodać zdjęcia
            W kroku drugim formularza
        """
        label.numberOfLines = 0
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
//        label.font = UIFont(name: "AmericanTypewriter-Condensed", size: 20.0)
        label.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        return label
    }()

    lazy var goToPhotoSelectionButton: UIButton = {
        var button = UIButton()
        button.setTitle("PRZEJDŹ DO WYBORU ZDJĘĆ", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        return button
    }()

    lazy var finishedButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        button.setTitle("Gotowe", for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.prepareView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func prepareView() {
        addSubview(backgroundView)
        addSubview(descriptionLabel)
        addSubview(goToPhotoSelectionButton)
        addSubview(finishedButton)

        setNeedsUpdateConstraints()
    }

    override func updateConstraints() {
        super.updateConstraints()

        backgroundView.snp.updateConstraints { (make) in
            make.edges.equalTo(self)
        }

        descriptionLabel.snp.updateConstraints { (make) in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
//            make.width.equalTo(frame.size.width * 0.9)
//            make.height.equalTo(frame.size.height * 0.2)
        }

        goToPhotoSelectionButton.snp.updateConstraints { (make) in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(10)
            make.centerX.equalTo(self)
//            make.width.equalTo(frame.size.width * 0.6)
//            make.height.equalTo(frame.size.height * 0.05)
        }

        finishedButton.snp.updateConstraints { (make) in
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).offset(-5)
            make.width.equalTo(frame.size.width * 0.95)
            make.height.equalTo(frame.size.height * 0.065)
        }
    }
}
