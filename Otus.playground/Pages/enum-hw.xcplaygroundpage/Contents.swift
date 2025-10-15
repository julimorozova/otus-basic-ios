//
//Написать перечисление, содержащее в себе устройства apple (для упрощения можно взять 5-7 устройств, включающий iPhone, iPad), перечисление должно поддерживать протокол CustomStringConvertible (https://developer.apple.com/documentation/swift/customstringconvertible) и выводить свое описание, также должны быть реализованы свойства:
//
//размер экрана в пикселях (можно использовать CGSize структуру или написать свою - с height width параметрами)
//булевая (Bool) переменная отвечающая iPad это или нет
import Foundation

enum Devises: CustomStringConvertible {
    case iPhone14
    case iPhone15Pro
    case iPhoneSE
    case iPadAir
    case iPadPro11
    case iPadPro12
    
    var description: String {
        switch self {
        case .iPhone14:
            return "iPhone 14 - разрешение экрана: 1170x2532"
        case .iPhone15Pro:
            return "iPhone 15 Pro - разрешение экрана: 1179x2556"
        case .iPhoneSE:
            return "iPhone SE - разрешение экрана: 750x1334"
        case .iPadAir:
            return "iPad Air - разрешение экрана: 1640x2360"
        case .iPadPro11:
            return "iPad Pro 11 - разрешение экрана: 1668x2388"
        case .iPadPro12:
            return "iPad Pro 12.9 - разрешение экрана: 2048x2732"
        }
    }
    
    var screenSize: CGSize {
        switch self {
        case .iPhone14:
            return CGSize(width: 1170, height: 2532)
        case .iPhone15Pro:
            return CGSize(width: 1179, height: 2556)
        case .iPhoneSE:
            return CGSize(width: 750, height: 1334)
        case .iPadAir:
            return CGSize(width: 1640, height: 2360)
        case .iPadPro11:
            return CGSize(width: 1668, height: 2388)
        case .iPadPro12:
            return CGSize(width: 2048, height: 2732)
        }
    }
    
    var isIPad: Bool {
        switch self {
        case .iPadAir, .iPadPro11, .iPadPro12:
            return true
        case .iPhone14, .iPhone15Pro, .iPhoneSE:
            return false
        }
    }
}
