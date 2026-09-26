<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER c"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" maxBoucle="500000" nbDecimales="8" totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="c EST_DU_TYPE NOMBRE" code="1#NOMBRE#c"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR a ALLANT_DE 1 A 99" code="12#a#1#99">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="POUR b ALLANT_DE a + 1 A 99" code="12#b#a + 1#99">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="POUR c ALLANT_DE b + 1 A 99" code="12#c#b + 1#99">
                    <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                    <item algoitem="SI (a * a + b * b == c * c) ALORS" code="6#a * a + b * b == c * c">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
                        <item algoitem="AFFICHER &quot; &quot;" code="4# #0"/>
                        <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
                        <item algoitem="AFFICHER &quot; &quot;" code="4# #0"/>
                        <item algoitem="AFFICHER c" code="3#c#1#pasliste"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                    </item>
                    <item algoitem="FIN_POUR" code="14#finpour"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
