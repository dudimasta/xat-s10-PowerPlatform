# xat-s10-PowerPlatform

Repo jest przeznaczone jako zbiór materiałów pomocniczych do warsztatów wewnętrznych dotyczących power-platform
Skrypty z tego repo były testowane w środowisku Windows 11. Jest szansa, że będą działać na maszynach z innymi systemami ze względu na zgodność Az Cli.

## Prezentowane koncepcje
- podstawy zarządzania środowiskami z PPAC: https://admin.powerplatform.microsoft.com/
- zarządzanie zawartością środowiska PP z konsoli ze spryptów <b>Power-Shell</b>
- dokumentacja dewelopera Power Platform: https://learn.microsoft.com/en-us/power-platform/developer/
- Power Platform Cli: https://learn.microsoft.com/en-us/power-platform/developer/cli/introduction?tabs=windows
- podstawy programowania komponentów Power Platform
- wersjonowanie kodu  rozwiązania Power Platform

## Będziesz potrzebować
- Visual Studio Code
- Microsoft Power Platform Cli
- Power Shell Extension to VSC (od Microsoftu)
- zezwolić na wykonywanie skryptów powershell na masznie, gdzie pracujesz

## Co po kolei...

### Konfiguracja wstępna
- Pobierz niniejsze repo i otwórz je w Visual Studio Code
- Zezwól na wykonywanie skryptów powershell <br>
<code>Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted -Force</code>
- Do VSC zainstaluj dodatek <b>Power Platform Tools</b> (od Microsoftu)
- sprawdź, że z Power Shella masz dostępne narzędzia do administracji Power Platform (PAC). Wykonaj poniższe polecenie z <b>terminala powershell</b>:
    <br /><code>Get-Command pac | Format-List</code>
- podłącz się do tenanta, w którym masz środowisko z Power Platform używając polecenia <code>pac auth create</code>. 
    - refs: https://learn.microsoft.com/en-us/power-platform/developer/cli/reference/auth#pac-auth-create
    - uruchom
        <br /><code>cd .\scripts\</code><br />
        .\pac_auth_create.ps1</code>
    - (opcjonalnie) gdy piszemy z konsoli, to miło gdy po naciśnięciu tab terminal próbuje wykonać autocompletion. Do autocompletion terminala dodajemy opcje dostarczane przez pakiet <b>pac</b>. Aby to zrobić uruchom skrypt: <br />
<code>.\pac_auto_complete.ps1</code>
- zobacz listę środowisk, do których masz dostęp w tenancie, do którego jesteś podłączony:<br />
    <code>pac env list</code>. Jesteś podłączony do tego z gwiazdką
- podłącz się do środowiska, w którym chcesz pracować. Możesz to zrobić z dodatku Power Platform, albo z linii poleceń: <br /> 
    np. <code>pac env select --environment xat-rdu-lab</code>

Podczas warsztatów pracujemy z labami dostarczonymi przez Microsoft, w repo https://github.com/MicrosoftLearning/PL-400_Microsoft-Power-Platform-Developer. Sklonuj to repo do swojego folderu, proponuję użyć krótkiej ścieżki, np. aby sklonować do C:\GitHub. Poniższe polecenie wykonuje klon repozytorium do folderu C:\GitHub\PL-400:<br />
<code>git clone https://github.com/MicrosoftLearning/PL-400_Microsoft-Power-Platform-Developer.git C:\GitHub\PL-400</code>

### Demo 02
Objective: how to create a Dataverse solution.
Ref: https://github.com/MicrosoftLearning/PL-400_Microsoft-Power-Platform-Developer/blob/master/Instructions/Demos/DEMO%5BPL-400%5D_Demo02_Solution.md 

### Demo 03
Objective: Tworzenie tabel
Ref: https://github.com/MicrosoftLearning/PL-400_Microsoft-Power-Platform-Developer/blob/master/Instructions/Demos/DEMO%5BPL-400%5D_Demo03_Tables.md

### Checkpoint:
Jeśli chcesz mieć w swoim środowisku stan rozwiązania jaki wynika z powyższych demonstancji, to zaimportuj do swojego środowiska (może być tego z suffixem _lab) rozwiązanie: PL400Demos_1_0_3_0.zip. Uruchom poniższe:
- sprawdź, że jesteś podłączony z terminala do właściwego środowiska
    <br>&emsp;<code>pac auth list</code>
    <br />W kolumnie <i>Environment</i> powinno pokazać się środowisko xat-[XYZ]-lab, gdzie [XYZ] to Twoje inicjały
    <br />Jeśli chcesz odświeżyć / wylistować listę środowisk, do których masz dostęp:
    <br />&emsp;<code>pac env list</code>
    <br />Jeśli jest inne, to wykonaj:
    <br />&emsp;<code>pac env select --environment xat-[XYZ]-lab</code>
- zaimportuj rozwiązanie
    <br>&emsp;<code>pac solution import --path "C:\GitHub\PL-400\Allfiles\Demos\PL400Demos_1_0_3_0.zip" --activate-plugins true --publish-changes true --async true</code>
- zaloguj się do https://make.powerapps.com i zweryfikuj wynik importu
    - Zwrócić uwagę na kolumny systemowe (data czas utworzenia, modyfikacji, owner, stan rekordu, nr wersji rekordu itd.)
- informacja dodatkowa: rozwiązanie możesz importować/eksportować także z UI make.powerapps

### Demo 04
Objective: Tworzenie kolumn i relacji pomiędzy tabelami
Ref: https://github.com/MicrosoftLearning/PL-400_Microsoft-Power-Platform-Developer/blob/master/Instructions/Demos/DEMO%5BPL-400%5D_Demo04_Columns.md

### Lab 01