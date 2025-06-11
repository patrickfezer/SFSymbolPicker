# SFSymbolPicker

A customizable SwiftUI view that lets users pick SF Symbols, categorized by themes like Food, Health, Transport, etc.

## 📦 Features

- Filterable SF Symbols grouped by categories  
- Optional toolbar integration  
- Support for custom symbol categories  
- Localization-ready header sorting

---


## 📥 Installation

### Swift Package Manager

1. Open your Xcode project
2. Go to **File > Add Package Dependencies**
3. Enter the repository URL:
   ```
   https://github.com/patrickfezer/SFSymbolPicker
   ```
4. Choose the latest version and add it to your target

### Import

At the top of any Swift file where you want to use the picker:

```swift
import SFSymbolPicker
```

---


## 🛠️ Initialization

```swift
SFSymbolPicker(
    selectedSymbol: Binding<String>,
    title: LocalizedStringKey,
    searchPromt: LocalizedStringKey = "Search symbol",
    symbols: SFSymbolCategories.Type = DefaultSymbols.self,
    autoDismiss: Bool = false,
    @ToolbarContentBuilder toolbarContent: @escaping () -> ToolbarItems = { ToolbarItem {} }
)
```

### Parameters

| Name             | Type                              | Default value         | Description                              |
|------------------|-----------------------------------|-----------------------|------------------------------------------|
| `selectedSymbol` | `Binding<String>`                 | -                     | Binding to the selected SF Symbol name   |
| `title`          | `LocalizedStringKey`              | -                     | Title shown in the navigation bar        |
| `searchPromt`    | `LocalizedStringKey`              | `Search symbol`       | Search bar placeholder                   |
| `symbols`        | `SFSymbolCategories.Type`         | `DefaultSymbols.self` | Optional custom symbol set               |
| `autoDismiss`    | `Bool`                            | `false`               | Automatically dismiss after selection    |
| `toolbarContent` | `@ToolbarContentBuilder` closure  | `ToolbarItem {}`      | Add custom ToolbarItems                  |

---


## 🧪 Example Usage

### ✅ Basic Picker (No Toolbar)

```swift
struct ExampleView: View {
    @State private var selectedSymbol = ""

    var body: some View {
        SFSymbolPicker(
            selectedSymbol: $selectedSymbol,
            title: "Choose Icon"
        )
    }
}
```


### 🛠 Picker With Toolbar

```swift
struct ExampleViewWithToolbar: View {
    @State private var selectedSymbol = ""

    var body: some View {
        SFSymbolPicker(
            selectedSymbol: $selectedSymbol,
            title: "Pick Icon",
            autoDismiss: true
        ) {
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel") {
                    // Your dismiss logic
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done") {
                    // Your confirmation logic
                }
            }
        }
    }
}
```

---


## 📂 Default Symbol Categories

Out of the box, `DefaultSymbols` provides a wide variety of grouped SF Symbols: 

- `Access`
- `Animals`
- `Arrows`
- `Awards`
- `Education`
- `Entertainment`
- `Events`
- `Fashion`
- `Finance`
- `Fitness`
- `Food`
- `General`
- `Giftcards`
- `Health`
- `Home`
- `Kids`
- `Media`
- `Nature`
- `Office`
- `People`
- `Shapes`
- `Shopping`
- `Tickets`
- `Transport`
- `Travel`
- `Weather`

---


## 🧩 Custom Symbol Categories

You can provide your own list of categorized SF Symbols by conforming to the `SFSymbolCategories` protocol:

```swift
class MySymbols: SFSymbolCategories {
    static let categories: [String : [String]] = [
        "Custom": ["star", "heart.fill", "bolt"],
        "Weather": ["sun.max", "cloud", "wind"]
    ]
}
```

Then pass your custom set to the picker:

```swift
SFSymbolPicker(
    selectedSymbol: $selectedSymbol,
    title: "Custom Symbols",
    symbols: MySymbols.self
)
```

---


## 🌐 Localization Support

All category headers support localization through the system's `LocalizedStringKey`.  
You can provide localized versions for these default headers via `.strings` or `.xcstrings` 'files in your app.

---


## 📃 License

MIT License. Feel free to use, modify, and contribute.
