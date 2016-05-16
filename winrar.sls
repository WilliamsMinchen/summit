{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
winrar:
  '5.3.1':
    full_name: 'WinRAR'
	installer: 'http://www.rarlab.com/rar/wrar531sc.exe'
	install_flags: '/SP- /verysilent /norestart'
	uninstaller: '{{ PROGRAM_FILES }}\WinRAR\UnRAR.exe'
    uninstall_flags: '/SP- /verysilent /norestart'
	msiexec: False
    locale: en_US
    reboot: False