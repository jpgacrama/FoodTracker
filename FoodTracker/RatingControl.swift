import UIKit

class RatingControl: UIStackView {
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍😃")
    }
    
    private func setupButtons() {
        // Button Properties
        let button = UIButton()
        button.backgroundColor = UIColor.blue
        
        // Button constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Setup the button action
        button.addTarget(self, action: #selector(ratingButtonTapped(button:)), for: .touchUpInside)

        // Add the button to the stack
        addArrangedSubview(button)
    }
}
