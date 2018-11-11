import os
print("""
          .;'  ,;'             `;,  `;,
         .;'  ,;'  ,;'     `;,  `;,  `;,
         ::   ::   :   ( )   :   ::   ::
         ':.  ':.  ':. /_\ ,:'  ,:'  ,:'
          ':.  ':.    /___\    ,:'  ,:'
           ':.       /_____\      ,:'
                    / v.1.0 \\

            Welcome to Wi-Fi_Password!
             Click Enter to continue.

""")
WIFI = input("Wifi-Pass: ")
if WIFI == "" :
    os.system("sudo cat /data/misc/wifi/wpa_supplicant.conf")
    exit()
