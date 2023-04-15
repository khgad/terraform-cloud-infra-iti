#!/bin/bash
touch ~/tf-key.pem
echo "${tls_private_key.tls-key.private_key_pem}" > ~/tf-key.pem
echo "test" > ~/test.txt
