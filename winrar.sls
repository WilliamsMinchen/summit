{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
winrar:
  '5.1.3':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'WinRAR 5.1.3 (x64)'
    installer: 'http://w.x.baidu.com/alading/anquan_soft_down_all/17535'
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'WinRAR 5.1.3'
    installer: 'http://w.x.baidu.com/alading/anquan_soft_down_all/10849'   
    {% endif %}
    uninstaller: '{{ PROGRAM_FILES }}\WinRAR\UnRAR.exe' 
    install_flags: '/SP- /verysilent /norestart'
    uninstall_flags: '/SP- /verysilent /norestart'
    msiexec: True
    locale: en_US
    reboot: False