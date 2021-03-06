//
//  SummaryLayoutViewController.swift
//  akarsh seggemu resume
//
//  Created by Akarsh Seggemu on 05.12.18.
//  Copyright © 2018 Akarsh Seggemu. All rights reserved.
//

import UIKit

class SummaryLayoutViewController: UIViewController, LabelHeader {
    var basicsContent: Resume?
    var labelContentHeader: String?
    @IBOutlet var viewHeader: SummaryLayoutView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSummaryViewHeader()
    }
    
    func setSummaryViewHeader() {
        // set the view header
        if labelContentHeader != nil {
            viewHeader.labelSummaryHeader.text = labelContentHeader!
        }
        // set the summary text view
        if basicsContent?.basics.summary != nil {
            viewHeader.labelSummary.text = basicsContent?.basics.summary
        }
    }
}
