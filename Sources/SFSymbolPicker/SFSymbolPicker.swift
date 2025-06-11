import SwiftUI

public struct SFSymbolPicker<ToolbarItems: ToolbarContent>: View {
    // MARK: Environment
    @Environment(\.dismiss) private var dismiss
    @Environment(\.locale) private var locale
    
    // MARK: Properties
    @Binding var selectedSymbol: String
    @State private var searchText: String
    private let symbols: SFSymbolCategories.Type
    private let title: LocalizedStringKey
    private let searchPromt: LocalizedStringKey
    private let autoDismiss: Bool
    private let gridStyle: [GridItem]
    private let toolbarContent: () -> ToolbarItems
    
    
    // MARK: Init
    public init(selectedSymbol: Binding<String>, title: LocalizedStringKey, searchPromt: LocalizedStringKey = "Search symbol",  symbols: SFSymbolCategories.Type = DefaultSymbols.self, autoDismiss: Bool = false, @ToolbarContentBuilder toolbarContent: @escaping () -> ToolbarItems = { ToolbarItem {} }) {
        self._selectedSymbol = selectedSymbol
        self.searchText = ""
        self.symbols = symbols
        self.title = title
        self.searchPromt = searchPromt
        self.autoDismiss = autoDismiss
        self.gridStyle = Array(repeating: GridItem.init(.flexible()), count: 6)
        self.toolbarContent = toolbarContent
    }
    
    
    // MARK: Filtered lists
    private var filteredSymbols: [String: [String]] {
        if searchText.isEmpty {
            return symbols.categories
        } else {
            var filtered: [String: [String]] = [:]
            for (key, symbols) in symbols.categories {
                let matches = symbols.filter { $0.localizedCaseInsensitiveContains(searchText) }
                if !matches.isEmpty {
                    filtered[key] = matches
                }
            }
            return filtered
        }
    }
    
    
    // MARK: Filtered categories
    private var sortedCategories: [String] {
        filteredSymbols.keys.sorted { key1, key2 in
            let localizedString1 = localizeHeader(key1, localeIdentifier: locale.identifier)
            let localizedString2 = localizeHeader(key2, localeIdentifier: locale.identifier)
            return localizedString1.localizedCaseInsensitiveCompare(localizedString2) == .orderedAscending
        }
    }
    
    
    // MARK: Functions
    /// Returns the localized value of stirng
    /// - Parameters:
    ///   - key: String to be localized
    ///   - localeIdentifier: Localization of the app
    /// - Returns: Localized string from ley
    private func localizeHeader(_ key: String, localeIdentifier: String) -> String {
        guard let path = Bundle.main.path(forResource: localeIdentifier, ofType: "lproj"),
              let bundle = Bundle(path: path) else {
            return key // fallback
        }
        return NSLocalizedString(key, bundle: bundle, comment: "")
    }
    
    
    // MARK: View
    public var body: some View {
        NavigationStack {
            List {
                ForEach(sortedCategories, id: \.self) { categoryKey in
                    Section(header: Text(LocalizedStringKey(categoryKey))) {
                        LazyVGrid(columns: gridStyle, spacing: 12) {
                            ForEach(filteredSymbols[categoryKey] ?? [], id: \.self) { symbol in
                                Button {
                                    selectedSymbol = symbol
                                    if autoDismiss {
                                        dismiss()
                                    }
                                } label: {
                                    Image(systemName: symbol)
                                        .font(.title2)
                                        .padding(8)
                                        .background(
                                            selectedSymbol == symbol ? Color.accentColor.opacity(0.2) : Color.clear
                                        )
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .toolbar(content: toolbarContent)
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: searchPromt)
        }
    }
}


// MARK: Preview Wrapper
struct SFSymbolPickerWrapper: View {
    @State private var selectedSymbol: String = ""
    
    var body: some View {
        SFSymbolPicker(selectedSymbol: $selectedSymbol, title: "Select symbol")
    }
}

// MARK: Previewå
#Preview("Default") {
    SFSymbolPickerWrapper()
}
