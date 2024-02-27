#!/usr/bin/env bash
sleep 5
ldapadd -x -H ldap://localhost -D "cn=admin,dc=cas,dc=local" -f /etc/ldap/content/base.ldif -w password
ldapadd -x -H ldap://localhost -D "cn=admin,dc=cas,dc=local" -f /etc/ldap/content/users.ldif -w password
ldappasswd -H ldap://localhost -s 'password' -D "cn=admin,dc=cas,dc=local" -x "uid=man1,ou=users,dc=cas,dc=local" -w password
ldappasswd -H ldap://localhost -s 'password' -D "cn=admin,dc=cas,dc=local" -x "uid=man2,ou=users,dc=cas,dc=local" -w password
ldappasswd -H ldap://localhost -s 'password' -D "cn=admin,dc=cas,dc=local" -x "uid=ing1,ou=users,dc=cas,dc=local" -w password
ldappasswd -H ldap://localhost -s 'password' -D "cn=admin,dc=cas,dc=local" -x "uid=ing2,ou=users,dc=cas,dc=local" -w password
ldappasswd -H ldap://localhost -s 'password' -D "cn=admin,dc=cas,dc=local" -x "uid=dev1,ou=users,dc=cas,dc=local" -w password
ldapadd -H ldap://localhost -x -D "cn=admin,dc=cas,dc=local" -f /etc/ldap/content/groups.ldif -w password
ldapmodify -H ldap://localhost -x -D "cn=admin,dc=cas,dc=local" -f /etc/ldap/content/addtogroup.ldif -w password
