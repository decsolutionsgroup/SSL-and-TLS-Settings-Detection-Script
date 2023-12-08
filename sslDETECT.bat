@echo off
color 1e
cls
echo Detecting if you currently have the required permissions (Administrative)
net session >nul 2>&1
if %errorLevel% == 0 (
	echo Administrative permissions confirmed.
) else (
	color 4e
	echo ERROR: Required permissions not met.  Please RERUN as administrator.
	pause
	exit
)
cls
echo Examining registry settings
timeout /t 1 /nobreak > nul
cls
echo Examining registry settings.
timeout /t 1 /nobreak > nul
cls
echo Examining registry settings..
timeout /t 1 /nobreak > nul
cls
echo Examining registry settings...
timeout /t 1 /nobreak > nul
cls
COLOR e0
echo STANDARD REGISTRY KEYS:
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server" /v Enabled 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo SSL 2.0 Enabled Outbound
) else if "%value%" equ "0x0" (
	echo SSL 2.0 Disabled Outbound
) else (
	echo Value not found for SSL 2.0 Outbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server" /v DisabledByDefault 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo SSL 2.0 not set for Default Outbound
) else if "%value%" equ "0x0" (
	echo SSL 2.0 set for Default Outbound
) else (
	echo Value not found for SSL 2.0 Default Outbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client" /v Enabled 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo SSL 2.0 Enabled Inbound
) else if "%value%" equ "0x0" (
	echo SSL 2.0 Disabled Inbound
) else (
	echo Value not found for SSL 2.0 Inbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client" /v DisabledByDefault 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo SSL 2.0 not set for Default Inbound
) else if "%value%" equ "0x0" (
	echo SSL 2.0 set for Default Inbound
) else (
	echo Value not found for SSL 2.0 Default Inbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server" /v Enabled 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo SSL 3.0 Enabled Outbound
) else if "%value%" equ "0x0" (
	echo SSL 3.0 Disabled Outbound
) else (
	echo Value not found for SSL 3.0 Outbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server" /v DisabledByDefault 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo SSL 3.0 not set for Default Outbound
) else if "%value%" equ "0x0" (
	echo SSL 3.0 set for Default Outbound
) else (
	echo Value not found for SSL 3.0 Default Outbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client" /v Enabled 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo SSL 3.0 Enabled Inbound
) else if "%value%" equ "0x0" (
	echo SSL 3.0 Disabled Inbound
) else (
	echo Value not found for SSL 3.0 Inbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client" /v DisabledByDefault 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo SSL 3.0 not set for Default Inbound
) else if "%value%" equ "0x0" (
	echo SSL 3.0 set for Default Inbound
) else (
	echo Value not found for SSL 3.0 Default Inbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server" /v Enabled 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo TLS 1.0 Enabled Outbound
) else if "%value%" equ "0x0" (
	echo TLS 1.0 Disabled Outbound
) else (
	echo Value not found for TLS 1.0 Outbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server" /v DisabledByDefault 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo TLS 1.0 not set for Default Outbound
) else if "%value%" equ "0x0" (
	echo TLS 1.0 set for Default Outbound
) else (
	echo Value not found for TLS 1.0 Default Outbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client" /v Enabled 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo TLS 1.0 Enabled Inbound
) else if "%value%" equ "0x0" (
	echo TLS 1.0 Disabled Inbound
) else (
	echo Value not found for TLS 1.0 Inbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client" /v DisabledByDefault 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo TLS 1.0 not set for Default Inbound
) else if "%value%" equ "0x0" (
	echo TLS 1.0 set for Default Inbound
) else (
	echo Value not found for TLS 1.0 Default Outbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server" /v Enabled 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo TLS 1.1 Enabled Outbound
) else if "%value%" equ "0x0" (
	echo TLS 1.1 Disabled Outbound
) else (
	echo Value not found for TLS 1.1 Outbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server" /v DisabledByDefault 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo TLS 1.1 not set for Default Outbound
) else if "%value%" equ "0x0" (
	echo TLS 1.1 set for Default Outbound
) else (
	echo Value not found for TLS 1.1 Default Outbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client" /v Enabled 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo TLS 1.1 Enabled Inbound
) else if "%value%" equ "0x0" (
	echo TLS 1.1 Disabled Inbound
) else (
	echo Value not found for TLS 1.1 Inbound
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client" /v DisabledByDefault 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo TLS 1.1 not set for Default Inbound
) else if "%value%" equ "0x0" (
	echo TLS 1.1 set for Default Inbound
) else (
	echo Value not found for TLS 1.1 Default Inbound
)
echo.
COLOR e0
echo .NET FRAMEWORK REGISTRY KEYS
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SOFTWARE\MICROSOFT\.NETFramework\v2.0.50727" /v SchUseStrongCrypto 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo .Net v2.0 set to use Strong Crypto
) else if "%value%" equ "0x0" (
	echo .Net v2.0 not set to use Strong Crypto
) else (
	echo Value not found for .Net v2.0 to use Strong Crypto
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SOFTWARE\MICROSOFT\.NETFramework\v2.0.50727" /v SystemDefaultTlsVersions 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo .Net v2.0 set to use system defaults
) else if "%value%" equ "0x0" (
	echo .Net v2.0 not set to use system defaults
) else (
	echo Value not found for .Net v2.0 to use system defaults
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SOFTWARE\MICROSOFT\.NETFramework\v4.0.30319" /v SchUseStrongCrypto 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo .Net v4.0 set to use Strong Crypto
) else if "%value%" equ "0x0" (
	echo .Net v4.0 not set to use Strong Crypto
) else (
	echo Value not found for .Net v2.0 to use Strong Crypto
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SOFTWARE\MICROSOFT\.NETFramework\v4.0.30319" /v SystemDefaultTlsVersions 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo .Net v4.0 set to use system defaults
) else if "%value%" equ "0x0" (
	echo .Net v4.0 not set to use system defaults
) else (
	echo Value not found for .Net v4.0 to use system defaults
)
echo.
COLOR e0
echo INTERNET SETTINGS REGISTRY KEYS
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SOFTWARE\MICROSOFT\Windows\CurrentVersion\Internet Settings" /v SecureProtocols 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo Internet Settings set to use Secure Protocols
) else if "%value%" equ "0x0" (
	echo Internet Settings not set to use Secure Protocols
) else (
	echo Value not found for Internet Settings set to use Secure Protocols
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SOFTWARE\MICROSOFT\Windows\CurrentVersion\Internet Settings\WinHttp" /v DefaultSecureProtocols 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo Internet Settings set to use system defaults
) else if "%value%" equ "0x0" (
	echo Internet Settings not set to use system defaults
) else (
	echo Value not found for Internet Settings set to use system defaults
)
for /f "tokens=3" %%a in ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows'CurrentVersion\Internet Settings\WinHttp" /v DefaultSecureProtocols 2^>nul') do set value=%%a
if "%value%" equ "0x1" (
	echo 64 bit Internet Settings set to use system defaults
) else if "%value%" equ "0x0" (
	echo 64 bit Internet Settings not set to use system defaults
) else (
	echo 64 bit Value not found for Internet Settings set to use system defaults
)
echo.
pause