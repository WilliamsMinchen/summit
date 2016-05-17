{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
winrar:
  '16.00':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: '7-zip 16.00 (x64)'
    installer: 'http://www.7-zip.org/a/7z1600-x64.msi'
    uninstaller: 'http://www.7-zip.org/a/7z1600-x64.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: '7-zip 16.00'
    installer: 'http://www.7-zip.org/a/7z1600.msi'
    uninstaller: 'http://www.7-zip.org/a/7z1600.msi'	
    {% endif %}
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False