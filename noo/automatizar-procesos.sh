#!/bin/bash
echo "crontab -e"

# Cada Hora Se Ejecuta El Proceso
#0 * * * * /root/proceso-automatico.sh


# 1 minuto               0-59  1,3,5  3-9
# 2 hora                 0-23  1,3,5  3-9
# 3 dia del mes          1-31  1,3,5  3-9
# 4 mes                  1-12  3,6,9  1-12
# 5 dia de la semana     0-7   0,3,7  0-7

# * * * * * =
# 0 */1 * * * =  cada hora

# en cada reinicio
# @reboot         Run once, at startup.
# @yearly         Run once a year,  "0 0 1 1 *".
# @monthly        Run once a month, "0 0 1 * *".
# @weekly         Run once a week,  "0 0 * * 0".
# @daily          Run once a day,   "0 0 * * *".
# @hourly         Run once an hour, "0 * * * *".

# backup hourly -> mysql-data
#0 * * * * /var/root/crontab/backup-mysql-data.sh

exit 0;
