{% if request.target == "clash" %}

mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
ipv6: false
dns:
  enable: false
  listen: 0.0.0.0:53
  ipv6: false
  enhanced-mode: fake-ip
  fake-ip-filter:
    - '*.lan'
    - '*.l.google.com'
  nameserver:
    - 223.5.5.5
    - 8.8.4.4
proxies: ~
proxy-groups: ~
rule-providers:
  Direct: {type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Direct.yaml, path: ./Ruleset/Direct.yaml.yaml, interval: 86400}
  Localareanetwork: {type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Localareanetwork.yaml, path: ./Ruleset/Localareanetwork.yaml, interval: 86400}
  Scam: {type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Scam.yaml, path: ./Ruleset/Scam.yaml, interval: 86400}
  Pixiv: {type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Pixiv.yaml, path: ./Ruleset/Pixiv.yaml, interval: 86400}
  Twitter: {type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Twitter.yaml, path: ./Ruleset/Twitter.yaml, interval: 86400}
  Manga: {type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Manga.yaml, path: ./Ruleset/Manga.yaml, interval: 86400}
  Ecchi: {type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Ecchi.yaml, path: ./Ruleset/Ecchi.yaml, interval: 86400}
  Telegram: {type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/Telegram/Telegram.yaml, path: ./Ruleset/Telegram.yaml, interval: 86400}
  Streaming: {type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/StreamingMedia/Streaming.yaml, path: ./Ruleset/Streaming.yaml, interval: 86400}
  Mangaad: {type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Mangaad.yaml, path: ./Ruleset/Mangaad.yaml, interval: 86400}
  Banad: {type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/BanAD.yaml, path: ./Ruleset/BanAD.yaml, interval: 86400}
  Banprogramad: {type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/BanProgramAD.yaml, path: ./Ruleset/BanProgramAD.yaml, interval: 86400}
  Speedtest: {type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Speedtest.yaml, path: ./Ruleset/Speedtest.yaml, interval: 86400}
  Global: {type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Global.yaml, path: ./Ruleset/Global.yaml, interval: 86400}
  Proxylite: {type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/ProxyLite.yaml, path: ./Ruleset/ProxyLite.yaml, interval: 86400}
  China: {type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/China.yaml, path: ./Ruleset/China.yaml, interval: 86400}
  Chinadomain: {type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/ChinaDomain.yaml, path: ./Ruleset/ChinaDomain, interval: 86400}
rules:
  - RULE-SET,Direct,🎀 Direct
  - RULE-SET,Localareanetwork,🎀 Direct
  - RULE-SET,Scam,🎼 Reject
  - RULE-SET,Mangaad,🍓 Block
  - RULE-SET,Pixiv,🐺 Pixiv
  - RULE-SET,Twitter,🍎 Twitter
  - RULE-SET,Manga,💤 Manga
  - RULE-SET,Ecchi,🌱 Ecchi
  - RULE-SET,Telegram,🐈 Telegram
  - RULE-SET,Streaming,☕ Streaming
  - RULE-SET,Speedtest,🍀 Proxy
  - RULE-SET,Global,🍀 Proxy
  - RULE-SET,Proxylite,🍀 Proxy
  - RULE-SET,China,💧 Domestic
  - RULE-SET,Chinadomain,💧 Domestic
  - GEOIP,CN,💧 Domestic
  - MATCH,🔔 Other

{% endif %}

{% if request.target == "surge" %}

[General]
dns-server = 223.5.5.5, 8.8.4.4
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
proxy-test-url = http://www.gstatic.com/generate_204
always-real-ip = *.l.google.com
http-listen = 0.0.0.0:1234
socks5-listen = 0.0.0.0:1235
[Proxy]
~
[Proxy Group]
~
[Rule]
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Direct.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Localareanetwork.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Scam.list,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Mangaad.list,🍓 Block,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Pixiv.list,🐺 Pixiv,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Twitter.list,🍎 Twitter,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Manga.list,💤 Manga,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Ecchi.list,🌱 Ecchi,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Extra/Telegram/Telegram.list,🐈 Telegram,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/StreamingMedia/Streaming.list,☕ Streaming,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Speedtest.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Global.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/ProxyLite.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/China.list,💧 Domestic,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/ChinaDomain.list,💧 Domestic,update-interval=86400
GEOIP,CN,💧 Domestic
FINAL,🔔 Other

{% endif %}
