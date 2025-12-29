//
//  ExampleView.swift
//  ProjectDemo
//
//  Created by hoang.nguyenh on 12/23/25.
//

import UIKit

protocol DetailViewControllerDelegate: AnyObject {
    func detailViewController (
        _ controller: DetailViewController,
        didUpdate destination: Destination
    )
}

enum ImageSource {
    case asset(name: String)
    case url(String)
    case system(name: String)
}

class DetailViewController: UIViewController {
    
    var destination: Destination?
    weak var delegate: DetailViewControllerDelegate?
    
    lazy var nameLabel: UILabel = {
        makeLabel(
            text: destination?.name ?? "",
            color: .text1,
            size: 32,
            weight: .bold,
            alignment: .left,
        )
    }()
    
    lazy var locationLabel: UILabel = {
        makeLabel(
            text: destination?.location ?? "",
            color: .text2,
            size: 20,
            isItalic: true
        )
    }()
    
    lazy var descriptionLabel: UILabel = {
        makeLabel(
            text: destination?.description ?? "",
            color: .text1,
            size: 20,
            weight: .light,
            alignment: .justified,
            numberOfLine: 0,
        )
    }()
    
    lazy var image: UIView = {
        makeImage(
            source: .asset(name: destination?.imageName ?? ""),
        )
    }()
    
    private let favoriteButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.tintColor = .systemRed
        button.layer.borderColor = UIColor.systemRed.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var mainStack: UIStackView = {
        makeStack(axis: .vertical, alignement: .leading)
    }()
    
    lazy var subStack2: UIStackView = {
        makeStack(axis: .vertical, alignement: .center)
    }()
    
    lazy var subStack: UIStackView = {
        makeStack(axis: .horizontal)
    }()
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        mainStack.spacing = 15
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(mainStack)
        mainStack.addArrangedSubview(subStack2)
        subStack2.addArrangedSubview(image)
        mainStack.addArrangedSubview(subStack)
        subStack.addArrangedSubview(nameLabel)
        subStack.addArrangedSubview(favoriteButton)
        mainStack.addArrangedSubview(locationLabel)
        mainStack.addArrangedSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
            
            
            mainStack.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10),
            mainStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            mainStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            mainStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),

            
            subStack2.topAnchor.constraint(equalTo: mainStack.topAnchor),
            subStack2.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor),
            subStack2.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor),
            
            subStack.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor),
            subStack.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor),
            
            
            image.widthAnchor.constraint(equalToConstant: 150),
            image.heightAnchor.constraint(equalToConstant: 150),
            
            favoriteButton.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor),
            
            favoriteButton.widthAnchor.constraint(equalToConstant: 40),
            favoriteButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        favoriteButton.addTarget(self, action: #selector(favoriteTapped), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateButton()
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.lightGray.cgColor
        image.layer.cornerRadius = image.bounds.width / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @objc func favoriteTapped() {
        guard var destination else {return}
        
        destination.isFavorite.toggle()
        self.destination = destination
        
        updateButton()
        
        delegate?.detailViewController(self, didUpdate: destination)
    }
    
    
    private func updateButton() {
        let isFavorite = destination?.isFavorite ?? false
        let imageName = isFavorite ? "heart.fill" : "heart"
        favoriteButton.setImage(UIImage(systemName: imageName), for: .normal)
        favoriteButton.layer.cornerRadius = favoriteButton.bounds.width / 2
    }
    
    // function chế tạo custom stack view
    func makeStack(
        axis: NSLayoutConstraint.Axis,
        alignement: UIStackView.Alignment = .center,
        distribution: UIStackView.Distribution = .fill,
        translate: Bool = false
    ) -> UIStackView {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = translate
        stack.axis = axis
        stack.alignment = alignement
        stack.distribution = distribution
        return stack
    }
    
    func makeImage(
        source: ImageSource,
        content: UIImageView.ContentMode = .scaleToFill,
        translate: Bool = false,
    ) -> UIImageView {
        let image = UIImageView()
        
        switch source {
        case .asset(let name):
            image.image = UIImage(named: name)
        case .system(let name):
            image.image = UIImage(systemName: name)
        case .url(let URLString):
            if let URL = URL(string: URLString) {
                URLSession.shared.dataTask(with: URL) { data, _, _ in
                    guard let data = data else {return}
                    DispatchQueue.main.async {
                        image.image = UIImage(data: data)
                    }
                }.resume()
            }
        }
        
        image.contentMode = content
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = translate
        
        return image
    }
    
    // function chế tạo custom label
    func makeLabel(
        text: String = "Default",
        color: UIColor = .black,
        size: CGFloat = 16,
        weight: UIFont.Weight = .regular,
        isItalic: Bool = false,
        alignment: NSTextAlignment = .center,
        numberOfLine: Int = 1,
        translate: Bool = false
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = color
        label.textAlignment = alignment
        label.numberOfLines = numberOfLine
        label.translatesAutoresizingMaskIntoConstraints = translate
        if isItalic {
            label.font = UIFont.italicSystemFont(ofSize: size)
        } else {
            label.font = UIFont.systemFont(ofSize: size, weight: weight)
        }
        return label
    }
}

#Preview {
    let vc = DetailViewController()
    vc.destination = DestinationService.sharedData[1]
    return vc
}
