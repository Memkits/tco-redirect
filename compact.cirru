
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |skir/ |lilac/
  :entries $ {}
    :test $ {} (:init-fn |app.test/main!) (:reload-fn |app.test/reload!)
      :modules $ [] |calcit-test/
  :files $ {}
    |app.main $ {}
      :defs $ {}
        |main! $ quote
          defn main! () $ skir/create-server! on-request!
            {} $ :port 11029
        |on-request! $ quote
          defn on-request! (req res)
            let
                url $ get (:query req) "\"url"
              if (some? url)
                ->
                  .!get axios url $ js-object ("\"maxRedirects" 0)
                    "\"validateStatus" $ fn (status)
                      and (>= status 200) (< status 500)
                  .!then $ fn (response) (js/console.log)
                    {} (:code 302) (:message |OK)
                      :headers $ {}
                        :location $ .-location (.-headers response)
                      :body nil
                  .!catch $ fn (err) (println "\"failed" err)
                    {} (:code 500) (:message "|Fetch failed")
                      :headers $ {} (:Content-Type |text/plain)
                      :body $ {} (:message "|Fetch Failed")
                        :body $ str err
                {} (:code 400) (:message "\"No URL provided")
                  :headers $ {} (:Content-Type |text/plain)
                  :body $ {} (:message "\"No URL provided")
        |reload! $ quote
          defn reload! () $ println "\"nothing yet"
      :ns $ quote
        ns app.main $ :require (skir.core :as skir) ("\"axios" :default axios)
