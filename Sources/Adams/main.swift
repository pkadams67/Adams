import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Adams: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://adams.io")!
    var name = "Paul Adams |  Developer"
    var description = "I’m a Nashville-based software developer who creates apps and practical solutions for the Apple platform."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Adams().publish(withTheme: .foundation)
