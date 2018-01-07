sshpass -p "$SSH_PASS" \
    ssh -4 -o UserKnownHostsFile=/dev/null \
    -o StrictHostKeyChecking=no \
    $SSH_URL \
    -p $SSH_PORT \
    -l $SSH_USER \
    -L 0.0.0.0:$REMOTE_PROXY_PORT:$REMOTE_HOST:$LOCAL_PROXY_PORT
