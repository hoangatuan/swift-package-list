//
//  _LicenseText.swift
//  SwiftPackageListUI
//
//  Created by Felix Herrmann on 06.03.22.
//

#if canImport(SwiftUI)

import SwiftUI
import SwiftPackageList

internal struct _LicenseText: View {
    internal var _package: Package
    
    internal var body: some View {
        ZStack {
            #if os(iOS)
            Color(.systemGroupedBackground)
                .edgesIgnoringSafeArea(.all)
            #endif
            
            #if os(tvOS)
            _TVOSTextView(_text: _package.license ?? "")
            #else
            ScrollView {
                Text(_package.license ?? "")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding()
                    .frame(maxWidth: .infinity)
            }
            #endif
        }
        ._navigationTitle(Text(_package.name))
    }
}

#endif // canImport(SwiftUI)
