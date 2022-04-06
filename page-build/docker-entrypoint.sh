#!/bin/bash

while [ 1 ]; do
	URL="$(sed -nE 's@.* tunneled with tls termination, (.*)$@\1@p' /var/proxy/ssh.log | tail -n1)"

	cat <<EOF > /var/proxy/index.html
<html>
<body>
Redirecting to <a href="$URL" target="_blank">Hubble UI</a>.
</body>
</html>
EOF

  sleep 1
done

