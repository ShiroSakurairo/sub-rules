{% if request.target == "clash" %}

mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
ipv6: false
external-controller: 0.0.0.0:9090
secret: ""
dns:
  enable: true
  listen: 0.0.0.0:53
  ipv6: false
  default-nameserver:
  - 223.5.5.5
  - 119.29.29.29
  - 8.8.4.4
  - 1.0.0.1
  enhanced-mode: fake-ip
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
  - +.stun.*.*
  - +.stun.*.*.*
  - +.stun.*.*.*.*
  - +.stun.*.*.*.*.*
  - *.l.google.com
  - '*.n.n.srv.nintendo.net'
  - +.stun.playstation.net
  - xbox.*.*.microsoft.com
  - '*.*.xboxlive.com'
  - '*.msftncsi.com'
  - '*.msftconnecttest.com'
  - '*.mcdn.bilivideo.cn'
  nameserver:
  - 223.5.5.5
  - 119.29.29.29
  - 8.8.4.4
  - 1.0.0.1
  - dhcp://system
proxies: ~
proxy-groups: ~
rule-providers:
  Direct: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Direct.yaml, path: ./Ruleset/Direct.yaml, interval: 86400 }
  Localareanetwork: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Localareanetwork.yaml, path: ./Ruleset/Localareanetwork.yaml, interval: 86400 }
  Fuckfalun: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Fuckfalun.yaml, path: ./Ruleset/Fuckfalun.yaml, interval: 86400 }
  Fuckscam: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Fuckscam.yaml, path: ./Ruleset/Fuckscam.yaml, interval: 86400 }
  Fuckmangaad: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Fuckmangaad.yaml, path: ./Ruleset/Fuckmangaad.yaml, interval: 86400 }
  BanAD: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/BanAD.yaml, interval: 86400 }
  BanEasyPrivacy: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/BanEasyPrivacy.yaml, interval: 86400 }
  BanProgramAD: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/BanProgramAD.yaml, interval: 86400 }
  Pixiv: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Pixiv.yaml, path: ./Ruleset/Pixiv.yaml, interval: 86400 }
  Twitter: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Twitter.yaml, path: ./Ruleset/Twitter.yaml, interval: 86400 }
  Manga: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Manga.yaml, path: ./Ruleset/Manga.yaml, interval: 86400 }
  Ecchi: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Ecchi.yaml, path: ./Ruleset/Ecchi.yaml, interval: 86400 }
  Telegram: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/Telegram/Telegram.yaml, path: ./Ruleset/Telegram.yaml, interval: 86400 }
  Streaming: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/StreamingMedia/Streaming.yaml, path: ./Ruleset/Streaming.yaml, interval: 86400 }
  Speedtest: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Speedtest.yaml, path: ./Ruleset/Speedtest.yaml, interval: 86400 }
  Global: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Global.yaml, path: ./Ruleset/Global.yaml, interval: 86400 }
  Fucktaptap: { type: http, behavior: classical, url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Fucktaptap.yaml, path: ./Ruleset/Fucktaptap.yaml, interval: 86400 }
  China: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/China.yaml, path: ./Ruleset/China.yaml, interval: 86400 }
  ChinaDomain: { type: http, behavior: classical, url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/ChinaDomain.yaml, path: ./Ruleset/China.yaml, interval: 86400 }
  ChinaIP: { type: http, behavior: ipcidr, url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/ChinaIP.yaml, path: ./Ruleset/ChinaIP.yaml, interval: 86400 }
rule-providers:
  Direct:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Direct.yaml
    path: ./Ruleset/Direct.yaml
    interval: 86400
  Localareanetwork:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Localareanetwork.yaml
    path: ./Ruleset/Localareanetwork.yaml
    interval: 86400
  Fuckfalun:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Fuckfalun.yaml
    path: ./Ruleset/Fuckfalun.yaml
    interval: 86400
  Fuckscam:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Fuckscam.yaml
    path: ./Ruleset/Fuckscam.yaml
    interval: 86400
  Fuckmangaad:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Fuckmangaad.yaml
    path: ./Ruleset/Fuckmangaad.yaml
    interval: 86400
  BanAD:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/BanAD.yaml
    interval: 86400
  BanEasyPrivacy:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/BanEasyPrivacy.yaml
    interval: 86400
  BanProgramAD:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/BanProgramAD.yaml
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
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/Telegram/Telegram.yaml
    path: ./Ruleset/Telegram.yaml
    interval: 86400
  Streaming:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/StreamingMedia/Streaming.yaml
    path: ./Ruleset/Streaming.yaml
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
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Global.yaml
    path: ./Ruleset/Global.yaml
    interval: 86400
  Fucktaptap:
    type: http
    behavior: classical
    url: https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/clash/Fucktaptap.yaml
    path: ./Ruleset/Fucktaptap.yaml
    interval: 86400
  China:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/China.yaml
    path: ./Ruleset/China.yaml
    interval: 86400
  ChinaDomain:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/Providers/ChinaDomain.yaml
    path: ./Ruleset/China.yaml
    interval: 86400
  ChinaIP:
    type: http
    behavior: ipcidr
    url: https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Clash/RuleSet/Extra/ChinaIP.yaml
    path: ./Ruleset/ChinaIP.yaml
    interval: 86400
rules:
  - RULE-SET,Direct,🎀 Direct
  - RULE-SET,Localareanetwork,🎀 Direct
  - RULE-SET,Fuckfalun,🎼 Reject
  - RULE-SET,Fuckscam,🎼 Reject
  - RULE-SET,Fuckmangaad,🍓 Adblock
  - RULE-SET,Pixiv,🐺 Pixiv
  - RULE-SET,Twitter,🍎 Twitter
  - RULE-SET,Manga,💤 Manga
  - RULE-SET,Ecchi,🌱 Ecchi
  - RULE-SET,Telegram,🐈 Telegram
  - RULE-SET,Streaming,☕ Globalmedia
  - RULE-SET,Speedtest,🍀 Proxy
  - RULE-SET,Global,🍀 Proxy
  - RULE-SET,Fucktaptap,🍀 Proxy
  - RULE-SET,BanAD,🍓 Adblock
  - RULE-SET,BanEasyPrivacy,🍓 Adblock
  - RULE-SET,BanProgramAD,🍓 Adblock
  - RULE-SET,China,💧 Domestic
  - RULE-SET,China,💧 Domestic
  - RULE-SET,ChinaIP,💧 Domestic
  - GEOIP,CN,💧 Domestic
  - MATCH,🔔 Other

{% endif %}

{% if request.target == "surge" %}

[General]
dns-server = 223.5.5.5, 119.29.29.29, 8.8.4.4, 1.0.0.1, system
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
proxy-test-url = http://www.gstatic.com/generate_204
always-real-ip = *.stun.*.*, *.stun.*.*.*, *.stun.*.*.*.*, *.stun.*.*.*.*.*, *.l.google.com, *.n.n.srv.nintendo.net, *.stun.playstation.net, xbox.*.*.microsoft.com, *.*.xboxlive.com, *.msftncsi.com, *.msftconnecttest.com, *.mcdn.bilivideo.cn
http-listen = 0.0.0.0:6152
socks5-listen = 0.0.0.0:6153
[Proxy]
~
[Proxy Group]
~
[Rule]
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Direct.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Localareanetwork.list,🎀 Direct,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Fuckfalun.list,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Fuckscam.list,🎼 Reject,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Fuckmangaad.list,🍓 Adblock,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Pixiv.list,🐺 Pixiv,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Twitter.list,🍎 Twitter,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Manga.list,💤 Manga,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Ecchi.list,🌱 Ecchi,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Extra/Telegram/Telegram.list,🐈 Telegram,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/StreamingMedia/Streaming.list,☕ Globalmedia,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Speedtest.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Global.list,🍀 Proxy,update-interval=86400
RULE-SET,https://gitlab.com/ShiroSakurairo/subrule/-/raw/main/ruleset/surge/Fucktaptap.list,🍀 Proxy,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/BanAD.list,🍓 Adblock,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/BanEasyPrivacy.list,🍓 Adblock,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/BanProgramAD.list,🍓 Adblock,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/China.list,💧 Domestic,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/ACL4SSR/ACL4SSR@master/Clash/ChinaDomain.list,💧 Domestic,update-interval=86400
RULE-SET,https://cdn.jsdelivr.net/gh/DivineEngine/Profiles@master/Surge/Ruleset/Extra/ChinaIP.list,💧 Domestic,update-interval=86400
GEOIP,CN,💧 Domestic
FINAL,🔔 Other

{% endif %}
