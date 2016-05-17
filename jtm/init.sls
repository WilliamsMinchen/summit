include:
  - jtm.copy

jtm:
  cmd.run:
    - name: '"C:\Program Files\7-Zip\7z" x F:\JTMx86.7z  -y -aos -oF:\JTMx86'
    - require:
      - sls: jtm.copy
