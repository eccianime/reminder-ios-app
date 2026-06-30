//
//  String+Ext.swift
//  Reminder
//
//  Created by Jean Paul Rojas on 30/06/26.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
