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
  Direct:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Direct.yaml
    path: ./providers/rule-provider_Direct.yaml
    interval: 86400
  Localareanetwork:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Localareanetwork.yaml
    path: ./providers/rule-provider_Localareanetwork.yaml
    interval: 86400
  Fuckfalun:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Fuckfalun.yaml
    path: ./providers/rule-provider_Fuckfalun.yaml
    interval: 86400
  Fuckmangaad:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Fuckmangaad.yaml
    path: ./providers/rule-provider_Fuckmangaad.yaml
    interval: 86400
  Fuckscam:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Fuckscam.yaml
    path: ./providers/rule-provider_Fuckscam.yaml
    interval: 86400
  Pixiv:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Pixiv.yaml
    path: ./providers/rule-provider_Pixiv.yaml
    interval: 86400
  Twitter:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Twitter.yaml
    path: ./providers/rule-provider_Twitter.yaml
    interval: 86400
  Manga:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Manga.yaml
    path: ./providers/rule-provider_Manga.yaml
    interval: 86400
  Ecchi:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Ecchi.yaml
    path: ./providers/rule-provider_Ecchi.yaml
    interval: 86400
  Telegram:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/Telegram/Telegram.yaml
    path: ./providers/rule-provider_Telegram.yaml
    interval: 86400
  Streaming:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/StreamingMedia/Streaming.yaml
    path: ./providers/rule-provider_Streaming.yaml
    interval: 86400
  Speedtest:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Speedtest.yaml
    path: ./providers/rule-provider_Speedtest.yaml
    interval: 86400
  Global:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Global.yaml
    path: ./providers/rule-provider_Global.yaml
    interval: 86400
  Fucktaptap:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/yaml/Fucktaptap.yaml
    path: ./providers/rule-provider_Fucktaptap.yaml
    interval: 86400
  China:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/China.yaml
    path: ./providers/rule-provider_China.yaml
    interval: 86400
  ChinaIP:
    type: http
    behavior: ipcidr
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/ChinaIP.yaml
    path: ./providers/rule-provider_ChinaIP.yaml
    interval: 86400
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
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Direct.txt,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Localareanetwork.txt,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Fuckfalun.txt,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Fuckmangaad.txt,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Fuckscam.txt,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Pixiv.txt,🐺 Pixiv,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Twitter.txt,🍎 Twitter,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Manga.txt,💤 Manga,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Ecchi.txt,🌱 Ecchi,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Extra/Telegram/Telegram.list,🐈 Telegram,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/StreamingMedia/Streaming.list,☕ Globalmedia,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Speedtest.txt,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Global.list,🍀 Proxy,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/raw/main/rule/Fucktaptap.txt,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/China.list,💧 Domestic,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Extra/ChinaIP.list,💧 Domestic,update-interval=86400
GEOIP,CN,💧 Domestic
FINAL,🔔 Other

{% endif %}