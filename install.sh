#!/bin/sh

if [ ! -f bin/nadtmythconvert ]
then
      echo "must be run from source directory"
      exit 1
fi

install -o mythtv -g mythtv -m 775 -d /home/mythtv/bin
install -o mythtv -g mythtv -m 775 -d /home/mythtv/lib
install -o mythtv -g mythtv -m 775 -d /home/mythtv/etc

install -o mythtv -g mythtv -m 775 bin/nadtmythconvert /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/nadtmyth_cleanlinks /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/nadtmyth_cleanconverted /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/nadtmyth_massenqueue /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/rsync-transcoded-to-external-hd /home/mythtv/bin
install -o root -g root -m 775 etc/nadtmythconvert.crondaily /etc/cron.daily/nadtmythconvert
install -o mythtv -g mythtv -m 664 etc/nadtmythconvert.yaml /home/mythtv/etc
pax -r -w lib /home/mythtv

find /home/mythtv/lib -name "*.pm" | xargs chown mythtv:mythtv
find /home/mythtv/lib -name "*.pm" | xargs chmod 664
