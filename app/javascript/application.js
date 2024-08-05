// Entry point for the build script in your package.json
import "./controllers"
import "./src/clipboard"
import "./src/rocket_launcher"
import "./src/matrix"
import "./src/turbo_native/bridge"
import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"
ActiveStorage.start()
