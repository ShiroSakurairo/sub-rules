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
  ipv6: false
  listen: ""
  enhanced-mode: fake-ip
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
    - '*.lan'
    - lens.l.google.com
    - stun.l.google.com
  nameserver:
    - 114.114.114.114
    - 223.5.5.5
  fallback:
    - 8.8.4.4
    - 1.0.0.1
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
      - '+.googlevideo.com'
      - '+.githubusercontent.com'
proxies:
proxy-groups:
rule-providers:
  Direct: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Direct.yaml
    path: ./Ruleset/Direct.yaml.yaml
    interval: 86400
  Localareanetwork: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Localareanetwork.yaml
    path: ./Ruleset/Localareanetwork.yaml
    interval: 86400
  Scam: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Scam.yaml
    path: ./Ruleset/Scam.yaml
    interval: 86400
  Mangaad: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Mangaad.yaml
    path: ./Ruleset/Mangaad.yaml
    interval: 86400
  Pixiv: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Pixiv.yaml
    path: ./Ruleset/Pixiv.yaml
    interval: 86400
  Twitter: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Twitter.yaml
    path: ./Ruleset/Twitter.yaml
    interval: 86400
  Manga: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Manga.yaml
    path: ./Ruleset/Manga.yaml
    interval: 86400
  Ecchi: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Ecchi.yaml
    path: ./Ruleset/Ecchi.yaml
    interval: 86400
  Telegram: 
    type: http
    behavior: classical
    url: https://raw.fastgit.org/DivineEngine/Profiles/master/Clash/RuleSet/Extra/Telegram/Telegram.yaml
    path: ./Ruleset/Telegram.yaml
    interval: 86400
  twitcasting: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/twitcasting.yaml
    path: ./Ruleset/twitcasting.yaml
    interval: 86400
  Streaming: 
    type: http
    behavior: classical
    url: https://raw.fastgit.org/DivineEngine/Profiles/master/Clash/RuleSet/StreamingMedia/Streaming.yaml
    path: ./Ruleset/Streaming.yaml
    interval: 86400
  Mangaad: 
    type: http
    behavior: classical
    url: https://raw.fastgit.org/Loyalsoldier/clash-rules/release/reject.txt
    path: ./Ruleset/Mangaad.yaml
    interval: 86400
  Speedtest: 
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Speedtest.yaml
    path: ./Ruleset/Speedtest.yaml
    interval: 86400
  Global: 
    type: http
    behavior: classical
    url: https://raw.fastgit.org/DivineEngine/Profiles/master/Clash/RuleSet/Global.yaml
    path: ./Ruleset/Global.yaml
    interval: 86400
  Proxylite: 
    type: http
    behavior: classical
    url: https://raw.fastgit.org/ACL4SSR/ACL4SSR/master/Clash/Providers/ProxyLite.yaml
    path: ./Ruleset/ProxyLite.yaml
    interval: 86400
  Gfwlist: 
    type: http
    behavior: classical
    url: https://raw.fastgit.org/Loyalsoldier/clash-rules/release/gfw.txt
    path: ./Ruleset/Gfwlist.yaml
    interval: 86400
  China: 
    type: http
    behavior: classical
    url: https://raw.fastgit.org/DivineEngine/Profiles/master/Clash/RuleSet/China.yaml
    path: ./Ruleset/China.yaml
    interval: 86400
  Chinadomain: 
    type: http
    behavior: classical
    url: https://raw.fastgit.org/ACL4SSR/ACL4SSR/master/Clash/Providers/ChinaDomain.yaml
    path: ./Ruleset/ChinaDomain.yaml
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
  - RULE-SET,twitcasting,☕ Streaming
  - RULE-SET,Streaming,☕ Streaming
  - RULE-SET,Adblock,🍓 Block
  - RULE-SET,Speedtest,🍀 Proxy
  - RULE-SET,Global,🍀 Proxy
  - RULE-SET,Proxylite,🍀 Proxy
  - RULE-SET,Gfwlist,🍀 Proxy
  - RULE-SET,China,💧 Domestic
  - RULE-SET,Chinadomain,💧 Domestic
  - GEOIP,CN,💧 Domestic
  - MATCH,🔔 Other

{% endif %}

{% if request.target == "surge" %}

[General]
dns-server = 114.114.114.114, 223.5.5.5, 8.8.4.4, 1.0.0.1
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
proxy-test-url = http://www.gstatic.com/generate_204
always-real-ip = *.lan, lens.l.google.com, stun.l.google.com
http-listen = 0.0.0.0:6152
socks5-listen = 0.0.0.0:6153
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
RULE-SET,https://raw.fastgit.org/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Telegram/Telegram.list,🐈 Telegram,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/twitcasting.list,☕ Streaming,update-interval=86400
RULE-SET,https://raw.fastgit.org/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Streaming.list,☕ Streaming,update-interval=86400
RULE-SET,https://raw.fastgit.org/Loyalsoldier/surge-rules/release/reject.txt,🍓 Block,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Speedtest.list,🍀 Proxy,update-interval=86400
RULE-SET,https://raw.fastgit.org/DivineEngine/Profiles/master/Surge/Ruleset/Global.list,🍀 Proxy,update-interval=86400
RULE-SET,https://raw.fastgit.org/ACL4SSR/ACL4SSR/master/Clash/ProxyLite.list,🍀 Proxy,update-interval=86400
RULE-SET,https://raw.fastgit.org/Loyalsoldier/surge-rules/release/ruleset/gfw.txt,🍀 Proxy,update-interval=86400
RULE-SET,https://raw.fastgit.org/DivineEngine/Profiles/master/Surge/Ruleset/China.list,💧 Domestic,update-interval=86400
RULE-SET,https://raw.fastgit.org/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list,💧 Domestic,update-interval=86400
GEOIP,CN,💧 Domestic
FINAL,🔔 Other

{% endif %}
