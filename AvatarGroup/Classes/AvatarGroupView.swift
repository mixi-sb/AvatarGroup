import UIKit

open class AvatarGroupView: UIView {
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = UIStackView.Distribution.equalCentering
        stackView.alignment = .center
        
        return stackView
    }()
    
    private lazy var containerViews: [UIView] = []
    
    private lazy var imageViews: [UIImageView] = []
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        clipsToBounds = true
        
        addSubview(stackView)
        createConstraints()
    }
    
    private func createConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    @IBInspectable
    public var spacing: CGFloat = 0 {
        didSet {
            stackView.spacing = spacing
        }
    }
    
    @IBInspectable
    public var reverse: Bool = false {
        didSet {
            transform = cgAffineTransform
            containerViews.forEach { $0.transform = cgAffineTransform }
        }
    }
    
    public var images: [UIImage?] = [] {
        didSet {
            
        }
    }
    
    private var cgAffineTransform: CGAffineTransform {
        return CGAffineTransform(scaleX: reverse ? -1 : 1, y: 1)
    }
    
    public func add(image: UIImage?) {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = image
        imageView.layer.cornerRadius = 23
        imageView.layer.masksToBounds = true
        imageViews.append(imageView)
        
        let containerView = UIView()
        containerView.backgroundColor = .white
        containerView.addSubview(imageView)
        containerView.layer.cornerRadius = 25
        containerView.layer.masksToBounds = true
        containerView.transform = cgAffineTransform
        containerViews.append(containerView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 46).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 46).isActive = true
        imageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        stackView.addArrangedSubview(containerView)
    }
    
    public var count: Int {
        return containerViews.count
    }
    
}
