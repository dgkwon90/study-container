#!/bin/bash

mongosh -- "$MONGO_INITDB_DATABASE" <<EOF

db.createUser(
  {
    user:  "$MONGO_USERNAME",
    pwd: "$MONGO_PASSWORD",
    roles: [{"role": "dbOwner", "db": "$MONGO_INITDB_DATABASE"}]
  }
);

EOF
