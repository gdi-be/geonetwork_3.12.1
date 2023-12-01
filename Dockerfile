FROM geonetwork:4.2.5

USER root
RUN apt -y update && apt -y upgrade && apt -y install vim git && apt clean
USER jetty

WORKDIR /var/lib/jetty/webapps/geonetwork
RUN git init . && git add . && git config --global user.email "you@example.com" && git config --global user.name "Your Name" && git commit -m 'Initial commit'
COPY patch /tmp/patch
RUN patch -p1 < /tmp/patch
COPY overrides/footer.html /var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/footer.html
COPY overrides/top-toolbar.html /var/lib/jetty/webapps/geonetwork/catalog/templates/top-toolbar.html
COPY overrides/top-toolbar.html /var/lib/jetty/webapps/geonetwork/catalog/components/toolbar/partials/top-toolbar.html
COPY overrides/logo.png /var/lib/jetty/webapps/geonetwork/catalog/views/default/images/
RUN rm -rf /var/lib/jetty/webapps/geonetwork/catalog/templates/WEB-INF/data/wro4j-cache.mv.db
WORKDIR /var/lib/jetty

# COPY WEB-INF/config-db/jdbc.properties /var/lib/jetty/webapps/geonetwork/WEB-INF/config-db/jdbc.properties
# COPY WEB-INF/config-node/srv.xml /var/lib/jetty/webapps/geonetwork/WEB-INF/config-node/srv.xml
# COPY WEB-INF/config.properties /var/lib/jetty/webapps/geonetwork/WEB-INF/config.properties
# COPY catalog/components/search/mdview/partials/contact.html /var/lib/jetty/webapps/geonetwork/catalog/components/search/mdview/partials/contact.html
# COPY catalog/locales/de-core.json /var/lib/jetty/webapps/geonetwork/catalog/locales/de-core.json
# COPY catalog/locales/de-custom.json /var/lib/jetty/webapps/geonetwork/catalog/locales/de-custom.json
# COPY catalog/style/srv_custom_style.less /var/lib/jetty/webapps/geonetwork/catalog/style/srv_custom_style.less
# COPY catalog/style/gn_icons.less /var/lib/jetty/webapps/geonetwork/catalog/style/gn_icons.less
# COPY catalog/views/default/less/gn_results_default.less /var/lib/jetty/webapps/geonetwork/catalog/views/default/less/gn_results_default.less
# COPY catalog/views/default/less/gn_topics_default.less /var/lib/jetty/webapps/geonetwork/catalog/views/default/less/gn_topics_default.less
# COPY catalog/views/default/less/gn_variables_default.less /var/lib/jetty/webapps/geonetwork/catalog/views/default/less/gn_variables_default.less
# COPY catalog/views/default/templates/advancedSearchForm/defaultAdvancedSearchForm.html /var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/advancedSearchForm/defaultAdvancedSearchForm.html
# COPY catalog/views/default/templates/footer.html /var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/footer.html
# COPY catalog/views/default/templates/results.html /var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/results.html
# COPY Gn.js /var/lib/jetty/webapps/geonetwork/catalog/js/Gn.js
# COPY log4j2.xml /var/lib/jetty/webapps/geonetwork/WEB-INF/classes/
# COPY summary.html /var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/recordView/summary.html

# docker cp WEB-INF/config-db/jdbc.properties                                                 gnos:/var/lib/jetty/webapps/geonetwork/WEB-INF/config-db/jdbc.properties
# docker cp WEB-INF/config-node/srv.xml                                                       gnos:/var/lib/jetty/webapps/geonetwork/WEB-INF/config-node/srv.xml
# docker cp WEB-INF/config.properties                                                         gnos:/var/lib/jetty/webapps/geonetwork/WEB-INF/config.properties
# docker cp catalog/components/search/mdview/partials/contact.html                            gnos:/var/lib/jetty/webapps/geonetwork/catalog/components/search/mdview/partials/contact.html
# docker cp catalog/locales/de-core.json                                                      gnos:/var/lib/jetty/webapps/geonetwork/catalog/locales/de-core.json
# docker cp catalog/locales/de-custom.json                                                    gnos:/var/lib/jetty/webapps/geonetwork/catalog/locales/de-custom.json
# docker cp catalog/style/srv_custom_style.less                                               gnos:/var/lib/jetty/webapps/geonetwork/catalog/style/srv_custom_style.less
# docker cp catalog/style/gn_icons.less                                                       gnos:/var/lib/jetty/webapps/geonetwork/catalog/style/gn_icons.less
# docker cp catalog/views/default/less/gn_results_default.less                                gnos:/var/lib/jetty/webapps/geonetwork/catalog/views/default/less/gn_results_default.less
# docker cp catalog/views/default/less/gn_topics_default.less                                 gnos:/var/lib/jetty/webapps/geonetwork/catalog/views/default/less/gn_topics_default.less
# docker cp catalog/views/default/less/gn_variables_default.less                              gnos:/var/lib/jetty/webapps/geonetwork/catalog/views/default/less/gn_variables_default.less
# docker cp catalog/views/default/templates/advancedSearchForm/defaultAdvancedSearchForm.html gnos:/var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/advancedSearchForm/defaultAdvancedSearchForm.html
# docker cp catalog/views/default/templates/footer.html                                       gnos:/var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/footer.html
# docker cp catalog/views/default/templates/results.html                                      gnos:/var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/results.html
# docker cp Gn.js                                                                             gnos:/var/lib/jetty/webapps/geonetwork/catalog/js/Gn.js
# docker cp log4j2.xml                                                                        gnos:/var/lib/jetty/webapps/geonetwork/WEB-INF/classes/
# docker cp summary.html                                                                      gnos:/var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/recordView/summary.html
