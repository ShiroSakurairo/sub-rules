{% if request.target == "clash" %}

mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
ipv6: false
external-controller: 127.0.0.1:9090
secret: ""
dns:
  enable: true
  listen: 0.0.0.0:53
  ipv6: false
  default-nameserver:
    - 114.114.114.114
    - 119.29.29.29
    - 8.8.8.8
    - 1.1.1.1
  enhanced-mode: redir-host
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
    - lens.l.google.com
  nameserver:
    - 114.114.114.114
    - 119.29.29.29
  fallback:
    - 8.8.8.8
    - 1.1.1.1
  fallback-filter:
    geoip: true
    geoip-code: CN
    ipcidr:
      - 0.0.0.0/8
      - 127.0.0.0/8
      - 240.0.0.0/4
    domain:
      - '+.google.com'
      - '+.facebook.com'
      - '+.youtube.com'
      - '+.githubusercontent.com'
proxies:
proxy-groups:
rule-providers:
  Direct:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Direct.yaml
    path: ./Rule/Direct.yaml
    interval: 86400
  Localareanetwork:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Localareanetwork.yaml
    path: ./Rule/Localareanetwork.yaml
    interval: 86400
  Scam:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Scam.yaml
    path: ./Rule/Scam.yaml
    interval: 86400
  Mangaad:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Mangaad.yaml
    path: ./Rule/Mangaad.yaml
    interval: 86400
  Pixiv:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Pixiv.yaml
    path: ./Rule/Pixiv.yaml
    interval: 86400
  Twitter:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Twitter.yaml
    path: ./Rule/Twitter.yaml
    interval: 86400
  Manga:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Manga.yaml
    path: ./Rule/Manga.yaml
    interval: 86400
  Ecchi:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Ecchi.yaml
    path: ./Rule/Ecchi.yaml
    interval: 86400
  Telegram:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/Extra/Telegram/Telegram.yaml
    path: ./Rule/Telegram.yaml
    interval: 86400
  Googlesearch:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/Extra/Google/GoogleSearch.yaml
    path: ./Rule/Googlesearch.yaml
    interval: 86400
  Google:
    type: http
    behavior: domain
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/google.txt
    path: ./Rule/Google.yaml
    interval: 86400
  Game:
    type: http
    behavior: domain
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Game.yaml
    path: ./Rule/Game.yaml
    interval: 86400
  Twitcasting:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Twitcasting.yaml
    path: ./Rule/Twitcasting.yaml
    interval: 86400
  Streaming:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/StreamingMedia/Streaming.yaml
    path: ./Rule/Streaming.yaml
    interval: 86400
  Speedtest:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Speedtest.yaml
    path: ./Rule/Speedtest.yaml
    interval: 86400
  Global:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/Global.yaml
    path: ./Rule/Global.yaml
    interval: 86400
  Proxylite:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Providers/ProxyLite.yaml
    path: ./Rule/Proxylite.yaml
    interval: 86400
  China:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/China.yaml
    path: ./Rule/China.yaml
    interval: 86400
  Chinadomain:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Providers/ChinaDomain.yaml
    path: ./Rule/Chinadomain.yaml
    interval: 86400
rules:
  - RULE-SET,Direct,🎀 Direct
  - RULE-SET,Localareanetwork,🎀 Direct
  - RULE-SET,Scam,🎼 Reject
  - RULE-SET,Mangaad,🏵 Block
  - RULE-SET,Pixiv,🐺 Pixiv
  - RULE-SET,Twitter,🍎 Twitter
  - RULE-SET,Manga,💤 Manga
  - RULE-SET,Ecchi,🌱 Ecchi
  - RULE-SET,Telegram,🐈 Telegram
  - RULE-SET,Googlesearch,🎨 Google
  - RULE-SET,Google,🎨 Google
  - RULE-SET,Game,💐 Game
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
dns-server = 114.114.114.114, 119.29.29.29, system
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
proxy-test-url = http://www.gstatic.com/generate_204
internet-test-url = http://www.gstatic.cn/generate_204
always-real-ip = stun.l.google.com, lens.l.google.com
http-listen = 0.0.0.0:7890
socks5-listen = 0.0.0.0:7891
udp-policy-not-supported-behaviour = DIRECT
[Proxy]
[Proxy Group]
[Rule]
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Direct.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Localareanetwork.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Scam.list,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Mangaad.list,🏵 Block,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Pixiv.list,🐺 Pixiv,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Twitter.list,🍎 Twitter,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Manga.list,💤 Manga,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Ecchi.list,🌱 Ecchi,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Telegram/Telegram.list,🐈 Telegram,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Google/GoogleSearch.list,🎨 Google,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/google.txt,🎨 Google,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Twitcasting.list,☕ Streaming,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Streaming.list,☕ Streaming,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Speedtest.list,🍀 Proxy,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Global.list,🍀 Proxy,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyLite.list,🍀 Proxy,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/China.list,💧 Domestic,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list,💧 Domestic,update-interval=86400
GEOIP,CN,💧 Domestic
FINAL,🔔 Other

{% endif %}
