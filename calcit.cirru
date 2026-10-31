
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |skir/
      :type-slots $ {}
  :files $ {} $ 'app.main
    %{} 'FileEntry
      :defs $ {}
        'Axios $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Axios
            .get $ quote $ Fn Axios String JsObject (-> app.main/PendingResponse)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ quote Trait
        'Headers $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Headers
            :location $ quote $ JsNullish String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ quote Trait
        'PendingResponse $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait PendingResponse
            .then $ quote $ Fn PendingResponse
              Fn app.main/Response $ -> $ Map Tag Dynamic
              -> app.main/PendingResponse
            .catch $ quote $ Fn PendingResponse
              Fn JsObject $ -> $ Map Tag Dynamic
              -> JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ quote Trait
        'Response $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Response (:headers 'app.main/Headers)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ quote Trait
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            skir/create-server! on-request! $ Option :some $ {} (:port 11029)
          :examples $ []
          :schema $ quote $ Fn (-> js-ffi.node/NodeServerHost) (:features :js-ffi)
        'on-request! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-request! (req res)
            match
              get (:query req) |url
              (:some value)
                let
                    url $ decode-map-as value 'String
                    client $ unsafe-coerce axios 'app.main/Axios
                    options $ js-object (:maxRedirects 0)
                      :validateStatus $ fn (status)
                        hint-fn $ Fn Number $ -> Bool
                        and (>= status 200) (< status 500)
                    pending $ client .get url options
                    mapped $ pending .then $ fn (response)
                      hint-fn $ Fn app.main/Response
                        -> $ Map Tag Dynamic
                        :features :js-ffi
                      let
                          location $ .-location $ .-headers response
                        {} (:code 302) (:message |OK)
                          :headers $ {} $ :location
                            .unwrap-or (js-nullish->option location) |
                          :body nil
                  mapped .catch $ fn (err)
                    hint-fn $ Fn JsObject
                      -> $ Map Tag Dynamic
                      :features :js-ffi
                    let
                        stringify $ unsafe-coerce js/String $ quote
                          Fn JsObject $ -> String
                        message $ stringify err
                      println |failed message
                      {} (:code 500) (:message "|Fetch failed")
                        :headers $ {} $ :Content-Type |text/plain
                        :body $ {} (:message "|Fetch Failed") (:body message)
              (:none)
                {} (:code 400) (:message "|No URL provided")
                  :headers $ {} $ :Content-Type |text/plain
                  :body $ {} $ :message "|No URL provided"
          :examples $ []
          :schema $ quote $ Fn skir.schema/Request js-ffi.node/NodeServerResponseHost (-> Dynamic) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|nothing yet") &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (skir.core :as skir) (|axios :default axios)
