#!/bin/bash

cat <<'EOF'>/usr/local/bin/git-deps
#!/bin/bash
podman run -v $(pwd):/mount -p 5000:5000 -it --rm localhost/git-deps git-deps "$@"
EOF
chmod +x /usr/local/bin/git-deps
