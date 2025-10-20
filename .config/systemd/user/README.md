After create te systemd symlink

[hiaki@archlinux ~]$ systemctl --user daemon-reload
[hiaki@archlinux ~]$ systemctl --user enable --now nightlight-on.timer
Created symlink '/home/hiaki/.config/systemd/user/timers.target.wants/nightlight-on.timer' → '/home/hiaki/.config/systemd/user/nightlight-on.timer'.
[hiaki@archlinux ~]$ systemctl --user enable --now nightlight-off.timer
Created symlink '/home/hiaki/.config/systemd/user/timers.target.wants/nightlight-off.timer' → '/home/hiaki/.config/systemd/user/nightlight-off.timer'.
[hiaki@archlinux ~]$ systemctl --user list-timers
NEXT                            LEFT LAST PASSED UNIT                 ACTIVATES         
    
Mon 2025-10-20 18:00:00 -03 2h 57min -         - nightlight-on.timer  nightlight-on.service
Tue 2025-10-21 06:00:00 -03      14h -         - nightlight-off.timer nightlight-off.service

2 timers listed.
Pass --all to see loaded but inactive timers, too.
[hiaki@archlinux ~]$ 
