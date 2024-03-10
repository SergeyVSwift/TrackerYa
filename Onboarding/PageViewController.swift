import UIKit

<<<<<<< HEAD
=======
enum ColorPageType: CaseIterable {
    case blue
    case red
 
    var viewController: UIViewController {
        switch self {
        case .blue:
            return OnboardingViewController(colorPage: self.colorPage)
        case .red:
            return OnboardingViewController(colorPage: self.colorPage)
        }
    }

    private var colorPage: ColorPage {
        ColorPage(backgroundImageName: self.imageName, onboardingInfoText: self.infoText)
    }
    
    private var imageName: String {
        switch self {
        case .blue:
            return "OnboardingBlue"
        case .red:
            return "OnboardingRed"
        }
    }
    
    private var infoText: String {
        switch self {
        case .blue:
            return "Отслеживайте только то, что хотите"
        case .red:
            return "Даже если это не литры воды и йога"
        }
    }
}


>>>>>>> 5d7a33b1fa47a4e012bc80505ef1b61cb7a52cd8
final class PageViewController: UIPageViewController {
    
    // MARK: - private properties
    private var pagesFactory: PageViewControllerFactoryProtocol?
    
    // MARK: - UI
    private lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.numberOfPages = pagesFactory?.numberOfPages ?? 0
        pageControl.currentPage = 0
        pageControl.currentPageIndicatorTintColor = .ypBlack
        pageControl.pageIndicatorTintColor = .ypGray
        pageControl.isEnabled = false
        return pageControl
    }()
    
    // MARK: - initialization
    init(pagesFactory: PageViewControllerFactoryProtocol) {
        super.init(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        self.pagesFactory = pagesFactory
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - override
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPageViewController()
        addViews()
        activateConstraints()
    }
    
    // MARK: - private methods
    private func setupPageViewController() {
        dataSource = self
        delegate = self
    
        guard let firstViewController = pagesFactory?.getViewController(at: 0) else { return }
        
        setViewControllers(
            [firstViewController],
            direction: .forward,
            animated: true
        )
    }
    
    private func addViews() {
        view.addSubview(pageControl)
    }
    
    private func activateConstraints() {
        let pageControlTopConstant = view.frame.height / 1.45
        
        NSLayoutConstraint.activate([
            pageControl.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: pageControlTopConstant
            ),
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

// MARK: UIPageViewControllerDataSource
extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerBefore viewController: UIViewController
    ) -> UIViewController? {
        guard let viewControllerIndex = pagesFactory?.getViewControllerIndex(of: viewController) else { return nil}
        let prevIndex = viewControllerIndex - 1
        guard prevIndex >= 0 else { return nil}
        return pagesFactory?.getViewController(at: prevIndex)
    }
    
    func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerAfter viewController: UIViewController
    ) -> UIViewController? {
        guard let viewControllerIndex = pagesFactory?.getViewControllerIndex(of: viewController), let pagesFactory else { return nil}
        let nextIndex = viewControllerIndex + 1
        guard nextIndex < pagesFactory.numberOfPages else { return nil }
        return pagesFactory.getViewController(at: nextIndex)
    }
}

// MARK: UIPageViewControllerDelegate
extension PageViewController: UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController,
                            didFinishAnimating finished: Bool,
                            previousViewControllers: [UIViewController],
                            transitionCompleted completed: Bool) {
        guard completed else { return }
        guard let currenViewController = pageViewController.viewControllers?.first,
              let currentIndex = pagesFactory?.getViewControllerIndex(of: currenViewController) else { return }
        pageControl.currentPage = currentIndex
    }
}