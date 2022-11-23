{:user {:plugin-repositories [["clojars" {:url "https://clojars.org/repo"}]]
        :plugins [[cider/cider-nrepl                 "0.18.0"]
                  [refactor-nrepl                    "2.4.0"]
                  [com.jakemccrary/lein-test-refresh "0.23.0"]
                  [lein-cloverage                    "1.0.13"]
                  [lein-ancient                      "0.6.15"]
                  [s3-wagon-private                  "1.3.2"]
                  [lein-pprint                       "RELEASE"]]
        :test-refresh {:notify-command ["terminal-notifier" "-title" "Tests" "-message"]}}}
