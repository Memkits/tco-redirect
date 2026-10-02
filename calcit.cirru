
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |skir/
      :type-slots $ {}
    :test $ {} (:description |) (:init-fn 'app.test/main!) (:mode :native) (:reload-fn 'app.test/reload!)
      :feature-policy $ {}
      :modules $ [] |calcit-test/
      :type-slots $ {}
  :files $ {} $ 'app.main
    %{} 'FileEntry
      :defs $ {}
        'Axios $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Axios
            .get $ :: 'Fn $ {}
              :args $ [] 'Axios 'String 'JsObject
              :return 'app.main/PendingResponse
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ :: 'Trait
        'Headers $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Headers
            :location $ :: 'JsNullish 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ :: 'Trait
        'PendingResponse $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait PendingResponse
            .then $ :: 'Fn $ {}
              :args $ [] 'PendingResponse $ :: 'Fn
                {}
                  :args $ [] 'app.main/Response
                  :return $ :: 'Map 'Tag 'Dynamic
              :return 'app.main/PendingResponse
            .catch $ :: 'Fn $ {}
              :args $ [] 'PendingResponse $ :: 'Fn
                {}
                  :args $ [] 'JsObject
                  :return $ :: 'Map 'Tag 'Dynamic
              :return 'JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ :: 'Trait
        'Response $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Response (:headers 'app.main/Headers)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ :: 'Trait
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            skir/create-server! on-request! $ %some $ {} (:port 11029)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'js-ffi.node/NodeServerHost)
            :args $ []
            :features $ #{} :js-ffi
        'on-request! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-request! (req res)
            match
              get (:query req) |url
              (:some value)
                let
                    url $ assert-type value 'String
                    client $ unsafe-coerce axios 'app.main/Axios
                    options $ js-object (:maxRedirects 0)
                      :validateStatus $ fn (status)
                        hint-fn $ {}
                          :args $ [] 'Number
                          :return 'Bool
                        and (>= status 200) (< status 500)
                    pending $ client .get url options
                    mapped $ pending .then $ fn (response)
                      hint-fn $ {}
                        :args $ [] 'app.main/Response
                        :return $ :: 'Map 'Tag 'Dynamic
                        :features $ #{} :js-ffi
                      let
                          location $ .-location $ .-headers response
                        {} (:code 302) (:message |OK)
                          :headers $ {} $ :location
                            if (js-nullish? location) nil location
                          :body nil
                  mapped .catch $ fn (err)
                    hint-fn $ {}
                      :args $ [] 'JsObject
                      :return $ :: 'Map 'Tag 'Dynamic
                      :features $ #{} :js-ffi
                    let
                        stringify $ unsafe-coerce js/String $ :: 'Fn
                          {}
                            :args $ [] 'JsObject
                            :return 'String
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
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'skir.schema/Request 'js-ffi.node/NodeServerResponseHost
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|nothing yet") &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (skir.core :as skir) (|axios :default axios)
