import UIKit

open class AvatarGroupView: UIView {
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.alignment = .center
        stackView.spacing = -20
        return stackView
    }()
    
    private var imageViews: [UIImageView] = (0...4).map {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "avatar\($0).jpg")
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        return imageView
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageViews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.widthAnchor.constraint(equalToConstant: 50).isActive = true
            $0.heightAnchor.constraint(equalToConstant: 50).isActive = true
            
            stackView.addArrangedSubview($0)
        }
        
        addSubview(stackView)
        createConstraints()

    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
