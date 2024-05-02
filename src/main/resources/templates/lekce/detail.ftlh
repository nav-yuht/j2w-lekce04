[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>
<body>

<div class="container">
    [#include '/_common/header.ftlh']

    <div class="card" style="width: 18rem;">
        [#--[#if lekce??]
            <img src="${lekce}" class="card-img-top" alt="profilová fotka">
        [/#if]--]
        <div class="card-body">
            <h5 class="card-title">${lekce.nazevLekce} ${lekce.zacatekKurzu}
                ${lekce.casOd} - ${lekce.casDo}
                ${lekce.misto}
            </h5>
            [#--<p class="card-text">Role: ${lektor.role}</p>--]
        </div>
    </div>
</div>
</body>
</html>
[#--<div class="card" style="width: 18rem;">
        <img src="${ucastnik.profilovyObrazek}" class="card-img-top" alt="profilová fotka">
        <div class="card-body">
            <h5 class="card-title">${ucasnik.jmeno} ${ucasnik.prijmeni}</h5>
            [#if ucastnik.bydliste??]
                <p class="card-text">Bydliště: ${ucasnik.bydliste}
            [/#if]
        </div>--]