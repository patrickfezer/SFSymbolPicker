import SwiftUI

// MARK: Protocol
public protocol SFSymbolCategories {
    static var categories: [String : [String]] { get }
}

// MARK: Class
public struct DefaultSymbols: SFSymbolCategories {
    public static let categories: [String: [String]] = [
        "Access": [
            "key", "key.fill", "key.slash", "key.slash.fill",
            "key.radiowaves.forward", "key.radiowaves.forward.fill",
            "lock", "lock.fill", "lock.open", "lock.open.fill",
            "faceid", "touchid",
            "person.crop.square.filled.and.at.rectangle", "lanyardcard",
            "shield.lefthalf.filled", "shield.fill",
            "checkmark.shield", "person.badge.key", "person.badge.shield.checkmark"
        ],

        "Animals": [
            "pawprint.fill", "pawprint",
            "dog.fill", "cat.fill",
            "bird.fill", "fish.fill",
            "hare.fill", "tortoise.fill",
            "ant.fill", "ladybug.fill",
            "lizard", "lizard.fill",
            "ant.circle", "ant.circle.fill",
            "ladybug.circle", "ladybug.circle.fill"
        ],

        "Arrows": [
            "arrow.up", "arrow.down", "arrow.left", "arrow.right",
            "arrow.up.right", "arrow.up.left", "arrow.down.right", "arrow.down.left",
            "arrow.left.arrow.right", "arrow.right.arrow.left",
            "arrow.uturn.left", "arrow.uturn.right",
            "arrow.clockwise", "arrow.counterclockwise",
            "arrow.up.circle", "arrow.up.circle.fill",
            "arrow.down.circle", "arrow.down.circle.fill"
        ],

        "Awards": [
            "star.circle.fill", "hand.thumbsup.fill", "heart.circle",
            "star.circle", "medal", "medal.star", "medal.star.fill",
            "rosette",
            "trophy", "trophy.fill", "trophy.circle", "trophy.circle.fill"
        ],

        "Communication": [
            "phone", "phone.fill", "phone.circle", "phone.circle.fill",
            "phone.badge.plus", "phone.fill.badge.plus", "phone.badge.checkmark", "phone.fill.badge.checkmark",
            "phone.badge.clock", "phone.badge.clock.fill", "phone.connection", "phone.connection.fill",
            "phone.badge.waveform", "phone.badge.waveform.fill",
            "phone.arrow.up.right", "phone.arrow.up.right.fill",
            "phone.arrow.down.left", "phone.arrow.down.left.fill"
        ],

        "Devices": [
            "desktopcomputer", "laptopcomputer", "ipad", "iphone",
            "macbook", "macmini", "macpro.gen1", "macpro.gen1.fill",
            "homepod", "homepod.fill", "hifispeaker", "hifispeaker.fill",
            "airpods", "airpods.chargingcase",
            "applewatch", "watch.analog",
            "tv.fill"
        ],

        "Education": [
            "book.fill", "graduationcap.fill", "pencil",
            "brain.head.profile", "person.2.crop.square.stack",
            "books.vertical", "studentdesk", "backpack.fill", "ruler",
            "character", "textformat", "globe.desk", "book.closed", "bookmark.fill",
            "lightbulb.fill"
        ],

        "Entertainment": [
            "film", "gamecontroller",
            "play.tv", "photo.on.rectangle.angled",
            "theatermasks", "puzzlepiece.fill",
            "dice.fill", "sparkles", "play.rectangle",
            "memories", "memories.badge.plus", "tv", "sparkles.tv"
        ],

        "Events": [
            "megaphone.fill", "party.popper.fill", "balloon.2.fill",
            "calendar.badge.plus", "music.note.tv", "microphone.fill",
            "speaker.wave.3.fill", "calendar.circle", "clock.badge.checkmark",
            "person.2.badge.plus", "bell.circle",
            "calendar.badge.minus", "calendar.badge.clock", "calendar.badge.checkmark",
            "calendar.and.person", "calendar.day.timeline.left", "calendar.day.timeline.right"
        ],

        "Fashion": [
            "tshirt", "tshirt.fill", "shoeprints.fill", "scissors",
            "eyeglasses", "handbag.fill", "crown.fill", "hanger",
            "figure.stand.dress", "watchface.applewatch.case",
            "wand.and.rays", "sparkles.rectangle.stack", "mustache",
            "mustache.fill", "face.smiling", "face.smiling.inverse",
            "hat.widebrim", "hat.widebrim.fill"
        ],

        "Finance": [
            "banknote", "creditcard", "eurosign", "dollarsign", "bitcoinsign",
            "chart.line.uptrend.xyaxis", "chart.pie", "percent",
            "creditcard.and.123", "chart.bar.xaxis", "creditcard.viewfinder",
            "building.columns", "building.columns.fill", "dollarsign.circle",
            "centsign"
        ],

        "Fitness": [
            "figure.walk", "figure.run", "figure.outdoor.cycle", "figure.strengthtraining.traditional",
            "figure.core.training", "figure.cooldown", "dumbbell", "sportscourt",
            "bolt.heart", "heart", "lungs", "figure.yoga",
            "figure.mixed.cardio", "figure.highintensity.intervaltraining",
            "figure.hiking", "figure.climbing"
        ],

        "Food": [
            "fork.knife", "takeoutbag.and.cup.and.straw", "wineglass",
            "birthday.cake", "popcorn", "menucard", "takeoutbag.and.cup.and.straw.fill",
            "fork.knife.circle", "wineglass.fill", "carrot", "mug.fill",
            "frying.pan.fill", "frying.pan", "cup.and.saucer", "cup.and.saucer.fill", "leaf.circle"
        ],

        "General": [
            "person.text.rectangle.fill",
            "gearshape", "bookmark", "calendar", "bell", "text.document", "envelope", "link",
            "house", "paperclip", "tray.full", "questionmark.circle",
            "rectangle.stack", "link.circle"
        ],

        "Giftcards": [
            "gift.fill",
            "creditcard.trianglebadge.exclamationmark", "heart.rectangle",
            "truck.box", "hands.and.sparkles",
            "giftcard", "tag.slash", "tag.slash.fill", "bag.badge.minus"
        ],

        "Health": [
            "cross.case", "pills", "stethoscope", "bandage", "waveform.path.ecg",
            "heart.text.square", "syringe", "thermometer.sun", "staroflife.fill", "eye",
            "medical.thermometer", "waveform", "xmark.bin.fill", "cross.vial",
            "cross.circle", "facemask.fill", "pill.fill", "pill.circle"
        ],

        "Home": [
            "house.fill", "sofa.fill", "lamp.floor.fill", "refrigerator.fill", "washer.fill",
            "bed.double", "chair.fill", "table.furniture", "lightbulb.led", "fan.ceiling",
            "air.conditioner.horizontal", "oven.fill", "microwave.fill", "dishwasher.fill",
            "tv.and.hifispeaker.fill", "door.garage.closed", "lock.shield", "thermometer.sun.fill"
        ],

        "Kids": [
            "puzzlepiece.extension", "puzzlepiece.extension.fill", "figure.child",
            "balloon.fill", "paintpalette.fill", "bicycle.circle", "scribble.variable",
            "rainbow", "sun.max.trianglebadge.exclamationmark", "star.bubble", "apple.logo",
            "teddybear", "teddybear.fill", "tennis.racket", "tennisball", "tennisball.fill"
        ],

        "Media": [
            "play", "pause", "stop", "backward", "forward",
            "repeat", "shuffle", "eject", "music.note", "music.microphone", "speaker", "speaker.wave.3",
            "headphones", "radio"
        ],

        "Nature": [
            "leaf", "leaf.fill", "tree", "tree.fill", "flame", "flame.fill",
            "drop", "drop.fill", "cloud.sun", "moon.stars", "mountain.2.fill",
            "wave.3.up", "wave.3.down"
        ],

        "Office": [
            "document", "document.fill", "briefcase.fill", "person.3.sequence.fill", "building.2.fill",
            "printer.fill", "folder.fill", "archivebox.fill",
            "scissors.badge.ellipsis", "arrow.trianglehead.clockwise",
            "clipboard.fill", "paperplane.fill", "tray.and.arrow.up.fill", "link.circle.fill", "envelope.fill"
        ],

        "People": [
            "person", "person.fill", "person.circle", "person.circle.fill", "person.2", "person.2.fill",
            "person.3", "person.3.fill", "person.crop.circle", "person.crop.circle.fill",
            "person.badge.plus", "person.badge.minus", "person.fill.checkmark",
            "person.fill.xmark", "person.wave.2.fill", "person.badge.clock", "person.text.rectangle"
        ],

        "Shapes": [
            "circle", "circle.fill", "square", "square.fill", "triangle", "triangle.fill",
            "diamond", "diamond.fill", "octagon", "octagon.fill", "seal", "seal.fill",
            "hexagon", "hexagon.fill", "star", "star.fill", "plus", "minus", "star.square"
        ],

        "Shopping": [
            "cart.fill", "cart.badge.plus", "bag.fill", "barcode.viewfinder", "wallet.pass",
            "tag.fill", "basket", "storefront", "shippingbox.fill", "cart.badge.minus",
            "bag.badge.plus", "bag", "barcode", "tag", "cart", "cart.circle", "bag.circle", "cart.fill.badge.minus"
        ],

        "Tickets": [
            "entry.lever.keypad", "qrcode", "qrcode.viewfinder",
            "rectangle.and.hand.point.up.left", "checkmark.rectangle", "document.badge.plus",
            "person.line.dotted.person", "building.fill", "location.viewfinder",
            "ticket", "ticket.fill", "theatermasks.fill"
        ],

        "Tools": [
            "hammer", "hammer.fill", "wrench.adjustable", "wrench.adjustable.fill",
            "wrench.and.screwdriver", "wrench.and.screwdriver.fill",
            "screwdriver", "screwdriver.fill",
            "eyedropper", "eyedropper.halffull", "eyedropper.full",
            "paintbrush", "paintbrush.fill", "paintbrush.pointed", "paintbrush.pointed.fill",
            "level", "level.fill", "lines.measurement.horizontal"
        ],

        "Transport": [
            "car.fill", "car.2.fill", "bus", "tram", "bicycle", "fuelpump.fill",
            "train.side.front.car", "car.rear.waves.up.fill", "scooter", "airplane",
            "ferry.fill", "steeringwheel", "car.top.door.front.left.open", "car.circle",
            "car.side", "car.side.fill", "car.side.front.open", "car.side.rear.open"
        ],

        "Travel": [
            "airplane.departure", "airplane.arrival", "suitcase", "globe.americas",
            "location.fill", "map", "camera", "binoculars",
            "mappin.and.ellipse", "bed.double.fill", "location.north.line", "globe",
            "map.fill", "tent", "tent.fill", "signpost.left"
        ],

        "Weather": [
            "sun.max", "cloud", "cloud.rain", "cloud.bolt", "cloud.snow", "wind",
            "moon", "tornado", "thermometer.snowflake",
            "humidity", "cloud.fog", "cloud.drizzle", "snowflake", "umbrella.fill",
            "sunrise", "sunset"
        ]
    ]
}
