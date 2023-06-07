FROM geonetwork:4.2.4

USER root
RUN apt -y update && apt -y upgrade && apt -y install vim && apt clean
USER jetty

COPY WEB-INF/config-db/jdbc.properties /var/lib/jetty/webapps/geonetwork/WEB-INF/config-db/jdbc.properties
COPY WEB-INF/config-node/srv.xml /var/lib/jetty/webapps/geonetwork/WEB-INF/config-node/srv.xml
COPY WEB-INF/config.properties /var/lib/jetty/webapps/geonetwork/WEB-INF/config.properties
COPY catalog/components/search/mdview/partials/contact.html /var/lib/jetty/webapps/geonetwork/catalog/components/search/mdview/partials/contact.html
COPY catalog/locales/de-core.json /var/lib/jetty/webapps/geonetwork/catalog/locales/de-core.json
COPY catalog/locales/de-custom.json /var/lib/jetty/webapps/geonetwork/catalog/locales/de-custom.json
COPY catalog/style/srv_custom_style.less /var/lib/jetty/webapps/geonetwork/catalog/style/srv_custom_style.less
COPY catalog/style/gn_icons.less /var/lib/jetty/webapps/geonetwork/catalog/style/gn_icons.less
COPY catalog/views/default/less/gn_results_default.less /var/lib/jetty/webapps/geonetwork/catalog/views/default/less/gn_results_default.less
COPY catalog/views/default/less/gn_topics_default.less /var/lib/jetty/webapps/geonetwork/catalog/views/default/less/gn_topics_default.less
COPY catalog/views/default/less/gn_variables_default.less /var/lib/jetty/webapps/geonetwork/catalog/views/default/less/gn_variables_default.less
COPY catalog/views/default/templates/advancedSearchForm/defaultAdvancedSearchForm.html /var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/advancedSearchForm/defaultAdvancedSearchForm.html
COPY catalog/views/default/templates/footer.html /var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/footer.html
COPY catalog/views/default/templates/results.html /var/lib/jetty/webapps/geonetwork/catalog/views/default/templates/results.html
COPY Gn.js /var/lib/jetty/webapps/geonetwork/catalog/js/Gn.js
COPY log4j2.xml /var/lib/jetty/webapps/geonetwork/WEB-INF/classes/
