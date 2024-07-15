# xat-s10-PowerPlatform

Repo jest przeznaczone jako zbiór materiałów pomocniczych do warsztatów wewnętrznych dotyczących power-platform
Skrypty z tego repo były testowane w środowisku Windows 11. Jest szansa, że będą działać na maszynach z innymi systemami ze względu na zgodność Az Cli.

## Prezentowane koncepcje
- zarządzanie zawartością środowiska PP z konsoli ze spryptów <b>Power-Shell</b>
- dokumentacja dewelopera Power Platform: https://learn.microsoft.com/en-us/power-platform/developer/
- Power Platform Cli: https://learn.microsoft.com/en-us/power-platform/developer/cli/introduction?tabs=windows
- podstawy programowania komponentów Power Platform
- wersjonowanie kodu  rozwiązania Power Platform

## Będziesz potrzebować
- Visual Studio Code
- Microsoft Power Platform Cli
- Power Shell Extension to VSC (od Microsoftu)

## Co po kolei...
- Pobierz repo i otwórz je (Visual Studio Code)
- Do VSC zainstaluj dodatek <b>Power Platform Tools</b> (od MIcrosoftu)
- sprawdź, że z Power Shella masz dostępne narzędzia do administracji Power Platform (PAC). Wykonaj poniższe polecenie z <b>terminala powershell</b>:
    <br /><code>Get-Command pac | Format-List</code>
- podłącz się do tenanta, w którym masz środowisko z Power Platform używając polecenia <code>pac auth create</code>. 
    - refs: https://learn.microsoft.com/en-us/power-platform/developer/cli/reference/auth#pac-auth-create
    - uruchom
        <br /><code>cd .\scripts\</code><br />
        .\pac_auth_create.ps1</code>
- gdy piszemy z konsoli, to miło gdy po naciśnięciu tab wykonuje się autocompletion. Włączmy autocompletion dla poleceń dostarczanych przez pakiet <b>pac</b>. Aby to zrobić uruchom skrypt: <br />
<code>.\pac_auto_complete.ps1</code>