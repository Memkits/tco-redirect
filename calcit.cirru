
{}
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |skir/ |lilac/
  :entries $ {}
    :test $ {} (:init-fn |app.test/main!) (:reload-fn |app.test/reload!)
      :modules $ [] |calcit-test/
  :ir $ {} (:package |app)
    :files $ {}
      |app.main $ {}
        :configs $ {} (:extension nil)
        :defs $ {}
          |main! $ {} (:at 1606310749711) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1606310749711) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1606310749711) (:by |u0) (:text |main!) (:type :leaf)
              |r $ {} (:at 1606310749711) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1670899073234) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1670899073234) (:by |u0) (:text |skir/create-server!) (:type :leaf)
                  |j $ {} (:at 1670899073234) (:by |u0) (:text |on-request!) (:type :leaf)
                  |r $ {} (:at 1670899073234) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1670899073234) (:by |u0) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1670910321141) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1670910321718) (:by |u0) (:text |:port) (:type :leaf)
                          |b $ {} (:at 1670910354973) (:by |u0) (:text |11029) (:type :leaf)
          |on-request! $ {} (:at 1670899081311) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1670899081311) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1670899081311) (:by |u0) (:text |on-request!) (:type :leaf)
              |r $ {} (:at 1670899081311) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1670902693107) (:by |u0) (:text |req) (:type :leaf)
                  |j $ {} (:at 1670899081311) (:by |u0) (:text |res) (:type :leaf)
              |v $ {} (:at 1670909463399) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1670909464008) (:by |u0) (:text |let) (:type :leaf)
                  |L $ {} (:at 1670909465050) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1670909476891) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1670909467616) (:by |u0) (:text |url) (:type :leaf)
                          |b $ {} (:at 1670909472348) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1670909473904) (:by |u0) (:text |get) (:type :leaf)
                              |T $ {} (:at 1670909471372) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1670909471372) (:by |u0) (:text |:query) (:type :leaf)
                                  |b $ {} (:at 1670909471372) (:by |u0) (:text |req) (:type :leaf)
                              |b $ {} (:at 1670909772581) (:by |u0) (:text "|\"url") (:type :leaf)
                  |T $ {} (:at 1670909478705) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1670909479091) (:by |u0) (:text |if) (:type :leaf)
                      |L $ {} (:at 1670909479510) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1670909480373) (:by |u0) (:text |some?) (:type :leaf)
                          |b $ {} (:at 1670909482324) (:by |u0) (:text |url) (:type :leaf)
                      |T $ {} (:at 1670909618787) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1670909619312) (:by |u0) (:text |->) (:type :leaf)
                          |T $ {} (:at 1670909485227) (:by |u0) (:type :expr)
                            :data $ {}
                              |5 $ {} (:at 1670909790402) (:by |u0) (:text |.!get) (:type :leaf)
                              |D $ {} (:at 1670909786898) (:by |u0) (:text |axios) (:type :leaf)
                              |L $ {} (:at 1670909614777) (:by |u0) (:text |url) (:type :leaf)
                              |V $ {} (:at 1670909882214) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1670909885602) (:by |u0) (:text |js-object) (:type :leaf)
                                  |b $ {} (:at 1670909886229) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670909910458) (:by |u0) (:text "|\"maxRedirects") (:type :leaf)
                                      |b $ {} (:at 1670909911759) (:by |u0) (:text |0) (:type :leaf)
                                  |h $ {} (:at 1670910172928) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670910175546) (:by |u0) (:text "|\"validateStatus") (:type :leaf)
                                      |b $ {} (:at 1670910176475) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1670910177320) (:by |u0) (:text |fn) (:type :leaf)
                                          |b $ {} (:at 1670910183598) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1670910184299) (:by |u0) (:text |status) (:type :leaf)
                                          |h $ {} (:at 1670910185549) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1670910189378) (:by |u0) (:text |and) (:type :leaf)
                                              |b $ {} (:at 1670910192082) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1670910193022) (:by |u0) (:text |>=) (:type :leaf)
                                                  |b $ {} (:at 1670910193836) (:by |u0) (:text |status) (:type :leaf)
                                                  |h $ {} (:at 1670910195317) (:by |u0) (:text |200) (:type :leaf)
                                              |h $ {} (:at 1670910196302) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1670910197162) (:by |u0) (:text |<) (:type :leaf)
                                                  |b $ {} (:at 1670910198914) (:by |u0) (:text |status) (:type :leaf)
                                                  |h $ {} (:at 1670910200276) (:by |u0) (:text |500) (:type :leaf)
                          |b $ {} (:at 1670909619936) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1670909714734) (:by |u0) (:text |.!then) (:type :leaf)
                              |b $ {} (:at 1670909622309) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1670909623298) (:by |u0) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1670909623640) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670909624968) (:by |u0) (:text |response) (:type :leaf)
                                  |e $ {} (:at 1670909675528) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670909678241) (:by |u0) (:text |js/console.log) (:type :leaf)
                                  |h $ {} (:at 1670909631925) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670909631925) (:by |u0) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1670909631925) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1670909631925) (:by |u0) (:text |:code) (:type :leaf)
                                          |b $ {} (:at 1670910239070) (:by |u0) (:text |302) (:type :leaf)
                                      |h $ {} (:at 1670909631925) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1670909631925) (:by |u0) (:text |:message) (:type :leaf)
                                          |b $ {} (:at 1670909631925) (:by |u0) (:text ||OK) (:type :leaf)
                                      |l $ {} (:at 1670909631925) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1670909631925) (:by |u0) (:text |:headers) (:type :leaf)
                                          |b $ {} (:at 1670909631925) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1670909631925) (:by |u0) (:text |{}) (:type :leaf)
                                              |b $ {} (:at 1670910245454) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1670910247631) (:by |u0) (:text |:location) (:type :leaf)
                                                  |b $ {} (:at 1670910248203) (:by |u0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1670910248203) (:by |u0) (:text |.-location) (:type :leaf)
                                                      |b $ {} (:at 1670910248203) (:by |u0) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1670910248203) (:by |u0) (:text |.-headers) (:type :leaf)
                                                          |b $ {} (:at 1670910248203) (:by |u0) (:text |response) (:type :leaf)
                                      |o $ {} (:at 1670910251511) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1670910252194) (:by |u0) (:text |:body) (:type :leaf)
                                          |b $ {} (:at 1670910253923) (:by |u0) (:text |nil) (:type :leaf)
                          |h $ {} (:at 1670909636262) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1670909712893) (:by |u0) (:text |.!catch) (:type :leaf)
                              |b $ {} (:at 1670909637869) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1670909638778) (:by |u0) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1670909639263) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670909639657) (:by |u0) (:text |err) (:type :leaf)
                                  |e $ {} (:at 1670909936237) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670909939329) (:by |u0) (:text |println) (:type :leaf)
                                      |b $ {} (:at 1670909940473) (:by |u0) (:text "|\"failed") (:type :leaf)
                                      |h $ {} (:at 1670909967306) (:by |u0) (:text |err) (:type :leaf)
                                  |h $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670909641374) (:by |u0) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1670909641374) (:by |u0) (:text |:code) (:type :leaf)
                                          |b $ {} (:at 1670909643763) (:by |u0) (:text |500) (:type :leaf)
                                      |h $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1670909641374) (:by |u0) (:text |:message) (:type :leaf)
                                          |b $ {} (:at 1670909648126) (:by |u0) (:text "||Fetch failed") (:type :leaf)
                                      |l $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1670909641374) (:by |u0) (:text |:headers) (:type :leaf)
                                          |b $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1670909641374) (:by |u0) (:text |{}) (:type :leaf)
                                              |b $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1670909641374) (:by |u0) (:text |:Content-Type) (:type :leaf)
                                                  |b $ {} (:at 1670909658450) (:by |u0) (:text ||text/plain) (:type :leaf)
                                      |o $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1670909641374) (:by |u0) (:text |:body) (:type :leaf)
                                          |b $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1670909641374) (:by |u0) (:text |{}) (:type :leaf)
                                              |b $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1670909641374) (:by |u0) (:text |:message) (:type :leaf)
                                                  |b $ {} (:at 1670909666805) (:by |u0) (:text "||Fetch Failed") (:type :leaf)
                                              |h $ {} (:at 1670909641374) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1670909641374) (:by |u0) (:text |:body) (:type :leaf)
                                                  |b $ {} (:at 1670909670099) (:by |u0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1670909671070) (:by |u0) (:text |str) (:type :leaf)
                                                      |b $ {} (:at 1670909672499) (:by |u0) (:text |err) (:type :leaf)
                      |b $ {} (:at 1670909487423) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1670909488115) (:by |u0) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1670909488606) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1670909497777) (:by |u0) (:text |:code) (:type :leaf)
                              |b $ {} (:at 1670909499443) (:by |u0) (:text |400) (:type :leaf)
                          |h $ {} (:at 1670909500105) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1670909501602) (:by |u0) (:text |:message) (:type :leaf)
                              |b $ {} (:at 1670909509761) (:by |u0) (:text "|\"No URL provided") (:type :leaf)
                          |j $ {} (:at 1670910506838) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1670910509756) (:by |u0) (:text |:headers) (:type :leaf)
                              |T $ {} (:at 1670910511135) (:by |u0) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1670910511580) (:by |u0) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1670909530068) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670909530068) (:by |u0) (:text |:Content-Type) (:type :leaf)
                                      |b $ {} (:at 1670909952345) (:by |u0) (:text ||text/plain) (:type :leaf)
                          |l $ {} (:at 1670909515213) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1670909515728) (:by |u0) (:text |:body) (:type :leaf)
                              |b $ {} (:at 1670909516121) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1670909516329) (:by |u0) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1670909516656) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1670909517567) (:by |u0) (:text |:message) (:type :leaf)
                                      |b $ {} (:at 1670909524077) (:by |u0) (:text "|\"No URL provided") (:type :leaf)
          |reload! $ {} (:at 1606310753106) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1606310753106) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1606310753106) (:by |u0) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1606310753106) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1606310801441) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1670899028089) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1670899031324) (:by |u0) (:text "|\"nothing yet") (:type :leaf)
        :ns $ {} (:at 1606310745262) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1606310745262) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1606310745262) (:by |u0) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1625340359278) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1625340360591) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1670899061107) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1670899061107) (:by |u0) (:text |skir.core) (:type :leaf)
                    |j $ {} (:at 1670899061107) (:by |u0) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1670899061107) (:by |u0) (:text |skir) (:type :leaf)
                |n $ {} (:at 1670909578063) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1670909579548) (:by |u0) (:text "|\"axios") (:type :leaf)
                    |b $ {} (:at 1670909784453) (:by |u0) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1670909583723) (:by |u0) (:text |axios) (:type :leaf)
        :proc $ {} (:at 1606310745262) (:by |u0) (:type :expr)
          :data $ {}
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
