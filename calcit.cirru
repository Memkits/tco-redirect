
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |skir/
      :type-slots $ {}
    :test $ {} (:description |) (:init-fn 'app.test/main!) (:mode :native) (:reload-fn 'app.test/reload!)
      :feature-policy $ {}
      :modules $ [] |calcit-test/
      :type-slots $ {}
  :files $ {}
    |app.main $ %{} 'FileEntry
      :defs $ {}
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () $ skir/create-server! on-request!
              {} $ :port 11029
          :examples $ []
          :schema $ :: 'Dynamic
        |on-request! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-request! (req res) (assert-type req 'skir.schema/Request)
              let
                  url $ &map:get (:query req) |url
                if (some? url)
                  let
                      promise $ unsafe-coerce
                        .!get axios url $ js-object (|maxRedirects 0)
                          |validateStatus $ fn (status)
                            and (>= status 200) (< status 500)
                        , 'JsObject
                    .!catch
                      unsafe-coerce
                        .!then promise $ fn (response) (js/console.log)
                          {} (:code 302) (:message |OK)
                            :headers $ {}
                              :location $ .-location
                                unsafe-coerce
                                  .-headers $ unsafe-coerce response 'JsObject
                                  , 'JsObject
                            :body nil
                        , 'JsObject
                      fn (err) (println |failed err)
                        {} (:code 500) (:message "|Fetch failed")
                          :headers $ {} (:Content-Type |text/plain)
                          :body $ {} (:message "|Fetch Failed")
                            :body $ str err
                  {} (:code 400) (:message "|No URL provided")
                    :headers $ {} (:Content-Type |text/plain)
                    :body $ {} (:message "|No URL provided")
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'skir.schema/Request 'Dynamic
              :features $ #{} :js-ffi
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ println "|nothing yet"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require (skir.core :as skir) (|axios :default axios)
