# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "donation", to: "donation.js"
pin "article", to: "article.js"
pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js"
pin "add_jquery", to: "add_jquery.js"
pin "loading_comments", to: "loading_comments.js"

