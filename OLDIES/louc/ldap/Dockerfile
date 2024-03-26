FROM osixia/openldap:1.5.0

#ADD config_files/addAll.sh /etc/ldap/content/addAll.sh
ADD config_files/ldap.conf /etc/ldap/ldap.conf
# expose the Prometheus server port
EXPOSE 389
EXPOSE 636
