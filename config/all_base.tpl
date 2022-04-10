{% if request.target == "clash" %}

mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
ipv6: false
external-controller: 127.0.0.1:9090
dns:
  enable: true
  ipv6: false
  listen: 0.0.0.0:53
  enhanced-mode: fake-ip
  fake-ip-filter:
    - lens.l.google.com
  nameserver:
    - https://dns.alidns.com/dns-query
    - https://doh.pub/dns-query
proxies: ~
proxy-groups: ~
rule-providers: 
  Direct: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Direct.yaml, path: ./ruleset/Direct.yaml, interval: 86400 }
  Localareanetwork: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Localareanetwork.yaml, path: ./ruleset/Localareanetwork.yaml, interval: 86400 }
  Fuckfalun: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Fuckfalun.yaml, path: ./ruleset/Fuckfalun.yaml, interval: 86400 }
  Fuckmangaad: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Fuckmangaad.yaml, path: ./ruleset/Fuckmangaad.yaml, interval: 86400 }
  Fuckscam: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Fuckscam.yaml, path: ./ruleset/Fuckscam.yaml, interval: 86400 }
  Pixiv: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Pixiv.yaml, path: ./ruleset/Pixiv.yaml, interval: 86400 }
  Twitter: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Twitter.yaml, path: ./ruleset/Twitter.yaml, interval: 86400 }
  Manga: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Manga.yaml, path: ./ruleset/Manga.yaml, interval: 86400 }
  Ecchi: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Ecchi.yaml, path: ./ruleset/Ecchi.yaml, interval: 86400 }
  Telegram: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/Telegram/Telegram.yaml, path: ./ruleset/Telegram.yaml, interval: 86400 }
  Streaming: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/StreamingMedia/Streaming.yaml, path: ./ruleset/Streaming.yaml, interval: 86400 }
  Speedtest: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Speedtest.yaml, path: ./ruleset/Speedtest.yaml, interval: 86400 }
  Global: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Global.yaml, path: ./ruleset/Global.yaml, interval: 86400 }
  Fucktaptap: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/clash/Fucktaptap.yaml, path: ./ruleset/Fucktaptap.yaml, interval: 86400 }
  China: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/China.yaml, path: ./ruleset/China.yaml, interval: 86400 }
  ChinaIP: { type: http, behavior: ipcidr, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/ChinaIP.yaml, path: ./ruleset/ChinaIP.yaml, interval: 86400 }
rules:
  - RULE-SET,Direct,🎀 Direct
  - RULE-SET,Localareanetwork,🎀 Direct
  - RULE-SET,Fuckfalun,🎼 Reject
  - RULE-SET,Fuckmangaad,🎼 Reject
  - RULE-SET,Fuckscam,🎼 Reject
  - RULE-SET,Pixiv,🐺 Pixiv
  - RULE-SET,Twitter,🍎 Twitter
  - RULE-SET,Manga,💤 Manga
  - RULE-SET,Ecchi,🌱 Ecchi
  - RULE-SET,Telegram,🐈 Telegram
  - RULE-SET,Streaming,☕ Globalmedia
  - RULE-SET,Speedtest,🍀 Proxy
  - RULE-SET,Global,🍀 Proxy
  - RULE-SET,Fucktaptap,🍀 Proxy
  - RULE-SET,China,💧 Domestic
  - RULE-SET,ChinaIP,💧 Domestic
  - GEOIP,CN,💧 Domestic
  - MATCH,🔔 Other

{% endif %}

{% if request.target == "surge" %}

[General]
dns-server = 223.5.5.5, 223.6.6.6
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
proxy-test-url = http://www.gstatic.com/generate_204
always-real-ip = lens.l.google.com
http-listen = 0.0.0.0:6152
socks5-listen = 0.0.0.0:6153
[Proxy]
~
[Proxy Group]
~
[Rule]
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/ruleset/surge/Direct.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Localareanetwork.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Fuckfalun.list,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Fuckmangaad.list,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Fuckscam.list,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Pixiv.list,🐺 Pixiv,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Twitter.list,🍎 Twitter,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Manga.list,💤 Manga,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Ecchi.list,🌱 Ecchi,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Extra/Telegram/Telegram.list,🐈 Telegram,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/StreamingMedia/Streaming.list,☕ Globalmedia,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Speedtest.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Global.list,🍀 Proxy,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subruleraw/main/ruleset/surge/Fucktaptap.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/China.list,💧 Domestic,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Extra/ChinaIP.list,💧 Domestic,update-interval=86400
GEOIP,CN,💧 Domestic
FINAL,🔔 Other

{% endif %}