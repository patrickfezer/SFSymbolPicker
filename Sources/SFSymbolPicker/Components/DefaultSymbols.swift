import SwiftUI

// MARK: Protocol
/// Protocol for Categories
public protocol SFSymbolCategories {
    static var categories: [String : [String]] { get }
}

// MARK: Class
public final class DefaultSymbols: SFSymbolCategories {
    /// Dictionary mapping category keys (English titles) to arrays of SF Symbol names
    public static let categories: [String: [String]] = [
        "Access": [
            "key", "lock", "lock.open", "faceid", "touchid",
            "person.crop.square.filled.and.at.rectangle", "lanyardcard",
            "shield.lefthalf.filled", "checkmark.shield", "person.badge.key",
            "wifi", "door.left.hand.open"
        ],
        "Animals": [
            "pawprint.fill", "pawprint", "dog.fill", "cat.fill", "bird.fill", "fish.fill",
            "hare.fill", "tortoise.fill", "ant.fill", "ladybug.fill"
        ],
        "Arrows": [
            "arrow.up", "arrow.down", "arrow.left", "arrow.right", "arrow.up.right", "arrow.up.left", "arrow.down.right", 
            "arrow.down.left", "arrow.left.arrow.right", "arrow.right.arrow.left", "arrow.uturn.left", "arrow.uturn.right",
            "arrow.clockwise", "arrow.counterclockwise"
        ],
        "Awards": [
            "star.circle.fill", "seal.fill", "medal.fill", "person.2.fill", "hand.thumbsup.fill", "heart.circle"
        ],
        "Education": [
            "book.fill", "graduationcap.fill", "person.text.rectangle", "pencil", "doc.richtext", "brain.head.profile", "person.2.square.stack",
            "books.vertical", "studentdesk", "backpack.fill", "ruler", "paintbrush.pointed", "abc",
            "textformat.123", "globe.desk", "book.closed", "bookmark.fill", "lightbulb.fill", "trophy.fill"
        ],
        "Entertainment": [
            "music.note", "music.mic", "film", "gamecontroller", "ticket", "sparkles.tv", "play.tv", "photo.on.rectangle.angled",
            "theatermasks", "radio", "tv", "puzzlepiece.fill", "headphones", "dice.fill", "sparkles", "play.rectangle"
        ],
        "Events": [
            "ticket.fill", "megaphone.fill", "party.popper.fill", "balloon.2.fill", "calendar.badge.plus",
            "music.note.tv", "microphone.fill", "speaker.wave.3.fill", "calendar.circle",
            "clock.badge.checkmark", "person.2.badge.plus", "bell.circle"
        ],
        "Fashion": [
            "tshirt", "tshirt.fill", "shoeprints.fill", "scissors", "eyeglasses", "handbag.fill",
            "crown.fill", "hanger", "figure.dress.line.vertical.figure", "watchface.applewatch.case",
            "wand.and.rays", "sparkles.rectangle.stack", "mustache", "face.smiling"
        ],
        "Finance": [
            "banknote", "creditcard", "eurosign", "dollarsign", "bitcoinsign", "arrow.left.arrow.right",
            "chart.line.uptrend.xyaxis", "chart.pie", "percent", "bag.circle", "creditcard.and.123",
            "chart.bar.xaxis", "creditcard.viewfinder"
        ],
        "Fitness": [
            "figure.walk", "figure.run", "figure.outdoor.cycle", "figure.strengthtraining.traditional", "figure.core.training",
            "figure.cooldown", "dumbbell", "sportscourt", "flame", "bolt.heart", "heart", "lungs",
            "figure.yoga", "medal", "figure.mixed.cardio", "figure.highintensity.intervaltraining"
        ],
        "Food": [
            "fork.knife", "takeoutbag.and.cup.and.straw", "cup.and.saucer", "wineglass", "birthday.cake", "popcorn",
            "menucard", "takeoutbag.and.cup.and.straw.fill", "fork.knife.circle", "wineglass.fill", "carrot", "leaf",
            "mug.fill"
        ],
        "General": [
            "person.text.rectangle", "person.text.rectangle.fill", "person.crop.circle", "star", "gearshape", "bookmark",
            "calendar", "bell", "doc.text", "envelope", "link", "house", "doc.plaintext", "paperclip", "tray.full",
            "questionmark.circle", "rectangle.stack"
        ],
        "Giftcards": [
            "giftcard.fill", "gift.fill", "seal", "bag.fill.badge.plus",
            "creditcard.trianglebadge.exclamationmark", "dollarsign.circle", "heart.rectangle",
            "star.square", "tag.circle", "box.truck", "hands.sparkles"
        ],
        "Health": [
            "cross.case", "pills", "stethoscope", "bandage", "waveform.path.ecg", "heart.text.square", "syringe",
            "thermometer", "staroflife.fill", "eye", "medical.thermometer", "waveform", "xmark.bin.fill",
            "cross.vial", "cross.circle"
        ],
        "Home": [
            "house.fill", "sofa.fill", "lamp.floor.fill", "refrigerator.fill", "washer.fill",
            "bed.double", "chair.fill", "table.furniture", "lightbulb.led", "fan.ceiling",
            "air.conditioner.horizontal", "oven.fill", "microwave.fill", "dishwasher.fill", "tv.and.hifispeaker.fill",
            "door.garage.closed", "lock.shield", "thermometer.sun.fill"
        ],
        "Kids": [
            "puzzlepiece.extension", "person.3.fill", "figure.child", "balloon.fill", "paintpalette.fill",
            "bicycle.circle", "scribble.variable", "rainbow", "sun.max.trianglebadge.exclamationmark",
            "star.bubble", "apple.logo"
        ],
        "Media": [
            "play", "pause", "stop", "backward", "forward", "goforward", "gobackward", "repeat", "shuffle", "eject", "music.note", 
            "music.mic", "speaker", "speaker.3", "headphones"
        ],
        "Nature": [
            "leaf", "leaf.fill", "tree", "tree.fill", "flame", "flame.fill", "drop", "drop.fill", "tornado", "cloud.sun", "moon.stars"
        ],
        "Office": [
            "doc", "briefcase.fill", "person.3.sequence.fill", "building.2.fill",
            "laptopcomputer", "printer.fill", "folder.fill", "archivebox.fill",
            "scissors.badge.ellipsis", "phone.fill", "person.badge.shield.checkmark", "clock.arrow.circlepath"
        ],
        "People": [
            "person", "person.fill", "person.circle", "person.circle.fill", "person.2", "person.2.fill",
            "person.3", "person.3.fill", "person.crop.circle", "person.crop.circle.fill", "person.badge.plus", 
            "person.badge.minus", "person.fill.checkmark"
        ],
        "Shapes": [
            "circle", "circle.fill", "square", "square.fill", "triangle", "triangle.fill", "diamond", "diamond.fill", "octagon", 
            "octagon.fill", "seal", "seal.fill", "hexagon", "hexagon.fill", "star", "star.fill"
        ],
        "Shopping": [
            "cart.fill", "cart.badge.plus", "bag.fill", "barcode.viewfinder", "wallet.pass",
            "tag.fill", "basket", "storefront", "shippingbox.fill", "cart.badge.minus",
            "bag.badge.plus", "bag", "barcode", "tag", "cart"
        ],
        "Tickets": [
            "theatermasks.fill", "entry.lever.keypad", "qrcode", "qrcode.viewfinder",
            "rectangle.and.hand.point.up.left", "checkmark.rectangle", "doc.badge.plus",
            "person.line.dotted.person", "building.fill", "location.viewfinder"
        ],
        "Transport": [
            "car.fill", "car.2.fill", "bus", "tram", "bicycle", "fuelpump.fill", "train.side.front.car",
            "car.rear.waves.up.fill", "scooter", "airplane", "ferry.fill", "steeringwheel",
            "car.top.door.front.left.open", "car.circle"
        ],
        "Travel": [
            "airplane.departure", "airplane.arrival",
            "suitcase", "globe.americas", "location.fill", "map", "building.columns",
            "camera", "binoculars", "mappin.and.ellipse", "bed.double.fill", "location.north.line",
            "globe", "map.fill", "mountain.2.fill"
        ],
        "Weather": [
            "sun.max", "cloud", "cloud.rain", "cloud.bolt", "cloud.snow", "wind", "thermometer.sun", "moon", "tornado", "thermometer.snowflake", "humidity", "drop"
        ]
    ]

}
