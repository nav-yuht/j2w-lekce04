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
        [#if ucastnik.profilovyObrazek??]
            <img src="${ucastnik.profilovyObrazek}" class="card-img-top" alt="profilová fotka">
       [/#if]
        <div class="card-body">
            <h5 class="card-title">${ucasnik.jmeno} ${ucastnik.prijmeni}</h5>
            [#if ucastnik.bydliste??]
                <p class="card-text">Bydliště: ${ucastnik.bydliste}
            [/#if]
        </div>
    </div>
    <div><a href="/ucastnici/">Zpet na seznam ucastniku.</a> </div>
</div>
</body>
</html>