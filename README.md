# nodemcu-blinking-led

1. Build firmware https://nodemcu-build.com/index.php
2. Flash it using esptool.py https://nodemcu.readthedocs.io/en/master/getting-started/#esptoolpy
This was built against the master branch and includes the following modules: cron, file, gpio, net, node, tmr, uart, websocket, wifi.
3. `esptool.py.exe --port COM3 --baud 115200 write_flash -fm qio 0x00000 nodemcu-master-9-modules-2020-06-08-15-35-54-float.bin`
4. `nodemcu-tool.cmd upload secrets.lua` https://github.com/andidittrich/NodeMCU-Tool
4. `nodemcu-tool.cmd upload init.lua --run` https://github.com/andidittrich/NodeMCU-Tool
5. Sometimes I need to click RST on the device to refresh the program
5. nodemcu-tool.cmd terminal
