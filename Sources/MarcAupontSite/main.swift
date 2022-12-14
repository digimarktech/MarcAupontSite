import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MarcAupontSite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "MarcAupontSite"
    var description = "A description of MarcAupontSite"
    var language: Language { .english }
    var imagePath: Path? { nil }
}



extension Theme {
    static var myTheme: Theme {
        Theme(htmlFactory: MyHTMLFactory(), resourcePaths: ["Resources/MyTheme/styles.css"])
    }
}

// This will generate your website using the custom myTheme theme:
try MarcAupontSite().publish(withTheme: .myTheme)
