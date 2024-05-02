[#ftl]

<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>
<body>

<div class="container">
    [#include '/_common/header.ftlh']
    [#list ucastnici]
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col"></th>
            <th scope="col">Jméno</th>
            <th scope="col">Příjmení</th>
            <th scope="col">Bydliště</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#items as ucastnik] [#--to, co je v items, se ma opakovat.--]
        <tr>
            <li>${ucastnik?counter}</li>[#--counter je k zobrazeni poradoveho cisla ucastnika - cloveka - pocita se od 1
            dalsi moznost je ucasnik_index - pocita se od nuly--]
            <td>
                [#if ucastnik.gender == "žena"]
                    <i class="las la-venus" style="color: purple;">*</i>
                [#else]
                    <i class="las la-mars" style="color: blue;">*</i>
                [/#if]
            </td>
            <td>${ucastnik.jmeno}</td>
            <td>${ucastnik.prijmeni}</td>
            <td>[#if ucastnik.bydliste??]
                    ${ucastnik.bydliste}
                [#else]
                    <em><small>neuvedeno.</small></em>
                [/#if]
            </td>
            <td><a href="/ucastnici/${ucastnik?index}" class="btn btn-primary">Detail</a></td>
        </tr>
    [/#items]

        </tbody>

    </table>
[#else]
        <div>
            <em> <small>Seznam ucastniků je prázdný.</small> </em>
        </div>

    [/#list]
</div>
</body>
</html>
