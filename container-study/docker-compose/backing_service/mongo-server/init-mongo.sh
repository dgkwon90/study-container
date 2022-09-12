#!/bin/bash

mongo -- "$MONGO_INITDB_DATABASE" <<EOF
db.createUser(
  {
    user:  "$MONGO_USERNAME",
    pwd: "$MONGO_PASSWORD",
    roles: [{"role": "userAdminAnyDatabase", "db": "admin"}]
  }
);

db.grantRolesToUser("$MONGO_USERNAME", [{ role: 'root', db: 'admin' }])

EOF
