# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
winrar:
  '5.3.1':
    {% if grains['cpuarch'] == 'AMD64' %}
	full_name: 'WinRAR'
	installer: 'http://www.rarlab.com/rar/winrar-x64-531sc.exe'
	uninstall_flags: '/SP- /verysilent /norestart'
	{% else grains['cpuarch'] == 'x86' %}
	full_name: 'WinRAR'
	installer: 'http://www.rarlab.com/rar/wrar531sc.exe'
	uninstall_flags: '/SP- /verysilent /norestart' 
	{% endif %}
	uninstaller: '{{ PROGRAM_FILES }}\WinRAR\UnRAR.exe'
    install_flags: '/s REBOOT=Suppress SPONSORS=0'
	msiexec: False
    locale: en_US
    reboot: False