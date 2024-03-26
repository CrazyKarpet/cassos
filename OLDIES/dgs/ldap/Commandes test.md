## Test user admin / user read only

```bash
sudo docker exec -it <ID_DockerContainer> bash

ldapsearch -x -b "dc=cpnv-cas1,dc=ch" -H ldap://ldapserver:389 -D "cn=user-ro,dc=cpnv-cas1,dc=ch" -w pass123

ldapsearch -x -b "dc=cpnv-cas1,dc=ch" -H ldap://ldapserver:389 -D "cn=admin,dc=cpnv-cas1,dc=ch" -w pass123
```

## PhPMyAdmin Web Interface
```
login dn : cn=user-ro,dc=cpnv-cas1,dc=ch
psw : pass123
```

## Tests avec user crée pour CAS

```
ldapsearch -x -b "dc=cpnv-cas1,dc=ch" -H ldap://ldapserver:389 -D "cn=user1,ou=People,dc=cpnv-cas1,dc=ch" -w Pa$$w0rd301

login dn : cn=user1,ou=People,dc=cpnv-cas1,dc=ch
psw : Pa$$w0rd301
```