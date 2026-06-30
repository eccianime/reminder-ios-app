//
//  LoginBottomSheetViewDelegate.swift
//  Reminder
//
//  Created by Jean Paul Rojas on 30/06/26.
//

import Foundation
import UIKit

protocol LoginBottomSheetViewDelegate: AnyObject {
    func sendLoginData(email: String, password: String)
}
