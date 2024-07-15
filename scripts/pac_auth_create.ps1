# Tworzy profil autoryzacyjny do środowiska w PP. 
# Ciekawostka: na jednej maszynie możesz mieć kilka profili, które cię autoryzują do różnych tenantów
pac auth create
#
# jeśli masz kilka profili, to wyświetlasz je za pomocą poniższego polecenia:
# pac auth list
#
# jeśli chcesz się przełączyć na inny profil autoryzacyjny, to wywołujesz polecenie:
# pac auth select --index [numerek wyświetlany poleceniem pac auth list]