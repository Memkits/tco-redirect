
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |skir/ |lilac/
  :entries $ {}
    :test $ {} (:init-fn |app.test/main!) (:reload-fn |app.test/reload!)
      :modules $ [] |calcit-test/
  :files $ {}
    |app.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1606310749711) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1606310749711) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1606310749711) (:by |u0) (:text |main!)
              |r $ %{} :Expr (:at 1606310749711) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1670899073234) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1670899073234) (:by |u0) (:text |skir/create-server!)
                  |j $ %{} :Leaf (:at 1670899073234) (:by |u0) (:text |on-request!)
                  |r $ %{} :Expr (:at 1670899073234) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1670899073234) (:by |u0) (:text |{})
                      |b $ %{} :Expr (:at 1670910321141) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1670910321718) (:by |u0) (:text |:port)
                          |b $ %{} :Leaf (:at 1670910354973) (:by |u0) (:text |11029)
        |on-request! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1670899081311) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1670899081311) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1670899081311) (:by |u0) (:text |on-request!)
              |r $ %{} :Expr (:at 1670899081311) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1670902693107) (:by |u0) (:text |req)
                  |j $ %{} :Leaf (:at 1670899081311) (:by |u0) (:text |res)
              |v $ %{} :Expr (:at 1670909463399) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1670909464008) (:by |u0) (:text |let)
                  |L $ %{} :Expr (:at 1670909465050) (:by |u0)
                    :data $ {}
                      |T $ %{} :Expr (:at 1670909476891) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1670909467616) (:by |u0) (:text |url)
                          |b $ %{} :Expr (:at 1670909472348) (:by |u0)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1670909473904) (:by |u0) (:text |get)
                              |T $ %{} :Expr (:at 1670909471372) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1670909471372) (:by |u0) (:text |:query)
                                  |b $ %{} :Leaf (:at 1670909471372) (:by |u0) (:text |req)
                              |b $ %{} :Leaf (:at 1670909772581) (:by |u0) (:text "|\"url")
                  |T $ %{} :Expr (:at 1670909478705) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1670909479091) (:by |u0) (:text |if)
                      |L $ %{} :Expr (:at 1670909479510) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1670909480373) (:by |u0) (:text |some?)
                          |b $ %{} :Leaf (:at 1670909482324) (:by |u0) (:text |url)
                      |T $ %{} :Expr (:at 1670909618787) (:by |u0)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1670909619312) (:by |u0) (:text |->)
                          |T $ %{} :Expr (:at 1670909485227) (:by |u0)
                            :data $ {}
                              |5 $ %{} :Leaf (:at 1670909790402) (:by |u0) (:text |.!get)
                              |D $ %{} :Leaf (:at 1670909786898) (:by |u0) (:text |axios)
                              |L $ %{} :Leaf (:at 1670909614777) (:by |u0) (:text |url)
                              |V $ %{} :Expr (:at 1670909882214) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1670909885602) (:by |u0) (:text |js-object)
                                  |b $ %{} :Expr (:at 1670909886229) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670909910458) (:by |u0) (:text "|\"maxRedirects")
                                      |b $ %{} :Leaf (:at 1670909911759) (:by |u0) (:text |0)
                                  |h $ %{} :Expr (:at 1670910172928) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670910175546) (:by |u0) (:text "|\"validateStatus")
                                      |b $ %{} :Expr (:at 1670910176475) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670910177320) (:by |u0) (:text |fn)
                                          |b $ %{} :Expr (:at 1670910183598) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1670910184299) (:by |u0) (:text |status)
                                          |h $ %{} :Expr (:at 1670910185549) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1670910189378) (:by |u0) (:text |and)
                                              |b $ %{} :Expr (:at 1670910192082) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1670910193022) (:by |u0) (:text |>=)
                                                  |b $ %{} :Leaf (:at 1670910193836) (:by |u0) (:text |status)
                                                  |h $ %{} :Leaf (:at 1670910195317) (:by |u0) (:text |200)
                                              |h $ %{} :Expr (:at 1670910196302) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1670910197162) (:by |u0) (:text |<)
                                                  |b $ %{} :Leaf (:at 1670910198914) (:by |u0) (:text |status)
                                                  |h $ %{} :Leaf (:at 1670910200276) (:by |u0) (:text |500)
                          |b $ %{} :Expr (:at 1670909619936) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1670909714734) (:by |u0) (:text |.!then)
                              |b $ %{} :Expr (:at 1670909622309) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1670909623298) (:by |u0) (:text |fn)
                                  |b $ %{} :Expr (:at 1670909623640) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670909624968) (:by |u0) (:text |response)
                                  |e $ %{} :Expr (:at 1670909675528) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670909678241) (:by |u0) (:text |js/console.log)
                                  |h $ %{} :Expr (:at 1670909631925) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670909631925) (:by |u0) (:text |{})
                                      |b $ %{} :Expr (:at 1670909631925) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670909631925) (:by |u0) (:text |:code)
                                          |b $ %{} :Leaf (:at 1670910239070) (:by |u0) (:text |302)
                                      |h $ %{} :Expr (:at 1670909631925) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670909631925) (:by |u0) (:text |:message)
                                          |b $ %{} :Leaf (:at 1670909631925) (:by |u0) (:text ||OK)
                                      |l $ %{} :Expr (:at 1670909631925) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670909631925) (:by |u0) (:text |:headers)
                                          |b $ %{} :Expr (:at 1670909631925) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1670909631925) (:by |u0) (:text |{})
                                              |b $ %{} :Expr (:at 1670910245454) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1670910247631) (:by |u0) (:text |:location)
                                                  |b $ %{} :Expr (:at 1670910248203) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1670910248203) (:by |u0) (:text |.-location)
                                                      |b $ %{} :Expr (:at 1670910248203) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1670910248203) (:by |u0) (:text |.-headers)
                                                          |b $ %{} :Leaf (:at 1670910248203) (:by |u0) (:text |response)
                                      |o $ %{} :Expr (:at 1670910251511) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670910252194) (:by |u0) (:text |:body)
                                          |b $ %{} :Leaf (:at 1670910253923) (:by |u0) (:text |nil)
                          |h $ %{} :Expr (:at 1670909636262) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1670909712893) (:by |u0) (:text |.!catch)
                              |b $ %{} :Expr (:at 1670909637869) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1670909638778) (:by |u0) (:text |fn)
                                  |b $ %{} :Expr (:at 1670909639263) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670909639657) (:by |u0) (:text |err)
                                  |e $ %{} :Expr (:at 1670909936237) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670909939329) (:by |u0) (:text |println)
                                      |b $ %{} :Leaf (:at 1670909940473) (:by |u0) (:text "|\"failed")
                                      |h $ %{} :Leaf (:at 1670909967306) (:by |u0) (:text |err)
                                  |h $ %{} :Expr (:at 1670909641374) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |{})
                                      |b $ %{} :Expr (:at 1670909641374) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |:code)
                                          |b $ %{} :Leaf (:at 1670909643763) (:by |u0) (:text |500)
                                      |h $ %{} :Expr (:at 1670909641374) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |:message)
                                          |b $ %{} :Leaf (:at 1670909648126) (:by |u0) (:text "||Fetch failed")
                                      |l $ %{} :Expr (:at 1670909641374) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |:headers)
                                          |b $ %{} :Expr (:at 1670909641374) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |{})
                                              |b $ %{} :Expr (:at 1670909641374) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |:Content-Type)
                                                  |b $ %{} :Leaf (:at 1670909658450) (:by |u0) (:text ||text/plain)
                                      |o $ %{} :Expr (:at 1670909641374) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |:body)
                                          |b $ %{} :Expr (:at 1670909641374) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |{})
                                              |b $ %{} :Expr (:at 1670909641374) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |:message)
                                                  |b $ %{} :Leaf (:at 1670909666805) (:by |u0) (:text "||Fetch Failed")
                                              |h $ %{} :Expr (:at 1670909641374) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1670909641374) (:by |u0) (:text |:body)
                                                  |b $ %{} :Expr (:at 1670909670099) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1670909671070) (:by |u0) (:text |str)
                                                      |b $ %{} :Leaf (:at 1670909672499) (:by |u0) (:text |err)
                      |b $ %{} :Expr (:at 1670909487423) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1670909488115) (:by |u0) (:text |{})
                          |b $ %{} :Expr (:at 1670909488606) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1670909497777) (:by |u0) (:text |:code)
                              |b $ %{} :Leaf (:at 1670909499443) (:by |u0) (:text |400)
                          |h $ %{} :Expr (:at 1670909500105) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1670909501602) (:by |u0) (:text |:message)
                              |b $ %{} :Leaf (:at 1670909509761) (:by |u0) (:text "|\"No URL provided")
                          |j $ %{} :Expr (:at 1670910506838) (:by |u0)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1670910509756) (:by |u0) (:text |:headers)
                              |T $ %{} :Expr (:at 1670910511135) (:by |u0)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1670910511580) (:by |u0) (:text |{})
                                  |T $ %{} :Expr (:at 1670909530068) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670909530068) (:by |u0) (:text |:Content-Type)
                                      |b $ %{} :Leaf (:at 1670909952345) (:by |u0) (:text ||text/plain)
                          |l $ %{} :Expr (:at 1670909515213) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1670909515728) (:by |u0) (:text |:body)
                              |b $ %{} :Expr (:at 1670909516121) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1670909516329) (:by |u0) (:text |{})
                                  |b $ %{} :Expr (:at 1670909516656) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1670909517567) (:by |u0) (:text |:message)
                                      |b $ %{} :Leaf (:at 1670909524077) (:by |u0) (:text "|\"No URL provided")
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1606310753106) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1606310753106) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1606310753106) (:by |u0) (:text |reload!)
              |r $ %{} :Expr (:at 1606310753106) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1606310801441) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1670899028089) (:by |u0) (:text |println)
                  |j $ %{} :Leaf (:at 1670899031324) (:by |u0) (:text "|\"nothing yet")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1606310745262) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1606310745262) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1606310745262) (:by |u0) (:text |app.main)
            |r $ %{} :Expr (:at 1625340359278) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1625340360591) (:by |u0) (:text |:require)
                |j $ %{} :Expr (:at 1670899061107) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1670899061107) (:by |u0) (:text |skir.core)
                    |j $ %{} :Leaf (:at 1670899061107) (:by |u0) (:text |:as)
                    |r $ %{} :Leaf (:at 1670899061107) (:by |u0) (:text |skir)
                |n $ %{} :Expr (:at 1670909578063) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1670909579548) (:by |u0) (:text "|\"axios")
                    |b $ %{} :Leaf (:at 1670909784453) (:by |u0) (:text |:default)
                    |h $ %{} :Leaf (:at 1670909583723) (:by |u0) (:text |axios)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
