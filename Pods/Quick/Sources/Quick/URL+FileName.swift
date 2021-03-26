import Foundation

extension URL {
    /**
     Returns the path file name without file extension.
     */
    var fileName: String {
        self.deletingPathExtension().lastPathComponent
    }
}
