import UIKit

open class AvatarGroupView: UIView {
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = UIStackView.Distribution.equalCentering
        stackView.alignment = .center
        stackView.spacing = -10
        return stackView
    }()
    
    private lazy var containerViews: [UIView] = (0...7).map {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(imageViews[$0])
        view.layer.cornerRadius = 25
        view.layer.masksToBounds = true
        return view
    }
    
    private lazy var imageViews: [UIImageView] = (0...7).map {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "avatar\($0).jpg")
        imageView.layer.cornerRadius = 23
        imageView.layer.masksToBounds = true
        return imageView
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        clipsToBounds = true
        
        containerViews.forEach {
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
        stackView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        imageViews.enumerated().forEach {
            $1.translatesAutoresizingMaskIntoConstraints = false
            $1.widthAnchor.constraint(equalToConstant: 46).isActive = true
            $1.heightAnchor.constraint(equalToConstant: 46).isActive = true
            $1.centerXAnchor.constraint(equalTo: containerViews[$0].centerXAnchor).isActive = true
            $1.centerYAnchor.constraint(equalTo: containerViews[$0].centerYAnchor).isActive = true
        }
    }
}
