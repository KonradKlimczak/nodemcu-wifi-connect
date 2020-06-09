local secrets = require 'secrets';

print("Hello Konrad :)");

print("Setting up WiFi to Station mode.");
wifi.setmode(wifi.STATION);

print("Setting configuration object for WiFi connection");
station_cfg={};
station_cfg.ssid=secrets.ID;
station_cfg.pwd=secrets.PASS;

function showip(params)
    print("Connected to Wifi. Got IP: " .. params.IP);
    print("Sending test request.");
    http.get("http://192.168.100.69:3000", nil, function(code, data)
      if (code < 0) then
        print("HTTP request failed")
      else
        print(code, data)
      end
    end)
end
station_cfg.got_ip_cb = showip;

print("Connecting to WiFi");
wifi.sta.config(station_cfg);
wifi.sta.connect();
