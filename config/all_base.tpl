{% if request.target == "clash" %}

mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
ipv6: false
dns:
  enable: true
  listen: ""
  ipv6: false
  default-nameserver:
    - 223.5.5.5
    - 119.29.29.29
    - 8.8.8.8
    - 1.1.1.1
  enhanced-mode: fake-ip
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
    - lens.l.google.com
  nameserver:
    - 223.5.5.5
    - 119.29.29.29
  fallback:
    - tls://8.8.8.8:853
    - https://1.1.1.1/dns-query
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
      - 'i0.hdslb.com'
proxies:
proxy-groups:
rule-providers:
  Directlist:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Direct.yaml
    path: ./Rule/Directlist.yaml
    interval: 86400
  Localareanetwork:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Lan/Lan.yaml
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
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Pixiv/Pixiv.yaml
    path: ./Rule/Pixiv.yaml
    interval: 86400
  Twitter:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Twitter/Twitter.yaml
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
  Google:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/GoogleSearch/GoogleSearch.yaml
    path: ./Rule/Google.yaml
    interval: 86400
  Telegram:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Telegram/Telegram.yaml
    path: ./Rule/Telegram.yaml
    interval: 86400
  Twitcasting:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Twitcasting.yaml
    path: ./Rule/Twitcasting.yaml
    interval: 86400
  GlobalMedia:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/GlobalMedia/GlobalMedia.yaml
    path: ./Rule/GlobalMedia.yaml
    interval: 86400
  GlobalMedia_Domain:
    type: http
    behavior: domain
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/GlobalMedia/GlobalMedia_Domain.yaml
    path: ./Rule/GlobalMedia_Domain.yaml
    interval: 86400
  Global:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Proxy/Proxy.yaml
    path: ./Rule/Global.yaml
    interval: 86400
  Global_domin:
    type: http
    behavior: domain
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Proxy/Proxy_Domain.yaml
    path: ./Rule/Global_domin.yaml
    interval: 86400
  China:
    type: http
    behavior: classical
    url: https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/China/China.yaml
    path: ./Rule/China.yaml
    interval: 86400
rules:
  - RULE-SET,Directlist,🎀 Direct
  - RULE-SET,Localareanetwork,🎀 Direct
  - RULE-SET,Scam,🎼 Reject
  - RULE-SET,Mangaad,🏵 Block
  - RULE-SET,Pixiv,🐺 Pixiv
  - RULE-SET,Twitter,🍎 Twitter
  - RULE-SET,Manga,💤 Manga
  - RULE-SET,Ecchi,🌱 Ecchi
  - RULE-SET,Google,🎨 Google
  - RULE-SET,Telegram,🐈 Telegram
  - RULE-SET,Twitcasting,☕ GlobalMedia
  - RULE-SET,GlobalMedia,☕ GlobalMedia
  - RULE-SET,GlobalMedia_Domain,☕ GlobalMedia
  - RULE-SET,Global,🍀 Proxy
  - RULE-SET,Global_domin,🍀 Proxy
  - RULE-SET,China,💧 Domestic
  - GEOIP,CN,💧 Domestic
  - MATCH,🔔 Other

{% endif %}

{% if request.target == "surge" %}

[General]
dns-server = system, 223.5.5.5, 119.29.29.29
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
proxy-test-url = http://www.gstatic.com/generate_204
internet-test-url = http://www.gstatic.cn/generate_204
always-real-ip = lens.l.google.com
udp-policy-not-supported-behaviour = DIRECT
[Proxy]
[Proxy Group]
[Rule]
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Direct.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Localareanetwork.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Scam.list,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Mangaad.list,🏵 Block,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Pixiv/Pixiv.list,🐺 Pixiv,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Twitter/Twitter.list,🍎 Twitter,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Manga.list,💤 Manga,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Ecchi.list,🌱 Ecchi,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/GoogleSearch/GoogleSearch.list,🎨 Google,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Telegram/Telegram.list,🐈 Telegram,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Twitcasting.list,☕ Streaming,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/GlobalMedia/GlobalMedia.list,☕ Streaming,update-interval=86400
DOMAIN-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/GlobalMedia/GlobalMedia_Domain.list,☕ Streaming,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Proxy/Proxy.list,🍀 Proxy,update-interval=86400
DOMAIN-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Proxy/Proxy_Domain.list,🍀 Proxy,update-interval=86400
RULE-SET,https://git.yumenaka.net/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/China/China.list,💧 Domestic,update-interval=86400
GEOIP,CN,💧 Domestic
FINAL,🔔 Other

{% endif %}
