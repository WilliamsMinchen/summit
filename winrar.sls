{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
winrar:
  '5.1.3':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'WinRAR 5.1.3 (x64)'
    installer: 'http://mail.126.com/filehub/nf/file?uid=summitadmin@126.com&op=downLoadFile&fileId=485590359431&name=winrar-x64-54b1.exe'
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'WinRAR 5.1.3'
    installer: 'http://mail.126.com/filehub/nf/file?uid=summitadmin@126.com&op=downLoadFile&fileId=485590357946&name=wrar531sc.exe'   
    {% endif %}
    uninstaller: '{{ PROGRAM_FILES }}\WinRAR\UnRAR.exe' 
    install_flags: '/SP- /verysilent /norestart'
    uninstall_flags: '/SP- /verysilent /norestart'
    msiexec: True
    locale: en_US
    reboot: False