{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
winrar:
  '5.1.3':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'WinRAR 5.1.3 (x64)'
    installer: 'salt://repos/winrar/v5.31/winrar-x64-54b1.exe'
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'WinRAR 5.1.3'
    installer: 'salt://repos/winrar/v5.31/wrar531sc.exe'   
    {% endif %}
    uninstaller: '{{ PROGRAM_FILES }}\WinRAR\UnRAR.exe' 
    install_flags: '/SP- /verysilent /norestart'
    uninstall_flags: '/SP- /verysilent /norestart'
    msiexec: True
    locale: en_US
    reboot: False