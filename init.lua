local secrets = require 'secrets';

print("Hello Konrad :)");

print("Setting up WiFi to Station mode.");
wifi.setmode(wifi.STATION);

print("Setting configuration object for WiFi connection");
print(secrets.ID);
print(secrets.PASS);
station_cfg = {};
station_cfg.ssid = secrets.ID;
station_cfg.pwd = secrets.PASS;

function showip(params) print("Connected to Wifi. Got IP: " .. params.IP); end
function connected(params) print("Connected to Wifi."); end

station_cfg.connected_cb = connected;
station_cfg.got_ip_cb = showip;

print("Connection Status");
print(wifi.sta.status())
print("Connecting to WiFi");
wifi.sta.config(station_cfg);

function status_wi_fi() print(wifi.sta.status()) end

darktimer = tmr.create()
darktimer:register(1500, tmr.ALARM_AUTO, status_wi_fi)

darktimer:start()
-- wifi.STA_IDLE = 1
-- wifi.STA_CONNECTING
-- wifi.STA_WRONGPWD
-- wifi.STA_APNOTFOUND = 3
-- wifi.STA_FAIL
-- wifi.STA_GOTIP = 5
