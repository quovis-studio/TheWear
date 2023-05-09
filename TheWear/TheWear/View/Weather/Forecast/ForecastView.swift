/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class ForecastView: UIView {
    
    var forecastViewModel: [ForecastViewModel]? {
        didSet {
            guard forecastViewModel != nil else { return }
            calculateWidths()
            tableView.reloadData()
            stopPulseAnimation()
        }
    }
    
    var maxWeekdayWidth: CGFloat = 100
    var maxHighTemperatureWidth: CGFloat = 100
    var maxLowTemperatureWidth: CGFloat = 100
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.isScrollEnabled = false
        tableView.backgroundColor = .clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DayTableViewCell.self, forCellReuseIdentifier: "dayCell")
        return tableView
    }()
    
    private func configureTableView() {
        addSubview(tableView)
        tableView.matchSuperview(
            offset: .init(top: Size.padding.small, bottom: Size.padding.small)
        )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubstrateBackground()
        startPulseAnimation()
        calculateWidths()
        configureTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
