FROM rocklobster/docker-chocolatey

LABEL maintainer="tsbennett@gmail.com"
LABEL description="Windows Server Core with AD Powershell modules / tools + Chocolatey"

RUN dism.exe /online /enable-feature /all /featurename:RSAT-AD-PowerShell /NoRestart
#RUN powershell -executionpolicy bypass -command \
#      Add-WindowsFeature RSAT-AD-PowerShell; \
	
CMD [ "powershell" ]

