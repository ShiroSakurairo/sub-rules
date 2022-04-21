{% if request.target == "clash" %}

mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
proxies:
proxy-groups:
rule-providers:
  Direct:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Direct.yaml
    path: ./RuleSet/Direct.yaml
    interval: 86400
  Localareanetwork:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Localareanetwork.yaml
    path: ./RuleSet/Localareanetwork.yaml
    interval: 86400
  Scam:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Scam.yaml
    path: ./RuleSet/Scam.yaml
    interval: 86400
  Mangaad:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Mangaad.yaml
    path: ./RuleSet/Mangaad.yaml
    interval: 86400
  Pixiv:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Pixiv.yaml
    path: ./RuleSet/Pixiv.yaml
    interval: 86400
  Twitter:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Twitter.yaml
    path: ./RuleSet/Twitter.yaml
    interval: 86400
  Manga:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Manga.yaml
    path: ./RuleSet/Manga.yaml
    interval: 86400
  Ecchi:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Ecchi.yaml
    path: ./RuleSet/Ecchi.yaml
    interval: 86400
  Telegram:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/Telegram/Telegram.yaml
    path: ./RuleSet/Telegram.yaml
    interval: 86400
  Twitcasting:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/twitcasting.yaml
    path: ./RuleSet/twitcasting.yaml
    interval: 86400
  Streaming:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/StreamingMedia/Streaming.yaml
    path: ./RuleSet/Streaming.yaml
    interval: 86400
  Speedtest:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Speedtest.yaml
    path: ./RuleSet/Speedtest.yaml
    interval: 86400
  Global:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Global.yaml
    path: ./RuleSet/Global.yaml
    interval: 86400
  Proxylite:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/ProxyLite.yaml
    path: ./RuleSet/Proxylite.yaml
    interval: 86400
  China:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/China.yaml
    path: ./RuleSet/China.yaml
    interval: 86400
  Chinadomain:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/ChinaDomain.yaml
    path: ./RuleSet/Chinadomain.yaml
    interval: 86400
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
  - RULE-SET,Twitcasting,☕ Streaming
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
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
proxy-test-url = http://www.gstatic.com/generate_204
internet-test-url = http://www.gstatic.cn/generate_204
always-real-ip = stun.l.google.com
udp-policy-not-supported-behaviour = DIRECT
[Proxy]
[Proxy Group]
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
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/twitcasting.list,☕ Streaming,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/StreamingMedia/Streaming.list,☕ Streaming,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Speedtest.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Global.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/ProxyLite.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/China.list,💧 Domestic,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/ChinaDomain.list,💧 Domestic,update-interval=86400
GEOIP,CN,💧 Domestic
FINAL,🔔 Other

{% endif %}
