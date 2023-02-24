//
//  FeedCell.swift
//  Outstagram
//
//  Created by Beavean on 21.02.2023.
//

import UIKit

final class FeedCell: UICollectionViewCell {

    // TODO: viewModel
    // TODO: delegate

    // MARK: - UI Elements

    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.isUserInteractionEnabled = true
        imageView.backgroundColor = .lightGray
        let tap = UITapGestureRecognizer(target: self, action: #selector(showUserProfile))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tap)
        return imageView
    }()

    private lazy var userNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.label, for: .normal)
        button.setTitle("Username", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 13)
        button.addTarget(self, action: #selector(showUserProfile), for: .touchUpInside)
        return button
    }()

    private let postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.isUserInteractionEnabled = true
        return imageView
    }()

    lazy var likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: Constants.Symbols.likeUnselected), for: .normal)
        button.tintColor = .label
        button.addTarget(self, action: #selector(didTapLike), for: .touchUpInside)
        return button
    }()

    private lazy var commentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: Constants.Symbols.comment), for: .normal)
        button.tintColor = .label
        button.addTarget(self, action: #selector(didTapComments), for: .touchUpInside)
        return button
    }()

    private lazy var shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: Constants.Symbols.send), for: .normal)
        button.tintColor = .label
        button.addTarget(self, action: #selector(didTapUsername), for: .touchUpInside)
        return button
    }()

    private let likesLabel: UILabel = {
        let label = UILabel()
        label.text = "Likes"
        label.font = .boldSystemFont(ofSize: 13)
        label.textColor = .label
        return label
    }()

    private let captionLabel: UILabel = {
        let label = UILabel()
        label.text = "Caption"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .label
        return label
    }()

    private let postTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "Time"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .lightGray
        return label
    }()

    // MARK: - Properties

    static let reuseIdentifier = String(describing: FeedCell.self)

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor, left: leftAnchor, paddingTop: 12, paddingLeft: 12)
        profileImageView.setDimensions(height: 40, width: 40)
        profileImageView.layer.cornerRadius = 40 / 2
        addSubview(userNameButton)
        userNameButton.centerY(inView: profileImageView, leftAnchor: profileImageView.rightAnchor, paddingLeft: 8)

        addSubview(postImageView)
        postImageView.anchor(top: profileImageView.bottomAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 8)
        postImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true

        configureActionButtons()

        addSubview(likesLabel)
        likesLabel.anchor(top: likeButton.bottomAnchor, left: leftAnchor, paddingTop: -4, paddingLeft: 8)

        addSubview(captionLabel)
        captionLabel.anchor(top: likesLabel.bottomAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 8)

        addSubview(postTimeLabel)
        postTimeLabel.anchor(top: captionLabel.bottomAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 8)
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Actions

    @objc func showUserProfile() {
        // TODO: showUserProfile
    }

    @objc func didTapComments() {
        // TODO: showUserProfile
    }

    @objc func didTapLike() {
        // TODO: showUserProfile
    }

    @objc private func didTapUsername() {
        // TODO: didTapUsername
    }

    // MARK: - Helpers

    func configure() {
        // TODO: configure
    }

    func configureActionButtons() {
        let stackView = UIStackView(arrangedSubviews: [likeButton, commentButton, shareButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        addSubview(stackView)
        stackView.anchor(top: postImageView.bottomAnchor, width: 120, height: 50)
    }
}
