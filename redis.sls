# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set PROGRAM_FILES = "%ProgramFiles%" %}
redis:
  2.4.6:
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'redis(x64)'
    installer: salt://redis/redis-2.4.6-setup-64-bit.exe
    uninstaller: '%PROGRAMFILES%\unins000.exe'
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'AWS Command Line Interface'
    installer: salt://redis/redis-2.4.6-setup-32-bit.exe
    uninstaller: '%PROGRAMFILES%\unins000.exe'    
    {% endif %}
    install_flags: '/S'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False 