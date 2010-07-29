#!/bin/sh

if [ ! -f bin/nadtmythconvert ]
then
      echo "must be run from source directory"
      exit 1
fi

install -o mythtv -g mythtv -m 775 -d /home/mythtv/bin
install -o mythtv -g mythtv -m 775 -d /home/mythtv/lib
install -o mythtv -g mythtv -m 775 -d /home/mythtv/etc
install -o mythtv -g mythtv -m 770 -d /home/mythtv/var
install -o mythtv -g mythtv -m 770 -d /home/mythtv/var/run

install -o mythtv -g mythtv -m 775 bin/nadtmythconvert /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/nadtmythconvert_archive /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/nadtmythconvert_linktree /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/mythpublish_enqueue /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/mythpublish_select /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/mythpublish_publish /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/mythpublish_inform /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/mythpublish_purge /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/mythpublish_updatestatus /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/nadtmyth_cleanup /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/nadtmyth_massenqueue /home/mythtv/bin
install -o mythtv -g mythtv -m 775 bin/rsync-transcoded-to-external-hd /home/mythtv/bin
install -o root -g root -m 775 etc/nadtmythconvert.crondaily /etc/cron.daily/nadtmythconvert
install -o root -g root -m 644 etc/mythpublish.cron /etc/cron.d/mythpublish
install -o mythtv -g mythtv -m 640 etc/nadtmythconvert.yaml /home/mythtv/etc
install -o mythtv -g mythtv -m 640 etc/mythpublish_inform_subject.template /home/mythtv/etc
install -o mythtv -g mythtv -m 640 etc/mythpublish_inform_body.template /home/mythtv/etc
pax -r -w lib /home/mythtv

find /home/mythtv/lib -name "*.pm" | xargs chown mythtv:mythtv
find /home/mythtv/lib -name "*.pm" | xargs chmod 664
