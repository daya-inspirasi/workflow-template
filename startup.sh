#! /bin/bash
if [ "$1" = "prod" ]; then
    autossh -f -M 0 -4 -i /home/app/.ssh/ssh-private-key -p 33426 -NTC -o "ServerAliveInterval 60" -o "ExitOnForwardFailure yes" -o "ServerAliveCountMax 3" -L 5000:api.creditbureauindonesia.co.id:443  -L 4445:underlying.creditbureauindonesia.co.id:443 -L 4443:wali-client.creditbureauindonesia.co.id:443  -L 5001:underlying-api.creditbureauindonesia.co.id:443 -L 5022:sftp.creditbureauindonesia.co.id:2022 -L 5002:underlyingv2-api.creditbureauindonesia.co.id:443 -L 4446:underlyingv2.creditbureauindonesia.co.id:443 -L 5009:192.168.0.127:22 pefindo-svc@172.31.0.2 -v
fi
/home/app/app
