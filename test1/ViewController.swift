//
//  ViewController.swift
//  test1
//
//  Created by Sofiane on 20/07/2020.
//  Copyright © 2020 klarkbank. All rights reserved.
//

import UIKit
import Acquired_SDK_IOS

class ViewController: UIViewController {

    @IBOutlet weak var tapBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnDidTapped(_ sender: Any) {

        let hppManager = HppManager()
        let hppSetting = HppSetting(companyId:393,  companyMidId:1499,  companyHash:"WiuTB0HK")
        
        hppSetting.company_id = 393
        hppSetting.company_mid_id = 1499
        hppSetting.mid_hash = "WiuTB0HK"
        hppSetting.is_debug = true
        hppSetting.transaction_type = "AUTH_ONLY"
        hppSetting.currency_code_iso3 = "GBP"
        hppSetting.amount = 100.1
        hppSetting.callback_url = "https://yoururl.com/callback"
        hppSetting.is_tds = 2
        hppSetting.tds_type = 2
        hppSetting.tds_preference = 0
        hppSetting.tds_source = 1
        
        hppSetting.customer_fname = "Joe"
        hppSetting.customer_lname = "Bloggs"
        hppSetting.customer_dob = "1990-01-01"
        hppSetting.billing_street = "152 Aldgate Drive"
        hppSetting.billing_city = "London"
        hppSetting.billing_zipcode = "E1 7RT"
        hppSetting.billing_country_code_iso2 = "GB"
        hppSetting.billing_phone_code = "44"
        hppSetting.billing_phone = "2039826580"
        hppSetting.billing_email = "support@acquired.com"
        hppSetting.merchant_contact_url = "https://acquired.com/support"
        hppManager.loadHppView(viewController: self, hppSetting: hppSetting)
    }
}
