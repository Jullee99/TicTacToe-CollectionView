//
//  ViewController.swift
//  TicTacToe
//
//  Created by DCS on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButtontictactoe: UIButton = {
        let button = UIButton()
        button.setTitle("TicTacToe", for: .normal)
        button.layer.cornerRadius = 7
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(handleTicTacToe), for: .touchUpInside)
        return button
    }()
    
    
    @objc private func handleTicTacToe() {
        print("Click....")
        let vc = TicTacToeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myButtontictactoe)
        //view.backgroundColor = .gray
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        myButtontictactoe.frame = CGRect(x: 40, y: (view.height / 2) - 30, width: view.width - 80, height: 60)
    }
}

