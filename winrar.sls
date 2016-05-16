{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
winrar:
  '5.1.3':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'WinRAR 5.1.3'
    installer: 'http://www.rarlab.com/rar/winrar-x64-54b1.exe'
	{% elif grains['cpuarch'] == 'x86' %}
    full_name: 'WinRAR 5.1.3'
	installer: 'http://www.rarlab.com/rar/wrar531sc.exe'
	{% endif %}
	install_flags: '/SP- /verysilent /norestart'
	uninstaller: '{{ PROGRAM_FILES }}\WinRAR\UnRAR.exe'
    uninstall_flags: '/SP- /verysilent /norestart'
	msiexec: False
    locale: en_US
    reboot: False