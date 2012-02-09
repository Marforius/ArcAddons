--[[  
ArcAddons
Copyright (C) 2012 Marforius

This file is part of ArcAddons.

ArcAddons is free software: you can redistribute it 
and/or modify it under the terms of the GNU General Public License as
published by the Free Software Foundation, version 3.

ArcAddons is distributed in the hope that it will 
be useful, but WITHOUT ANY WARRANTY; without even the implied warranty 
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
General Public License for more details.

You should have received a copy of the GNU General Public License
along with ArcAddons. If not, see <http://www.gnu.org/licenses/>.

This code is also released under the Attribution-Noncommercial-Share Alike 3.0 United States License its terms overwrite the GNU licence where applicable.
http://creativecommons.org/licenses/by-nc-sa/3.0/us/
]]

-- local project_name = "ArcEmu";  -- todo marforius

FEEDBACKUI_RED = "|cFFFF0000"
FEEDBACKUI_WHITE = "|cFFFFFFFF"
FEEDBACKUI_GREEN = "|cFF11EE11"
FEEDBACKUI_BLUE = "|cFF5A9FFF"
FEEDBACKUI_BLUE_COLOR = { r=.351, g=.621, b=1, a=1 }


FEEDBACKUI_SURVEYCOLOR = { r=0, g=0, b=.33, a=.6 };
FEEDBACKUI_BUGCOLOR = { r=.33, g=0, b=0, a=.6 };
FEEDBACKUI_SUGGESTIONCOLOR = { r=0, g=.33, b=0, a=.6};
FEEDBACKUI_DISABLEDCOLOR = { r=0, g=0, b=0, a=1 };

FEEDBACKUI_NONINSTANCEZONES = {}

for i = 1, 4 do
	for _, val in next, { GetMapZones(i) } do
		-- table.insert(FEEDBACKUI_NONINSTANCEZONES, val)
		FEEDBACKUI_NONINSTANCEZONES[val] = true;
	end
end

if ( GetLocale() == "frFR" ) then
	--Localized French strings for FEEDBACKUI
	--[[
	function frFR() end
	]]--
	--Non-instance special zone names
	FEEDBACKUI_EXCEPTIONZONES = { "Tram des profondeurs", "Hall des Champions", "La Mer interdite", "La Mer voil�e", "La Grande mer", "Vall�e d'Alterac", "Bassin d'Arathi", "Mont Rochenoire", "Goulet des Chanteguerres", "Hall des L�gendes", "Donjon d'Utgarde", }
	
	--Headers    
	FEEDBACKUIINFOPANELLABEL_TEXT = "Informations"
	FEEDBACKUI_BUGINPUTHEADER="Veuillez d�crire le bug"
	FEEDBACKUI_SUGGESTINPUTHEADER="Veuillez d�crire votre suggestion"
	
	--Labels
	FEEDBACKUIFEEDBACKFRMTITLE_TEXT = "Soumettre un retour"
	FEEDBACKUILBLFRMVER_TEXT = "Version�:"
	FEEDBACKUILBLFRMREALM_TEXT = "Royaume�:"
	FEEDBACKUILBLFRMNAME_TEXT = "Nom�:"
	FEEDBACKUILBLFRMCHAR_TEXT = "Personnage�:"
	FEEDBACKUILBLFRMMAP_TEXT = "Carte�:"
	FEEDBACKUILBLFRMZONE_TEXT = "Zone�:"
	FEEDBACKUILBLFRMAREA_TEXT = "R�gion�:"
	FEEDBACKUILBLFRMADDONS_TEXT = "Add-ons�:"
	FEEDBACKUILBLADDONSWRAP_TEXT = "Add-ons actuellement lanc�s�:\n"
	FEEDBACKUITYPEBUG_TEXT = "Bug"
	FEEDBACKUITYPESUGGEST_TEXT = "Suggestion"
	FEEDBACKUITYPESURVEY_TEXT = "Enqu�te"
	FEEDBACKUILBLFRMWHO_TEXT = "Qui�: "
	FEEDBACKUILBLFRMWHERE_TEXT = "O��: "
	FEEDBACKUILBLFRMWHEN_TEXT = "Quand�: "
	FEEDBACKUILBLFRMTYPE_TEXT = "Type : "
	FEEDBACKUI_GENDERTABLE = { "Inconnu", "M�le", "Femelle" }
	
	--Prompts
	FEEDBACKUIBUGFRMINPUTBOX_TEXT = "<Tapez ici les �tapes pour reproduire votre bug>"
	FEEDBACKUISUGGESTFRMINPUTBOX_TEXT = "<Tapez ici votre suggestion>"
	FEEDBACKUILBLADDONS_MOUSEOVER = "<Passer la souris pour voir les add-ons charg�s.>"
	FEEDBACKUI_CONFIRMATION = "Votre retour a �t� envoy�.\nMerci de nous aider � am�liorer ArcEmu!"
	
	--Tooltips & Buttons
	BUG_BUTTON="Soumettre retour"
	NEWBIE_TOOLTIP_BUG="Nous envoie un retour sur un bug ou une suggestion afin de nous aider � am�liorer ArcEmu"
	FEEDBACKUIBACK_TEXT = "Retour"
	FEEDBACKUIRESET_TEXT = "R�initialiser"
	FEEDBACKUISUBMIT_TEXT = "Soumettre"
	FEEDBACKUISTART_TEXT = "D�but"
	
	--Tables and strings for navigation.
	FEEDBACKUI_WELCOMETABLEBUGHEADER = "Reporter un bug"
	FEEDBACKUI_WELCOMETABLESUGGESTHEADER = "Faire une suggestion"
	FEEDBACKUI_WELCOMETABLESUBTEXT = "Merci de votre retour�!"
	
	FEEDBACKUI_WELCOME = "\nMerci d�avoir soumis un retour sur ArcEmu. Toutes vos propositions sont prises en compte afin de nous permettre d�am�liorer ArcEmu.\n\nVeuillez remplir ce bref questionnaire, qui nous aidera � traiter plus efficacement l��norme quantit� de commentaires que nous recevons.\n\nMerci,\nBlizzard Entertainement"
	
	FEEDBACKUI_WHOTABLEHEADER = FEEDBACKUI_WHITE .. "Qui" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHOTABLESUBTEXT = "Qu�est-ce qui est affect� par ce probl�me ?"
	
	FEEDBACKUI_STRWHOPLAYER = "Affecte mon personnage."
	FEEDBACKUI_STRPARTYMEMBER = "Affecte les membres de mon groupe."
	FEEDBACKUI_STRRAIDMEMBER = "Affecte les membres de mon raid."
	FEEDBACKUI_STRENEMYPLAYER = "Affecte un personnage ennemi."
	FEEDBACKUI_STRFRIENDLYPLAYER = "Affecte un personnage amical."
	FEEDBACKUI_STRENEMYCREATURE = "Affecte une cr�ature ennemie."
	FEEDBACKUI_STRFRIENDLYCREATURE = "Affecte une cr�ature amicale."
	FEEDBACKUI_STRWHONA = "N'implique ni personnage ni cr�ature."
	
	FEEDBACKUI_WHOPLAYER = "Mon personnage"
	FEEDBACKUI_ENEMYPLAYER = "Personnage ennemi"
	FEEDBACKUI_FRIENDLYPLAYER = "Personnage amical"
	FEEDBACKUI_PARTYMEMBER = "Membre du groupe"
	FEEDBACKUI_RAIDMEMBER = "Membre du raid"
	FEEDBACKUI_ENEMYCREATURE = "Cr�ature ennemie"
	FEEDBACKUI_FRIENDLYCREATURE = "Cr�ature amicale"
	FEEDBACKUI_WHONA = "N/A"
	
	FEEDBACKUI_WHERETABLEHEADER = FEEDBACKUI_WHITE .. "O�" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHERETABLESUBTEXT = "O� se produit le probl�me ?"
	
	FEEDBACKUI_STRAREATABLE = "Cela se produit en jeu"
	FEEDBACKUI_STRWHEREINSTALL = "Cela se produit � l'installation"
	FEEDBACKUI_STRWHEREDOWNLOAD = "Cela se produit au t�l�chargement"
	FEEDBACKUI_STRWHEREPATCH = "Cela se produit � la mise � jour"
	
	FEEDBACKUI_WHEREINSTALL = "En installant"
	FEEDBACKUI_WHEREDOWNLOAD = "En t�l�chargeant"
	FEEDBACKUI_WHEREPATCH = "En mettant � jour"
	
	FEEDBACKUI_AREATABLESUMMARY = FEEDBACKUI_GREEN .. "Quelque part en jeu"
	
	
	-----------------------Begin Area Strings --------------------------------------------------------------------------------
	FEEDBACKUI_STROCCURS = "- Cela se produit dans "; --LOCALIZE ME
	FEEDBACKUI_EVERYWHERE = "Partout en jeu"
	FEEDBACKUI_STREVERYWHERE = "Cela se produit partout en jeu."
	
	--AZEROTH
	FEEDBACKUI_AZEROTH = "Azeroth"
	
	--Northrend
	FEEDBACKUI_NORTHREND = "Norfendre"
	FEEDBACKUI_BOREANTUNDRA = "Toundra Bor�enne"
	FEEDBACKUI_CRYSTALSONG = "For�t du Chant de cristal" --LOCALIZE ME
	FEEDBACKUI_DALARAN = "Dalaran" 
	FEEDBACKUI_DRAGONBLIGHT = "D�solation des dragons"
	FEEDBACKUI_GRIZZLYHILLS = "Les Grisonnes"
	FEEDBACKUI_HOWLINGFJORD = "Fjord Hurlant"
	FEEDBACKUI_ICECROWN = "La Couronne de glace"--LOCALIZE ME
	FEEDBACKUI_NEXUS = "Nexus"
	FEEDBACKUI_SHOLAZARBASIN = "Bassin de Sholazar" --LOCALIZE ME
	FEEDBACKUI_STORMPEAKS = "Les pics Foudroy�s" --LOCALIZE ME
	FEEDBACKUI_UTGARDEPINNACLE = "Cime d�Utgarde"
	FEEDBACKUI_WINTERGRASP = "Joug-d'hiver" --LOCALIZE ME
	FEEDBACKUI_ZULDRAK = "Zul'Drak" 
	FEEDBACKUI_STRNORTHREND = "Cela se produit en Norfendre."
	--End Northrend
	
	--Eastern Kingdoms
	FEEDBACKUI_EKINGDOMS = "Royaumes de l'Est"
	FEEDBACKUI_ALTERACMOUNTAINS = "Mts d'Alterac"
	FEEDBACKUI_ALTERACVALLEY = "Vall�e d'Alterac"
	FEEDBACKUI_ARATHIBASIN = "Bassin d'Arathi"
	FEEDBACKUI_ARATHIHIGHLANDS = "Hautes-terres d'Arathi"
	FEEDBACKUI_BADLANDS = "Terres ingrates"
	FEEDBACKUI_BLACKROCKMOUNTAIN = "Mont Rochenoire"
	FEEDBACKUI_BLASTEDLANDS = "Terres foudroy�es"
	FEEDBACKUI_BURNINGSTEPPES = "Steppes ardentes"
	FEEDBACKUI_DEADWINDPASS = "D�fil� de Deuillevent"
	FEEDBACKUI_DUNMOROGH = "Dun Morogh"
	FEEDBACKUI_DUSKWOOD = "Bois de la P�nombre"
	FEEDBACKUI_EPLAGUELANDS = "Maleterres de l'est"
	FEEDBACKUI_ELWYNN = "For�t d'Elwynn"
	FEEDBACKUI_EVERSONG = "Bois des Chants �ternels"
	FEEDBACKUI_GHOSTLANDS = "Terres fant�mes"
	FEEDBACKUI_HILLSBRAD = "Hautebrande"
	FEEDBACKUI_HINTERLANDS = "Les Hinterlands"
	FEEDBACKUI_IRONFORGE = "Forgefer"
	FEEDBACKUI_ISLEOFQUELDANAS = "�le de Quel'Danas" --LOCALIZE ME
	FEEDBACKUI_LOCHMODAN = "Loch Modan"
	FEEDBACKUI_REDRIDGE = "Les Carmines"
	FEEDBACKUI_SEARINGGORGE = "Gorge des Vents br�lants"
	FEEDBACKUI_SILVERMOON = "Lune-d'argent"
	FEEDBACKUI_SILVERPINE = "For�t des Pins argent�s"
	FEEDBACKUI_STORMWIND = "Hurlevent"
	FEEDBACKUI_STRANGLETHORN = "Vall�e de Strangleronce"
	FEEDBACKUI_SWAMPOFSORROWS = "Marais des Chagrins"
	FEEDBACKUI_TIRISFAL = "Clairi�res de Tirisfal"
	FEEDBACKUI_UNDERCITY = "Fossoyeuse"
	FEEDBACKUI_WPLAGUELANDS = "Maleterres de l'ouest"
	FEEDBACKUI_WESTFALL = "Marche de l'ouest"
	FEEDBACKUI_WETLANDS = "Les Paluns"
	FEEDBACKUI_STREKINGDOMS = "Cela se produit dans les Royaumes de l'est."
	--End Eastern Kingdoms
	
	--Kalimdor
	FEEDBACKUI_KALIMDOR = "Kalimdor"
	FEEDBACKUI_ASHENVALE = "Orneval"
	FEEDBACKUI_AZSHARA = "Azshara"
	FEEDBACKUI_AZUREMYST = "Brume-azur"
	FEEDBACKUI_BARRENS = "Les Tarides"
	FEEDBACKUI_BLOODMYST = "Brume-sang"
	FEEDBACKUI_DARKSHORE = "Sombrivage"
	FEEDBACKUI_DARNASSUS = "Darnassus";
	FEEDBACKUI_DESOLACE = "D�solace"
	FEEDBACKUI_DUROTAR = "Durotar"
	FEEDBACKUI_DUSTWALLOW = "Mar�cage d'�prefange"
	FEEDBACKUI_EXODAR = "L'Exodar"
	FEEDBACKUI_FELWOOD = "Gangrebois"
	FEEDBACKUI_FERALAS = "F�ralas"
	FEEDBACKUI_MOONGLADE = "Reflet-de-Lune"
	FEEDBACKUI_MULGORE = "Mulgore"
	FEEDBACKUI_ORGRIMMAR = "Orgrimmar";
	FEEDBACKUI_SILITHUS = "Silithus";
	FEEDBACKUI_STONETALON = "Serres-rocheuses"
	FEEDBACKUI_TANARIS = "Tanaris";
	FEEDBACKUI_TELDRASSIL = "Teldrassil";
	FEEDBACKUI_THUNDERBLUFF = "Les Pitons du tonnerre"
	FEEDBACKUI_THOUSANDNEEDLES = "Les Mille pointes"
	FEEDBACKUI_UNGORO = "Crat�re d'Un'Goro"
	FEEDBACKUI_WARSONG = "Goulet des Chanteguerres"
	FEEDBACKUI_WINTERSPRING = "Berceau-de-l'hiver" 
	FEEDBACKUI_STRKALIMDOR = "Cela se produit en Kalimdor"
	--End Kalimdor
	
	--Outland
	FEEDBACKUI_OUTLANDS = "Outreterre"
	FEEDBACKUI_BLADESEDGE = "Les Tranchantes"
	FEEDBACKUI_HELLFIRE = "P�ninsule des Flammes infernales"
	FEEDBACKUI_NAGRAND = "Nagrand"
	FEEDBACKUI_NETHERSTORM = "Raz-de-N�ant"
	FEEDBACKUI_SHADOWMOON = "Vall�e d'Ombrelune"
	FEEDBACKUI_SHATTRATH = "Shattrath"
	FEEDBACKUI_TERROKAR = "For�t de Terokkar"
	FEEDBACKUI_TWISTINGNETHER = "N�ant distordu"
	FEEDBACKUI_ZANGARMARSH = "Mar�cage de Zangar"
	FEEDBACKUI_STROUTLANDS = "Cela se produit en Outreterre."
	--End Outland
	
	--Alert Targets/Extra Areas
	FEEDBACKUI_BLACKTEMPLE = "Temple noir"
	FEEDBACKUI_KAJA = "Kaja'mine"
	FEEDBACKUI_ZULAMAN = "Zul'Aman"
	FEEDBACKUI_SUNWELLPLATEAU = "Plateau du Puits de soleil"
	FEEDBACKUI_MAGISTERSTERRACE = "Terrasse des Magist�res"
	FEEDBACKUI_UTGARDEKEEP = "Donjon d'Utgarde"
	FEEDBACKUI_DRAKTHARONKEEP = "Donjon de Drak'Tharon"
	FEEDBACKUI_ULDUAR = "Ulduar"
	FEEDBACKUI_HOL = "Les salles de Foudre"
	FEEDBACKUI_TAC = "Le colis�e d'Argent"
	FEEDBACKUI_IOC = "�le des Conqu�rants"
	--End Alert Targets
	--End Area Strings--------------------------------------------------------------------------------------------------------------------------------------------
	
	FEEDBACKUI_WHENTABLEHEADER = FEEDBACKUI_WHITE .. "Quand" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHENTABLESUBTEXT = "Quelle est la fr�quence du probl�me ?"
	
	FEEDBACKUI_STRREPRODUCABLE = "Cela se produit tout le temps."
	FEEDBACKUI_STRSOMETIMES = "Cela se produit de temps en temps."
	FEEDBACKUI_STRRARELY = "Cela se produit rarement."
	FEEDBACKUI_STRONETIME = "Cela s'est produit une seule fois."
	
	
	FEEDBACKUI_REPRODUCABLE = "Tout le temps"
	FEEDBACKUI_SOMETIMES = "De temps en temps"
	FEEDBACKUI_RARELY = "Rarement"
	FEEDBACKUI_ONETIME = "Une seule fois"
	
	FEEDBACKUI_TYPETABLEHEADER = FEEDBACKUI_WHITE .. "Type" .. FEEDBACKUI_WHITE
	FEEDBACKUI_TYPETABLESUBTEXT = "De quel type est ce probl�me ?"
	
	FEEDBACKUI_STRUIOTHER = "C'est un probl�me d'interface utilisateur."
	FEEDBACKUI_STRUIITEMS = "- C'est un probl�me d'UI de l'objet"
	FEEDBACKUI_STRUISPAWNS = "- C'est un probl�me d'IU cr�ature."
	FEEDBACKUI_STRUIQUESTS = "- C'est un probl�me d'IU qu�te."
	FEEDBACKUI_STRUISPELLS = "- C'est un probl�me d'IU d'un sort ou talent."
	FEEDBACKUI_STRUITRADESKILLS = "- C'est un probl�me d'IU artisanat."
	
	FEEDBACKUI_STRGRAPHICOTHER = "C'est un probl�me graphique."
	FEEDBACKUI_STRGRAPHICITEMS = "- C'est un probl�me graphique d'un objet."
	FEEDBACKUI_STRGRAPHICSPAWNS = "- C'est un probl�me graphique cr�ature."
	FEEDBACKUI_STRGRAPHICSPELLS = "- C'est un probl�me graphique d'un sort ou talent."
	FEEDBACKUI_STRGRAPHICENVIRONMENT = "- C'est un probl�me graphique d'environnement."
	
	FEEDBACKUI_STRFUNCOTHER = "C'est un probl�me fonctionnel."
	FEEDBACKUI_STRFUNCITEMS = "- C'est un probl�me fonctionnel d'objet."
	FEEDBACKUI_STRFUNCSPAWNS = "- C'est un probl�me fonctionnel d'une cr�ature."
	FEEDBACKUI_STRFUNCQUESTS = "- C'est un probl�me fonctionnel de qu�te."
	FEEDBACKUI_STRFUNCSPELLS = "- C'est un probl�me fonctionnel de sort ou talent."
	FEEDBACKUI_STRFUNCTRADESKILLS = "- C'est un probl�me fonctionnel d'artisanat."
	
	FEEDBACKUI_STRCRASHOTHER = "C'est un probl�me de stabilit�."
	FEEDBACKUI_STRCRASHBUG = "- Il fait un planter WoW."
	FEEDBACKUI_STRCRASHSOFTLOCK = "- Il fige WoW."
	FEEDBACKUI_STRCRASHHARDLOCK = "- Il fige mon ordinateur."
	FEEDBACKUI_STRCRASHWOWLAG = "- Il est li� � la latence."
	
	FEEDBACKUI_UIITEMS = "Probl�me d'IU objet"
	FEEDBACKUI_UISPAWNS = "Probl�me d'IU cr�ature"
	FEEDBACKUI_UIQUESTS = "Probl�me d'IU qu�te"
	FEEDBACKUI_UISPELLS = "Probl�me d'IU sort ou talent"
	FEEDBACKUI_UITRADESKILLS = "Probl�me d'IU artisanat"
	FEEDBACKUI_UIOTHER = "Probl�me d'IU g�n�ral"
	
	FEEDBACKUI_GRAPHICITEMS = "Probl�me graphique objet"
	FEEDBACKUI_GRAPHICSPAWNS = "Probl�me graphique cr�ature"
	FEEDBACKUI_GRAPHICSPELLS = "Probl�me graphique sort ou talent"
	FEEDBACKUI_GRAPHICENVIRONMENT = "Probl�me graphique environnement"
	FEEDBACKUI_GRAPHICOTHER = "Probl�me graphique g�n�ral"
	
	FEEDBACKUI_FUNCITEMS = "Probl�me fonctionnel objet"
	FEEDBACKUI_FUNCSPAWNS = "Probl�me fonctionnel cr�ature"
	FEEDBACKUI_FUNCQUESTS = "Probl�me fonctionnel qu�te"
	FEEDBACKUI_FUNCSPELLS = "Probl�me fonctionnel sort ou talent"   
	FEEDBACKUI_FUNCTRADESKILLS = "Probl�me fonctionnel artisanat"
	FEEDBACKUI_FUNCOTHER = "Probl�me fonctionnel g�n�ral"
	
	FEEDBACKUI_SPELLSPOWERTABLEHEADER = "Puissance"
	FEEDBACKUI_SPELLSPOWERTABLESUBTEXT = "Quelle est la puissance de cette capacit� ?"
	FEEDBACKUI_SPELLSFREQUENCYTABLEHEADER = "Fr�quence"
	FEEDBACKUI_SPELLSFREQUENCYTABLESUBTEXT = "A quelle fr�quence comptez-vous utiliser cette capacit� ?"
	FEEDBACKUI_SPELLSAPPROPRIATETABLEHEADER = "Pertinence"
	FEEDBACKUI_SPELLSAPPROPRIATETABLESUBTEXT = "Comment s�int�gre-t-elle � des capacit�s similaires?"
	FEEDBACKUI_SPELLSFUNTABLEHEADER = "Amusement"
	FEEDBACKUI_SPELLSFUNTABLESUBTEXT = "Cette capacit� est-elle amusante � utiliser ?"
	
	FEEDBACKUI_STRPOWER1 = "Tr�s faible";
	FEEDBACKUI_STRPOWER2 = "Faible";
	FEEDBACKUI_STRPOWER3 = "Puissante";
	FEEDBACKUI_STRPOWER4 = "Tr�s puissante";
	
	FEEDBACKUI_STRFREQUENCY1 = "Rarement";
	FEEDBACKUI_STRFREQUENCY2 = "Parfois";
	FEEDBACKUI_STRFREQUENCY3 = "Souvent";
	FEEDBACKUI_STRFREQUENCY4 = "D�s que possible";
	
	FEEDBACKUI_STRAPPROPRIATE1 = "Pas pertinente";
	FEEDBACKUI_STRAPPROPRIATE2 = "Peu pertinente";
	FEEDBACKUI_STRAPPROPRIATE3 = "Pertinente";
	FEEDBACKUI_STRAPPROPRIATE4 = "Tr�s pertinente";
	
	FEEDBACKUI_SPELLHEADERTEXT = "Sorts"
	FEEDBACKUILBLPOWER_TEXT = "Puissance :"
	FEEDBACKUILBLFREQUENCY_TEXT = "Fr�quence :"
	FEEDBACKUILBLAPPROPRIATE_TEXT = "Pertinence :"
	
	FEEDBACKUI_CRASHBUG = "Le probl�me fait planter WoW"
	FEEDBACKUI_CRASHSOFTLOCK = "Le probl�me fige WoW"
	FEEDBACKUI_CRASHHARDLOCK = "Le probl�me fige l'ordinateur"
	FEEDBACKUI_CRASHWOWLAG = "Le probl�me cause de la latence"
	FEEDBACKUI_CRASHOTHER = "Probl�me de stabilit� g�n�ral"
	
	FEEDBACKUILBLFRMCLARITY_TEXT = "Clart�: "
	FEEDBACKUILBLFRMDIFFICULTY_TEXT = "Difficult�: "
	FEEDBACKUILBLFRMREWARD_TEXT = "R�compenses�: "
	FEEDBACKUILBLFRMFUN_TEXT = "Amusement�: "
	FEEDBACKUISURVEYTYPE_QUEST = "Qu�te"
	FEEDBACKUISURVEYTYPE_AREA = "Instance"
	
	FEEDBACKUISKIP_TEXT = "Passer"
	FEEDBACKUILBLSURVEYALERTSCHECK_TEXT = "Voir alertes"
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "Veuillez choisir une enqu�te."
	FEEDBACKUI_WELCOMETABLESURVEYSUBTEXT = "Vos avanc�es feront l'objet d'autres enqu�tes."
	
	FEEDBACKUI_SURVEYCOLUMNNAME = "Nom"
	FEEDBACKUI_SURVEYCOLUMNMODIFIED = "Essay�e"
	
	FEEDBACKUI_ALLHEADERTEXT = "Tout"
	FEEDBACKUI_AREAHEADERTEXT = "Instances"
	FEEDBACKUI_QUESTHEADERTEXT = "Qu�tes"
	
	FEEDBACKUI_STATUSALLTEXT = "Toutes"
	FEEDBACKUI_STATUSAVAILABLETEXT = "Disponibles"
	FEEDBACKUI_STATUSSKIPPEDTEXT = "Pass�es"
	FEEDBACKUI_STATUSCOMPLETEDTEXT = "Termin�es"
	
	FEEDBACKUI_SURVEYTOOLTIPQUESTHEADER = "Nom de la qu�te�:"
	FEEDBACKUI_SURVEYTOOLTIPAREAHEADER = "Nom de l'instance�:"
	FEEDBACKUI_SURVEYTOOLTIPEXPERIENCEDHEADER = "Il y a�:"
	FEEDBACKUI_SURVEYTOOLTIPQUESTOBJECTIVESHEADER = "Objectifs de la qu�te�:"
	
	FEEDBACKUI_NEW = "Nouvelle"
	FEEDBACKUI_HOURAGO = " heure"
	FEEDBACKUI_HOURSAGO = " heures"
	FEEDBACKUI_DAYAGO = " jour"
	FEEDBACKUI_DAYSAGO = " jours"
	FEEDBACKUI_MONTHAGO = " mois"
	FEEDBACKUI_MONTHSAGO = " mois"
	FEEDBACKUI_YEARAGO = " an"
	FEEDBACKUI_YEARSAGO = " ans"
	
	FEEDBACKUI_QUESTSCLARITYTABLEHEADER = "Clart�"
	FEEDBACKUI_QUESTSCLARITYTABLESUBTEXT = "Les objectifs de la qu�te �taient-ils clairs�?"
	
	FEEDBACKUI_STRCLARITY1 = "Tr�s vagues"
	FEEDBACKUI_STRCLARITY2 = "Assez vagues"
	FEEDBACKUI_STRCLARITY3 = "Plut�t clairs"
	FEEDBACKUI_STRCLARITY4 = "Parfaitement clairs"
	
	FEEDBACKUI_CLARITY1 = "Tr�s vague"
	FEEDBACKUI_CLARITY2 = "Assez vague"
	FEEDBACKUI_CLARITY3 = "Plut�t clair"
	FEEDBACKUI_CLARITY4 = "Parfaitement clair"
	
	FEEDBACKUI_QUESTSDIFFICULTYTABLEHEADER = "Difficult�"
	FEEDBACKUI_QUESTSDIFFICULTYTABLESUBTEXT = "La qu�te �tait-elle difficile�?"
	FEEDBACKUI_AREASDIFFICULTYTABLEHEADER = "Difficult�"
	FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT = "Les �preuves de l'instance �taient-elles dures�?"
	
	FEEDBACKUI_STRDIFFICULTY1 = "Facile"
	FEEDBACKUI_STRDIFFICULTY2 = "Faisable"
	FEEDBACKUI_STRDIFFICULTY3 = "Coriace"
	FEEDBACKUI_STRDIFFICULTY4 = "Difficile"
	FEEDBACKUI_STRDIFFICULTY5 = "N/A"
	
	FEEDBACKUI_DIFFICULTY1 = "Facile"
	FEEDBACKUI_DIFFICULTY2 = "Faisable"
	FEEDBACKUI_DIFFICULTY3 = "Coriace"
	FEEDBACKUI_DIFFICULTY4 = "Difficile"
	FEEDBACKUI_DIFFICULTY5 = "N/A"
	
	FEEDBACKUI_QUESTSREWARDTABLEHEADER = "R�compense"
	FEEDBACKUI_QUESTSREWARDTABLESUBTEXT = "Comment trouvez-vous la r�compense de qu�te�?"
	FEEDBACKUI_AREASREWARDTABLEHEADER = "R�compense"
	FEEDBACKUI_AREASREWARDTABLESUBTEXT = "Que pensez-vous des r�compenses de l'instance�?"
	
	FEEDBACKUI_STRREWARD1 = "Nulle"
	FEEDBACKUI_STRREWARD2 = "Insatisfaisante"
	FEEDBACKUI_STRREWARD3 = "Bonne"
	FEEDBACKUI_STRREWARD4 = "Excellente"
	FEEDBACKUI_STRREWARD5 = "N/A"
	
	FEEDBACKUI_REWARD1 = "Nulles"
	FEEDBACKUI_REWARD2 = "Insatisfaisantes"
	FEEDBACKUI_REWARD3 = "Bonnes"
	FEEDBACKUI_REWARD4 = "Excellentes"
	FEEDBACKUI_REWARD5 = "N/A"
	
	FEEDBACKUI_QUESTSFUNTABLEHEADER = "Amusement"
	FEEDBACKUI_QUESTSFUNTABLESUBTEXT = "La qu�te �tait-elle amusante�?"
	FEEDBACKUI_AREASFUNTABLEHEADER = "Amusement"
	FEEDBACKUI_AREASFUNTABLESUBTEXT = "L'instance �tait-elle amusante�?"
	
	FEEDBACKUI_STRFUN1 = "Pas amusante du tout"
	FEEDBACKUI_STRFUN2 = "Pas tr�s amusante"
	FEEDBACKUI_STRFUN3 = "Plut�t amusante"
	FEEDBACKUI_STRFUN4 = "Tr�s amusante"
	
	FEEDBACKUI_FUN1 = "Pas amusante du tout"
	FEEDBACKUI_FUN2 = "Pas tr�s amusante"
	FEEDBACKUI_FUN3 = "Plut�t amusante"
	FEEDBACKUI_FUN4 = "Tr�s amusante"
	
	--FEEDBACKUISURVEYFRMINPUTBOX_TEXT = "<Indiquez ici tout autre remarque que vous souhaitez nous communiquer>"
	FEEDBACKUISURVEYFRMINPUTBOX_TEXT = "<Indiquez ici toute autre remarque que vous souhaitez nous communiquer>"
	FEEDBACKUI_SURVEYINPUTHEADER = "Merci d'indiquer vos remarques"
	FEEDBACKUIRESUBMIT_TEXT = "Reposter"
	
	FEEDBACKUI_WELCOMETABLEBUGHEADER = "Signaler un bug"
	FEEDBACKUI_WELCOMETABLEBUGSUBTEXT = "Signaler les bugs nous aide � corriger le jeu"
	FEEDBACKUI_WELCOMETABLESUGGESTHEADER = "Faire une suggestion"
	FEEDBACKUI_WELCOMETABLESUGGESTSUBTEXT = "Vos id�es nous aident � am�liorer le jeu"
	FEEDBACKUI_BUGINPUTHEADER = "Comment reproduire ce bug�?"
	FEEDBACKUI_SUGGESTINPUTHEADER = "Veuillez d�crire votre suggestion"
	
	FEEDBACKUI_SURVEYNEWBIETEXT = "Cliquez ici pour completer le questionnaire relatif � une instance ou une qu�te que vous avez r�cement termin�e." 
	FEEDBACKUI_POIMASK = "%w+%s%-%s(.+)"
	
	
	FEEDBACKUI_LEVELPREFIX = "Niveau"
	FEEDBACKUI_HILLSBRAD = "Royaumes de l'est - Contreforts de Hautebrande";
	FEEDBACKUISURVEYTYPE_AREA = "Zone"
	FEEDBACKUISURVEYTYPE_ITEM = "Objet"
	FEEDBACKUISURVEYTYPE_MOB = "Monstre"
	FEEDBACKUI_AREAHEADERTEXT = "Zones"
	FEEDBACKUI_QUESTHEADERTEXT = "Qu�tes"
	FEEDBACKUI_ITEMHEADERTEXT = "Objets"
	FEEDBACKUI_MOBHEADERTEXT = "Monstres"
	FEEDBACKUI_SURVEYTOOLTIPAREAHEADER = "Nom de zone:"
	FEEDBACKUI_AREASDIFFICULTYTABLEHEADER = "Difficult�"
	FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT = "Quelle �tait la difficult� des rencontres de la zone�?"
	FEEDBACKUI_AREASREWARDTABLEHEADER = "R�compense"
	FEEDBACKUI_AREASREWARDTABLESUBTEXT = "Comment �valuez-vous les r�compenses de la zone�?"
	FEEDBACKUI_AREASFUNTABLEHEADER = "Amusement"
	FEEDBACKUI_AREASFUNTABLESUBTEXT = "Avez-vous eu plaisir � jouer dans cette zone�?"
	FEEDBACKUI_SURVEYINPUTSUBTEXT = "Cliquez ici pour avoir des exemples de retour"
	FEEDBACKUI_SURVEYNEWBIETEXT = "Cliquez ici pour remplir un sondage sur cette exp�rience."
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "Veuillez choisir un sondage"
	
	FEEDBACKUI_SPECIFICWELCOME = "Merci de nous fournir un retour sur ArcEmu. Vous avez choisi de donner un retour sur�:\n\n\n\n\nPour continuer, veuillez choisir l�une des options suivantes�:";
	FEEDBACKUI_GENERALWELCOME = "Merci de nous fournir un retour sur ArcEmu. Tous les commentaires re�us servent � am�liorer la qualit� de ArcEmu.\n\nPour continuer, veuillez choisir l�une des options suivantes�:";
	
	FEEDBACKUI_STARTBUG = "Signaler un bug"
	FEEDBACKUI_STARTSURVEY = "Commencer un sondage"
	FEEDBACKUI_STARTSUGGESTION = "Faire une suggestion"
	
	FEEDBACKUI_WELCOMEBUGHEADER = "Bug"
	FEEDBACKUI_WELCOMESUGGESTHEADER = "Suggestion"
	FEEDBACKUI_WELCOMESURVEYHEADER = "Sondage"
	
	FEEDBACKUI_WELCOMEBUGTEXT = "Un bug nous informe d'une erreur constat�e dans le jeu." 
	FEEDBACKUI_WELCOMESUGGESTTEXT = "Une suggestion nous indique de quelle fa�on vous aimeriez que le jeu soit am�lior�."
	FEEDBACKUI_WELCOMESURVEYTEXT = "Un sondage vous permet de nous envoyer un retour sur une partie du jeu."
	FEEDBACKUI_WELCOMESURVEYDISABLED = "Aucun sondage disponible � ce sujet pour le moment."
	
	FEEDBACKUI_MODIFIERKEY = "Raccourcis:"
	FEEDBACKUI_MOUSE1 = "Clic gauche"
	FEEDBACKUI_MOUSE2 = "Clic droit"
	
	FEEDBACKUI_LALT = "Alt gauche"
	FEEDBACKUI_RALT = "Alt droit"
	FEEDBACKUI_LCTRL = "Ctrl gauche"
	FEEDBACKUI_RCTRL = "Ctrl droit"
	FEEDBACKUI_LSHIFT = "Maj gauche"
	FEEDBACKUI_RSHIFT = "Maj droit"
	
	FEEDBACKUI_TOOLTIP_MESSAGE = "<%s+%s pour un retour>";
	FEEDBACKUI_MAP_MESSAGE = "%s+%s gauche sur la carte pour un retour";
	FEEDBACKUI_ITEMTARGETS = { "Armure", "Consommable", "Conteneur", "Projectile", "Carquois", "Arme", "Recette", "Gemme" };
	FEEDBACKUI_MISCTYPE = "Divers";
	FEEDBACKUISHOWCUES_TEXT = "Voir les bulles d'aide";
	
	FEEDBACKUI_CATEGORYLABEL = "Type�:"
	FEEDBACKUI_STATUSLABEL = "Statut�:"
	
	NEWBIE_TOOLTIP_BUG="Aidez-nous � am�liorer ArcEmu en nous signalant un bug, en faisant une suggestion ou en r�pondant � un sondage.\n\n" .. FEEDBACKUI_BLUE .. "Clic gauche pour commencer.\nClic droit pour afficher les options.";
	FEEDBACKUILBLAPPEARANCE_TEXT = "Apparence�:"
	FEEDBACKUILBLUTILITY_TEXT = "Utilit�:"
	
	FEEDBACKUI_MOBSDIFFICULTYTABLEHEADER = "Difficult�"                   
	FEEDBACKUI_MOBSDIFFICULTYTABLESUBTEXT = "Ce monstre �tait-il difficile � tuer�?"
	FEEDBACKUI_MOBSREWARDTABLEHEADER = "R�compense"
	FEEDBACKUI_MOBSREWARDTABLESUBTEXT = "Comment jugez-vous la r�compense donn�e par le monstre�?"
	FEEDBACKUI_MOBSFUNTABLEHEADER = "Amusement"
	FEEDBACKUI_MOBSFUNTABLESUBTEXT = "La rencontre avec ce monstre �tait-elle plaisante�?"
	FEEDBACKUI_MOBSAPPEARANCETABLEHEADER = "Apparence"
	FEEDBACKUI_MOBSAPPEARANCETABLESUBTEXT = "Comment jugez-vous l'apparence de ce monstre�?"
	
	FEEDBACKUI_ITEMSDIFFICULTYTABLEHEADER = "Difficult�"
	FEEDBACKUI_ITEMSDIFFICULTYTABLESUBTEXT = "Cet objet �tait-il difficile � obtenir�?"
	FEEDBACKUI_ITEMSUTILITYHEADER = "Utilit�"
	FEEDBACKUI_ITEMSUTILITYSUBTEXT = "Cet objet est-il utile, en g�n�ral�?"
	FEEDBACKUI_ITEMSAPPEARANCETABLEHEADER = "Apparence"
	FEEDBACKUI_ITEMSAPPEARANCETABLESUBTEXT = "Comment jugez-vous l'apparence de cet objet�?"
	
	FEEDBACKUI_STRUTILITY1 = "Compl�tement inutile"
	FEEDBACKUI_STRUTILITY2 = "Plut�t inutile"
	FEEDBACKUI_STRUTILITY3 = "Utile"
	FEEDBACKUI_STRUTILITY4 = "Tr�s utile"
	
	FEEDBACKUI_UTILITY1 = "Compl�tement inutile"
	FEEDBACKUI_UTILITY2 = "Plut�t inutile"
	FEEDBACKUI_UTILITY3 = "Utile"
	FEEDBACKUI_UTILITY4 = "Tr�s utile"
	
	FEEDBACKUI_STRAPPEARANCE1 = "Mauvais(e)"
	FEEDBACKUI_STRAPPEARANCE2 = "M�diocre"
	FEEDBACKUI_STRAPPEARANCE3 = "Bon(ne)"
	FEEDBACKUI_STRAPPEARANCE4 = "Remarquable"
	
	FEEDBACKUI_APPEARANCE1 = "Mauvais(e)"
	FEEDBACKUI_APPEARANCE2 = "M�diocre"
	FEEDBACKUI_APPEARANCE3 = "Bon(ne)"
	FEEDBACKUI_APPEARANCE4 = "Remarquable"
	
	FEEDBACKUI_POIUNDERCITY = "Fossoyeuse";
	FEEDBACKUI_POISILVERMOON = "Lune-d'argent";
	FEEDBACKUI_POIIRONFORGE = "Forgefer";
	FEEDBACKUI_POISTORMWIND = "Hurlevent";
	FEEDBACKUI_POISEPULCHER = "Le S�pulcre";
	FEEDBACKUI_POITARRENMILL = "Moulin-de-Tarren";
	FEEDBACKUI_POISOUTHSHORE = "Austrivage";
	FEEDBACKUI_POIAERIEPEAK = "Nid-de-l'aigle";
	FEEDBACKUI_POIREVANTUSK = "Village des Vengebroches";
	FEEDBACKUI_POIHAMMERFALL = "Tr�pas-d'Orgrim";
	FEEDBACKUI_POIMENETHIL = "Port de Menethil";
	FEEDBACKUI_POITHELSAMAR = "Thelsamar";
	FEEDBACKUI_POIKARGATH = "Kargath";
	FEEDBACKUI_POILAKESHIRE = "Comt�-du-lac";
	FEEDBACKUI_POISENTINELHILL = "Colline des sentinelles";
	FEEDBACKUI_POIDARKSHIRE = "Sombre-comt�";
	FEEDBACKUI_POISTONARD = "Pierr�che";
	FEEDBACKUI_POIGROMGOL = "Campement Grom'gol";
	
	
	FEEDBACKUI_POIDARNASSUS = "Darnassus";
	FEEDBACKUI_POIEXODAR = "L'Exodar";
	FEEDBACKUI_POIORGRIMMAR = "Orgrimmar";
	FEEDBACKUI_POITHUNDERB = "Les Pitons du tonnerre";
	FEEDBACKUI_POIAUBERDINE = "Auberdine";
	FEEDBACKUI_POIEVERLOOK = "Long-guet";
	FEEDBACKUI_POISTONETALON = "Pic des Serres-rocheuses";
	FEEDBACKUI_POIASTRANAAR = "Astranaar";
	FEEDBACKUI_POISPLINTERTREE = "Poste de Bois-bris�";
	FEEDBACKUI_POISUNROCK = "Retraite de Roche-soleil";
	FEEDBACKUI_POINIJELS = "Combe de Nijel";
	FEEDBACKUI_POISHADOWPREY = "Proie-de-l'ombre";
	FEEDBACKUI_POIFEATHERMOON = "Bastion de Pennelune";
	FEEDBACKUI_POIMOJACHE = "Camp Mojache";
	FEEDBACKUI_POITHALANAAR = "Thalanaar";
	FEEDBACKUI_POICENARIONHOLD = "Fort c�narien";
	FEEDBACKUI_POIGADGET = "Gadgetzan";
	FEEDBACKUI_POIFREEWIND = "Poste de Librevent";
	FEEDBACKUI_POITAURAJO = "Camp Taurajo";
	FEEDBACKUI_POICROSSROADS = "La Crois�e";
	FEEDBACKUI_POIRATCHET = "Cabestan";
	FEEDBACKUI_POITHERAMORE = "�le de Theramore";
	
	FEEDBACKUI_SURVEYTOOLTIPMOBHEADER = "Nom du monstre�:"
	FEEDBACKUI_SURVEYTOOLTIPMOBZONEHEADER = "Se trouve �:"
	
	FEEDBACKUI_VOICECHAT = "Discussion vocale";
	FEEDBACKUI_VOICECHATTOOLTIP = FEEDBACKUI_WHITE .. FEEDBACKUI_VOICECHAT;
	FEEDBACKUI_STRVOICECHAT = "C'est un probl�me de discussion vocale.";
	FEEDBACKUI_HEADSETTYPE = "Quelle sorte de casque multimedia utilisez vous ?";
	
	FEEDBACKUI_USBHEADSET = "Casque USB"; --localize me
	FEEDBACKUI_ANALOGHEADSET = "Casque analogique"; --localize me
	FEEDBACKUI_HARDWIREDMIC = "Microphone � fil"; --localize me
	
	FEEDBACKUI_STRUSBHEADSET = "J'utilise un casque USB.";
	FEEDBACKUI_STRANALOGHEADSET = "J'utilise un casque Analogique.";
	FEEDBACKUI_STRHARDWIREDMIC = "J�utilise un microphone � fil."; --localize me
	
elseif ( GetLocale() == "koKR" ) then
	--Localized Korean strings for FEEDBACKUI
	--[[
	function koKR() end
	]]--
	--Non-instance special zone names
	FEEDBACKUI_EXCEPTIONZONES = { "??? ???", "??? ??", "??? ??", "?? ??", "??", "??? ??", "??? ??", "???? ??", "???? ?", "??? ??", "????? ??", }
	
	--Headers    
	FEEDBACKUIINFOPANELLABEL_TEXT = "????? ??"
	FEEDBACKUI_BUGINPUTHEADER = "??? ?? ??? ??? ????."
	FEEDBACKUI_SUGGESTINPUTHEADER = "??? ??? ????."
	FEEDBACKUI_SURVEYINPUTHEADER = "??? ???? ??? ??? ?? ????."
	
	--Labels
	FEEDBACKUIFEEDBACKFRMTITLE_TEXT = "?? ???"
	FEEDBACKUILBLFRMVER_TEXT = "??:"
	FEEDBACKUILBLFRMREALM_TEXT = "??:"
	FEEDBACKUILBLFRMNAME_TEXT = "??? ??:"
	FEEDBACKUILBLFRMCHAR_TEXT = "??? ??:"
	FEEDBACKUILBLFRMMAP_TEXT = "??:"
	FEEDBACKUILBLFRMZONE_TEXT = "??:"
	FEEDBACKUILBLFRMAREA_TEXT = "??:"
	FEEDBACKUILBLFRMADDONS_TEXT = "???:"
	FEEDBACKUILBLADDONSWRAP_TEXT = "?? ?? ?? ???:\n"
	FEEDBACKUITYPEBUG_TEXT = "??"
	FEEDBACKUITYPESUGGEST_TEXT = "??"
	FEEDBACKUITYPESURVEY_TEXT = "??"
	FEEDBACKUILBLFRMWHO_TEXT = "??: "
	FEEDBACKUILBLFRMWHERE_TEXT = "??: "
	FEEDBACKUILBLFRMWHEN_TEXT = "??: "
	FEEDBACKUILBLFRMTYPE_TEXT = "??: "
	
	--Prompts
	FEEDBACKUIBUGFRMINPUTBOX_TEXT = "<??? ?????? ??? ?? ????.>"
	FEEDBACKUISUGGESTFRMINPUTBOX_TEXT = "<??? ?? ????.>"
	FEEDBACKUISURVEYFRMINPUTBOX_TEXT = "<??? ?? ????>"
	FEEDBACKUILBLADDONS_MOUSEOVER = "<?? ?? ??? ??>"
	FEEDBACKUI_CONFIRMATION = "??? ???????.\n?? ?? ?? ?? ?????? ? ? ??? ??? ??? ?????."
	
	--Tooltips & Buttons
	BUG_BUTTON="?? ???"
	NEWBIE_TOOLTIP_BUG="?? ?? ?? ?? ?????? ? ? ??? ???? ???? ?? ?? ??? ?? ????."
	FEEDBACKUIBACK_TEXT = "????"
	FEEDBACKUIRESET_TEXT = "????"
	FEEDBACKUISUBMIT_TEXT = "???"
	FEEDBACKUISTART_TEXT = "????"
	FEEDBACKUIRESUBMIT_TEXT = "?? ???"
	
	--Tables and strings for navigation.
	FEEDBACKUI_GENDERTABLE = { "???", "??", "??" }
	
	FEEDBACKUI_WELCOMETABLEBUGHEADER = "?? ???"
	FEEDBACKUI_WELCOMETABLEBUGSUBTEXT = "??? ????? ?? ??? ???? ? ?? ??? ???."
	FEEDBACKUI_WELCOMETABLESUGGESTHEADER = "?? ???"
	FEEDBACKUI_WELCOMETABLESUGGESTSUBTEXT = "??? ????? ?? ??? ???? ? ?? ??? ???."
	FEEDBACKUI_WELCOMETABLESUBTEXT = "???? ??? ?? ????!"
	
	FEEDBACKUI_WELCOME = "?? ?? ?????? ?? ??? ???? ?? ?? ????. ???? ??? ??? ?? ?? ?? ?? ?????? ???? ? ???? ??? ????.\n\n?? ??? ????? ???? ? ??? ? ? ??? ? ?? ??? ?? ?????.\n\n?????.\n???? ?????? ??"
	
	FEEDBACKUI_WHOTABLEHEADER = FEEDBACKUI_WHITE .. "??" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHOTABLESUBTEXT = "??? ??? ??????"
	
	FEEDBACKUI_STRWHOPLAYER = "? ??? ?????."
	FEEDBACKUI_STRPARTYMEMBER = "??? ?????."
	FEEDBACKUI_STRRAIDMEMBER = "???? ?????."
	FEEDBACKUI_STRENEMYPLAYER = "?? ?? ???? ?????."
	FEEDBACKUI_STRFRIENDLYPLAYER = "?? ?? ???? ?????."
	FEEDBACKUI_STRENEMYCREATURE = "? NPC ?????."
	FEEDBACKUI_STRFRIENDLYCREATURE = "?? NPC ?????."
	FEEDBACKUI_STRWHONA = "????? NPC? ?? ?? ?????."
	
	FEEDBACKUI_WHOPLAYER = "?? ???"
	FEEDBACKUI_ENEMYPLAYER = "?? ?? ????"
	FEEDBACKUI_FRIENDLYPLAYER = "?? ?? ????"
	FEEDBACKUI_PARTYMEMBER = "???"
	FEEDBACKUI_RAIDMEMBER = "????"
	FEEDBACKUI_ENEMYCREATURE = "? NPC"
	FEEDBACKUI_FRIENDLYCREATURE = "?? NPC"
	FEEDBACKUI_WHONA = "?? ??"
	
	FEEDBACKUI_WHERETABLEHEADER = FEEDBACKUI_WHITE .. "??" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHERETABLESUBTEXT = "???? ???? ??????"
	
	FEEDBACKUI_STRAREATABLE = "?? ?? ?????."
	FEEDBACKUI_STRWHEREINSTALL = "?? ?????."
	FEEDBACKUI_STRWHEREDOWNLOAD = "???? ?????."
	FEEDBACKUI_STRWHEREPATCH = "?? ?????."
	
	FEEDBACKUI_WHEREINSTALL = "?? ??"
	FEEDBACKUI_WHEREDOWNLOAD = "???? ??"
	FEEDBACKUI_WHEREPATCH = "?? ??"
	
	FEEDBACKUI_AREATABLESUMMARY = FEEDBACKUI_GREEN .. "?? ?"
	
	--Area Strings-------------------------------------------------------------------------------------------------------------------------
	FEEDBACKUI_STROCCURS = "- This occurs in "; --localize me
	FEEDBACKUI_EVERYWHERE = "?? ? ?? ?"
	FEEDBACKUI_STREVERYWHERE = "?? ? ???? ?????."
	
	--AZEROTH
	FEEDBACKUI_AZEROTH = "????"
	
	--Northrend
	FEEDBACKUI_NORTHREND = "????"
	FEEDBACKUI_BOREANTUNDRA = "??? ?"
	FEEDBACKUI_CRYSTALSONG = "???? ?" --LOCALIZE ME
	FEEDBACKUI_DALARAN = "???" --LOCALIZE ME
	FEEDBACKUI_DRAGONBLIGHT = "?? ???"
	FEEDBACKUI_GRIZZLYHILLS = "?? ???"
	FEEDBACKUI_HOWLINGFJORD = "???? ??"
	FEEDBACKUI_ICECROWN = "????" --LOCALIZE ME
	FEEDBACKUI_NEXUS = "??? ?"
	FEEDBACKUI_SHOLAZARBASIN = "???? ??" --LOCALIZE ME
	FEEDBACKUI_STORMPEAKS = "??? ???" --LOCALIZE ME
	FEEDBACKUI_UTGARDEPINNACLE = "????? ??"
	FEEDBACKUI_WINTERGRASP = "?????" --LOCALIZE ME
	FEEDBACKUI_ZULDRAK = "???" --LOCALIZE ME
	FEEDBACKUI_STRNORTHREND = "?????? ?????."
	--End Northrend-----------------------------------
	
	--Eastern Kingdoms
	FEEDBACKUI_EKINGDOMS = "?? ??"
	FEEDBACKUI_ALTERACMOUNTAINS = "??? ??"
	FEEDBACKUI_ALTERACVALLEY = "??? ??"
	FEEDBACKUI_ARATHIBASIN = "??? ??"
	FEEDBACKUI_ARATHIHIGHLANDS = "??? ??"
	FEEDBACKUI_BADLANDS = "??? ?"
	FEEDBACKUI_BLACKROCKMOUNTAIN = "???? ?"
	FEEDBACKUI_BLASTEDLANDS = "???? ?"
	FEEDBACKUI_BURNINGSTEPPES = "??? ??"
	FEEDBACKUI_DEADWINDPASS = "??? ??"
	FEEDBACKUI_DUNMOROGH = "? ??"
	FEEDBACKUI_DUSKWOOD = "???"
	FEEDBACKUI_EPLAGUELANDS = "?? ????"
	FEEDBACKUI_ELWYNN = "?? ?"
	FEEDBACKUI_EVERSONG = "???? ?"
	FEEDBACKUI_GHOSTLANDS = "??? ?"
	FEEDBACKUI_HILLSBRAD = "?????"
	FEEDBACKUI_HINTERLANDS = "?? ???"
	FEEDBACKUI_IRONFORGE = "?????"
	FEEDBACKUI_ISLEOFQUELDANAS = "????? ?" --LOCALIZE ME
	FEEDBACKUI_LOCHMODAN = "?? ??"
	FEEDBACKUI_REDRIDGE = "???? ??"
	FEEDBACKUI_SEARINGGORGE = "????? ??"
	FEEDBACKUI_SILVERMOON = "???"
	FEEDBACKUI_SILVERPINE = "????? ?"
	FEEDBACKUI_STORMWIND = "????"
	FEEDBACKUI_STRANGLETHORN = "???? ???"
	FEEDBACKUI_SWAMPOFSORROWS = "??? ?"
	FEEDBACKUI_TIRISFAL = "???? ?"
	FEEDBACKUI_UNDERCITY = "????"
	FEEDBACKUI_WPLAGUELANDS = "?? ????"
	FEEDBACKUI_WESTFALL = "?? ????"
	FEEDBACKUI_WETLANDS = "???"
	FEEDBACKUI_STREKINGDOMS = "?? ???? ?????."
	--End Eastern Kingdoms-------------------------------------------------------------------------------------------------------
	
	--Kalimdor
	FEEDBACKUI_KALIMDOR = "????"
	FEEDBACKUI_ASHENVALE = "?? ???"
	FEEDBACKUI_AZSHARA = "????"
	FEEDBACKUI_AZUREMYST = "???? ?"
	FEEDBACKUI_BARRENS = "??? ?"
	FEEDBACKUI_BLOODMYST = "???? ?"
	FEEDBACKUI_DARKSHORE = "??? ??"
	FEEDBACKUI_DARNASSUS = "?????"
	FEEDBACKUI_DESOLACE = "??? ?"
	FEEDBACKUI_DUROTAR = "???"
	FEEDBACKUI_DUSTWALLOW = "???? ???"
	FEEDBACKUI_EXODAR = "????"
	FEEDBACKUI_FELWOOD = "??? ?"
	FEEDBACKUI_FERALAS = "????"
	FEEDBACKUI_MOONGLADE = "?? ?"
	FEEDBACKUI_MULGORE = "???"
	FEEDBACKUI_ORGRIMMAR = "????"
	FEEDBACKUI_SILITHUS = "????"
	FEEDBACKUI_STONETALON = "??? ??"
	FEEDBACKUI_TANARIS = "????"
	FEEDBACKUI_TELDRASSIL = "????"
	FEEDBACKUI_THUNDERBLUFF = "?? ???"
	FEEDBACKUI_THOUSANDNEEDLES = "???? ???"
	FEEDBACKUI_UNGORO = "??? ???"
	FEEDBACKUI_WARSONG = "???? ??"
	FEEDBACKUI_WINTERSPRING = "??? ??"
	FEEDBACKUI_STRKALIMDOR = "?????? ?????."
	--End Kalimdor ----------------------------------------------------------------------------------------------------------------------
	
	--OUTLAND
	FEEDBACKUI_OUTLANDS = "????"
	FEEDBACKUI_BLADESEDGE = "?? ??"
	FEEDBACKUI_HELLFIRE = "??? ??"
	FEEDBACKUI_NAGRAND = "????"
	FEEDBACKUI_NETHERSTORM = "??? ??"
	FEEDBACKUI_SHADOWMOON = "??? ???"
	FEEDBACKUI_SHATTRATH = "????"
	FEEDBACKUI_TERROKAR = "???? ?"
	FEEDBACKUI_TWISTINGNETHER = "??? ??"
	FEEDBACKUI_ZANGARMARSH = "??? ???"
	FEEDBACKUI_STROUTLANDS = "?????? ?????."
	--End Outlands--------------------------------------------
	
	--Alert Targets/Extra areas
	FEEDBACKUI_BLACKTEMPLE = "?? ??"
	FEEDBACKUI_ZULAMAN = "???"
	FEEDBACKUI_KAJA = "Kaja'mine"
	FEEDBACKUI_SUNWELLPLATEAU = "??? ??"
	FEEDBACKUI_MAGISTERSTERRACE = "????? ??"
	FEEDBACKUI_UTGARDEKEEP = "????? ??"
	FEEDBACKUI_DRAKTHARONKEEP = "???? ??"
	FEEDBACKUI_ULDUAR = "????"
	FEEDBACKUI_HOL = "??? ??"
	FEEDBACKUI_TAC = "?? ?????"
	FEEDBACKUI_IOC = "??? ?"
	--End Alert Targets/Extra areas
	--End Area Strings-------------------------------------------------------------------------------------------------------------------------------------
	
	FEEDBACKUI_WHENTABLEHEADER = FEEDBACKUI_WHITE .. "??" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHENTABLESUBTEXT = "??? ?? ???? ??????"
	
	FEEDBACKUI_STRREPRODUCABLE = "?? ?????."
	FEEDBACKUI_STRSOMETIMES = "?? ?????."
	FEEDBACKUI_STRRARELY = "?? ?????."
	FEEDBACKUI_STRONETIME = "? ? ? ??????."
	
	
	FEEDBACKUI_REPRODUCABLE = "??"
	FEEDBACKUI_SOMETIMES = "??"
	FEEDBACKUI_RARELY = "??"
	FEEDBACKUI_ONETIME = "? ?"
	
	FEEDBACKUI_TYPETABLEHEADER = FEEDBACKUI_WHITE .. "??" .. FEEDBACKUI_WHITE
	FEEDBACKUI_TYPETABLESUBTEXT = "?? ??? ??????"
	
	FEEDBACKUI_STRUIOTHER = "??? ????? ?????."
	FEEDBACKUI_STRUIITEMS = "- ??? UI ?????."
	FEEDBACKUI_STRUISPAWNS = "- NPC UI ?????."
	FEEDBACKUI_STRUIQUESTS = "- ??? UI ?????."
	FEEDBACKUI_STRUISPELLS = "- ?? ?? ?? UI ?????."
	FEEDBACKUI_STRUITRADESKILLS = "- ?? ?? UI ?????."
	
	FEEDBACKUI_STRGRAPHICOTHER = "??? ?????."
	FEEDBACKUI_STRGRAPHICITEMS = "- ??? ??? ?????."
	FEEDBACKUI_STRGRAPHICSPAWNS = "- NPC ??? ?????."
	FEEDBACKUI_STRGRAPHICSPELLS = "- ?? ?? ?? ??? ?????."
	FEEDBACKUI_STRGRAPHICENVIRONMENT = "- ?? ??? ?????."
	
	FEEDBACKUI_STRFUNCOTHER = "?? ?????."
	FEEDBACKUI_STRFUNCITEMS = "- ??? ?? ?????."
	FEEDBACKUI_STRFUNCSPAWNS = "- NPC ?? ?????."
	FEEDBACKUI_STRFUNCQUESTS = "- ??? ?? ?????."
	FEEDBACKUI_STRFUNCSPELLS = "- ?? ?? ?? ?? ?????."
	FEEDBACKUI_STRFUNCTRADESKILLS = "- ?? ?? ?? ?????."
	
	FEEDBACKUI_STRCRASHOTHER = "??? ?????."
	FEEDBACKUI_STRCRASHBUG = "- ??? ??? ?????."
	FEEDBACKUI_STRCRASHSOFTLOCK = "- ??? ?????."
	FEEDBACKUI_STRCRASHHARDLOCK = "- ???? ?????."
	FEEDBACKUI_STRCRASHWOWLAG = "- ? ?? ?????."
	
	FEEDBACKUI_UIITEMS = "??? UI ??"
	FEEDBACKUI_UISPAWNS = "NPC UI ??"
	FEEDBACKUI_UIQUESTS = "??? UI ??"
	FEEDBACKUI_UISPELLS = "?? ?? ?? UI ??"
	FEEDBACKUI_UITRADESKILLS = "?? ?? UI ??"
	FEEDBACKUI_UIOTHER = "?? UI ??"
	
	FEEDBACKUI_GRAPHICITEMS = "??? ??? ??"
	FEEDBACKUI_GRAPHICSPAWNS = "NPC ??? ??"
	FEEDBACKUI_GRAPHICSPELLS = "?? ?? ?? ??? ??"
	FEEDBACKUI_GRAPHICENVIRONMENT = "?? ??? ??"
	FEEDBACKUI_GRAPHICOTHER = "?? ??? ??"
	
	FEEDBACKUI_FUNCITEMS = "??? ?? ??"
	FEEDBACKUI_FUNCSPAWNS = "NPC ?? ??"
	FEEDBACKUI_FUNCQUESTS = "??? ?? ??"
	FEEDBACKUI_FUNCSPELLS = "?? ?? ?? ?? ??" 
	FEEDBACKUI_FUNCTRADESKILLS = "?? ?? ?? ??"
	FEEDBACKUI_FUNCOTHER = "?? ?? ??"
	
	FEEDBACKUI_SPELLSPOWERTABLEHEADER = "???"
	FEEDBACKUI_SPELLSPOWERTABLESUBTEXT = "? ??? ??? ??????"
	FEEDBACKUI_SPELLSFREQUENCYTABLEHEADER = "?? ??"
	FEEDBACKUI_SPELLSFREQUENCYTABLESUBTEXT = "? ??? ??? ?? ???????"
	FEEDBACKUI_SPELLSAPPROPRIATETABLEHEADER = "???"
	FEEDBACKUI_SPELLSAPPROPRIATETABLESUBTEXT = "? ??? ??? ??? ?? ??? ??? ? ??????"
	FEEDBACKUI_SPELLSFUNTABLEHEADER = "??"
	FEEDBACKUI_SPELLSFUNTABLESUBTEXT = "? ??? ??? ??????"
	
	FEEDBACKUI_STRPOWER1 = "?? ??";
	FEEDBACKUI_STRPOWER2 = "??";
	FEEDBACKUI_STRPOWER3 = "???";
	FEEDBACKUI_STRPOWER4 = "?? ???";
	
	FEEDBACKUI_STRFREQUENCY1 = "?? ?? ? ?";
	FEEDBACKUI_STRFREQUENCY2 = "?? ";
	FEEDBACKUI_STRFREQUENCY3 = "??";
	FEEDBACKUI_STRFREQUENCY4 = "??";
	
	FEEDBACKUI_STRAPPROPRIATE1 = "?? ???? ??";
	FEEDBACKUI_STRAPPROPRIATE2 = "?? ???? ??";
	FEEDBACKUI_STRAPPROPRIATE3 = "???";
	FEEDBACKUI_STRAPPROPRIATE4 = "?? ???";
	
	FEEDBACKUI_SPELLHEADERTEXT = "??" 
	FEEDBACKUILBLPOWER_TEXT = "???:"
	FEEDBACKUILBLFREQUENCY_TEXT = "?? ??:"
	FEEDBACKUILBLAPPROPRIATE_TEXT = "???:"
	
	FEEDBACKUI_CRASHBUG = "??? ?? ??"
	FEEDBACKUI_CRASHSOFTLOCK = "?? ?? ??"
	FEEDBACKUI_CRASHHARDLOCK = "??? ?? ??"
	FEEDBACKUI_CRASHWOWLAG = "? ??"
	FEEDBACKUI_CRASHOTHER = "?? ??? ??"
	
	
	FEEDBACKUILBLFRMCLARITY_TEXT = "???:"
	FEEDBACKUILBLFRMDIFFICULTY_TEXT = "???:"
	FEEDBACKUILBLFRMREWARD_TEXT = "??:"
	FEEDBACKUILBLFRMFUN_TEXT = "??:"
	FEEDBACKUISURVEYTYPE_QUEST = "???"
	FEEDBACKUISURVEYTYPE_AREA = "???? ??"
	
	FEEDBACKUISKIP_TEXT = "?? ????"
	FEEDBACKUILBLSURVEYALERTSCHECK_TEXT = "?? ??"
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "??? ??????."
	FEEDBACKUI_WELCOMETABLESURVEYSUBTEXT = "??? ???? ???? ?? ??? ?????."
	
	FEEDBACKUI_SURVEYCOLUMNNAME = "??"
	FEEDBACKUI_SURVEYCOLUMNMODIFIED = "??? ??"
	
	FEEDBACKUI_ALLHEADERTEXT = "??"
	FEEDBACKUI_AREAHEADERTEXT = "????"
	FEEDBACKUI_QUESTHEADERTEXT = "???"
	
	FEEDBACKUI_STATUSALLTEXT = "??"
	FEEDBACKUI_STATUSAVAILABLETEXT = "??? ??"
	FEEDBACKUI_STATUSSKIPPEDTEXT = "??? ??"
	FEEDBACKUI_STATUSCOMPLETEDTEXT = "??? ??"
	
	FEEDBACKUI_SURVEYTOOLTIPQUESTHEADER = "??? ??:"
	FEEDBACKUI_SURVEYTOOLTIPAREAHEADER = "???? ?? ??:"
	FEEDBACKUI_SURVEYTOOLTIPEXPERIENCEDHEADER = "??? ??:"
	FEEDBACKUI_SURVEYTOOLTIPQUESTOBJECTIVESHEADER = "??? ??:"
	
	FEEDBACKUI_NEW = "??? ???"
	FEEDBACKUI_HOURAGO = " ?? ?"
	FEEDBACKUI_HOURSAGO = " ?? ?"
	FEEDBACKUI_DAYAGO = " ? ?"
	FEEDBACKUI_DAYSAGO = " ? ?"
	FEEDBACKUI_MONTHAGO = " ?? ?"
	FEEDBACKUI_MONTHSAGO = " ?? ?"
	FEEDBACKUI_YEARAGO = " ? ?"
	FEEDBACKUI_YEARSAGO = " ? ?"
	
	FEEDBACKUI_QUESTSCLARITYTABLEHEADER = "??? ???"
	FEEDBACKUI_QUESTSCLARITYTABLESUBTEXT = "???? ?? ??? ??? ??????"
	
	FEEDBACKUI_STRCLARITY1 = "?? ???"
	FEEDBACKUI_STRCLARITY2 = "?? ???"
	FEEDBACKUI_STRCLARITY3 = "? ???"
	FEEDBACKUI_STRCLARITY4 = "?? ???"
	
	FEEDBACKUI_CLARITY1 = "?? ???"
	FEEDBACKUI_CLARITY2 = "?? ???"
	FEEDBACKUI_CLARITY3 = "? ???"
	FEEDBACKUI_CLARITY4 = "?? ???"
	
	FEEDBACKUI_QUESTSDIFFICULTYTABLEHEADER = "???"
	FEEDBACKUI_QUESTSDIFFICULTYTABLESUBTEXT = "???? ???? ?? ????????"
	FEEDBACKUI_AREASDIFFICULTYTABLEHEADER = "???"
	FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT = "???? ??? ???? ?? ????????"
	
	FEEDBACKUI_STRDIFFICULTY1 = "??"
	FEEDBACKUI_STRDIFFICULTY2 = "???"
	FEEDBACKUI_STRDIFFICULTY3 = "????"
	FEEDBACKUI_STRDIFFICULTY4 = "???"
	FEEDBACKUI_STRDIFFICULTY5 = "N/A"
	
	FEEDBACKUI_DIFFICULTY1 = "??"
	FEEDBACKUI_DIFFICULTY2 = "???"
	FEEDBACKUI_DIFFICULTY3 = "????"
	FEEDBACKUI_DIFFICULTY4 = "???"
	FEEDBACKUI_DIFFICULTY5 = "N/A"
	
	FEEDBACKUI_QUESTSREWARDTABLEHEADER = "??"
	FEEDBACKUI_QUESTSREWARDTABLESUBTEXT = "???? ??? ?? ??????"
	FEEDBACKUI_AREASREWARDTABLEHEADER = "??"
	FEEDBACKUI_AREASREWARDTABLESUBTEXT = "???? ??? ??? ?? ??????"
	
	FEEDBACKUI_STRREWARD1 = "?? ??"
	FEEDBACKUI_STRREWARD2 = "??"
	FEEDBACKUI_STRREWARD3 = "??"
	FEEDBACKUI_STRREWARD4 = "?? ??"
	FEEDBACKUI_STRREWARD5 = "N/A"
	
	FEEDBACKUI_REWARD1 = "?? ??"
	FEEDBACKUI_REWARD2 = "??"
	FEEDBACKUI_REWARD3 = "??"
	FEEDBACKUI_REWARD4 = "?? ??"
	FEEDBACKUI_REWARD5 = "N/A"
	
	FEEDBACKUI_QUESTSFUNTABLEHEADER = "??"
	FEEDBACKUI_QUESTSFUNTABLESUBTEXT = "???? ??? ???? ???????"
	FEEDBACKUI_AREASFUNTABLEHEADER = "??"
	FEEDBACKUI_AREASFUNTABLESUBTEXT = "???? ??? ??? ???? ???????"
	
	FEEDBACKUI_STRFUN1 = "?? ?? ??"
	FEEDBACKUI_STRFUN2 = "??? ?? ??"
	FEEDBACKUI_STRFUN3 = "? ?? ??"
	FEEDBACKUI_STRFUN4 = "??? ?? ??"
	
	FEEDBACKUI_FUN1 = "?? ?? ??"
	FEEDBACKUI_FUN2 = "??? ?? ??"
	FEEDBACKUI_FUN3 = "? ?? ??"
	FEEDBACKUI_FUN4 = "??? ?? ??"
	
	FEEDBACKUISURVEYFRMINPUTBOX_TEXT = "<??? ?? ????>"
	FEEDBACKUI_SURVEYINPUTHEADER = "??? ???? ??? ??? ?? ????."
	FEEDBACKUI_WELCOMETABLEBUGHEADER = "?? ???"
	FEEDBACKUI_WELCOMETABLEBUGSUBTEXT = "??? ????? ?? ??? ???? ? ?? ??? ???."
	FEEDBACKUI_WELCOMETABLESUGGESTHEADER = "?? ???"
	FEEDBACKUI_WELCOMETABLESUGGESTSUBTEXT = "??? ????? ?? ??? ???? ? ?? ??? ???."
	FEEDBACKUI_BUGINPUTHEADER = "??? ?? ??? ??? ????."
	FEEDBACKUI_SUGGESTINPUTHEADER="??? ??? ????."
	
	FEEDBACKUI_SURVEYNEWBIETEXT = "?? ?? ????? ???? ?? ??? ???? ??? ?????"
	FEEDBACKUI_POIMASK = ".-%s%-%s(.+)"
	
	FEEDBACKUI_LEVELPREFIX = "??";
	FEEDBACKUI_HILLSBRAD = "?? ?? - ????? ???";
	FEEDBACKUISURVEYTYPE_AREA = "??"
	FEEDBACKUISURVEYTYPE_ITEM = "???"
	FEEDBACKUISURVEYTYPE_MOB = "???"
	FEEDBACKUI_AREAHEADERTEXT = "??"
	FEEDBACKUI_QUESTHEADERTEXT = "???"
	FEEDBACKUI_ITEMHEADERTEXT = "???"
	FEEDBACKUI_MOBHEADERTEXT = "???"
	FEEDBACKUI_SURVEYTOOLTIPAREAHEADER = "?? ??"
	FEEDBACKUI_AREASDIFFICULTYTABLEHEADER = "???"
	FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT = "? ??? ???? ?? ????????"
	FEEDBACKUI_AREASREWARDTABLEHEADER = "??"
	FEEDBACKUI_AREASREWARDTABLESUBTEXT = "? ??? ??? ?? ??????"
	FEEDBACKUI_AREASFUNTABLEHEADER = "??"
	FEEDBACKUI_AREASFUNTABLESUBTEXT = "? ??? ??? ???? ???????"
	FEEDBACKUI_SURVEYINPUTSUBTEXT = "?? ??? ???? ??? ??????."
	FEEDBACKUI_SURVEYNEWBIETEXT = "? ??? ?? ??? ?????? ??????."
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "??? ??????"
	
	FEEDBACKUI_SPECIFICWELCOME = "?? ?? ?? ?? ?????? ?? ??? ??? ?? ??? ??????. ?? ??? ?? ??? ?? ????:\n\n\n\n\n?? ????? ?? ?? ? ??? ??? ????:";
	FEEDBACKUI_GENERALWELCOME = "?? ?? ?????? ?? ??? ??? ?? ??? ??????. ???? ??? ?? ?? ?? ?? ?????? ?? ???? ??? ????.\n\n?? ????? ?? ?? ? ??? ??? ????:";
	
	FEEDBACKUI_STARTBUG = "?? ??"
	FEEDBACKUI_STARTSURVEY = "?? ??"
	FEEDBACKUI_STARTSUGGESTION = "?? ???"
	
	FEEDBACKUI_WELCOMEBUGHEADER = "??"
	FEEDBACKUI_WELCOMESUGGESTHEADER = "??"
	FEEDBACKUI_WELCOMESURVEYHEADER = "??"
	
	FEEDBACKUI_WELCOMEBUGTEXT = "?? ??? ??? ???? ??? ??? ????." 
	FEEDBACKUI_WELCOMESUGGESTTEXT = "?? ???? ??? ??? ??? ???? ??? ??????."
	FEEDBACKUI_WELCOMESURVEYTEXT = "??? ??? ??? ?? ??? ?? ??? ??? ??????."
	FEEDBACKUI_WELCOMESURVEYDISABLED = "??? ?? ???? ??? ??? ????."
	
	FEEDBACKUI_MODIFIERKEY = "??? ??:"
	FEEDBACKUI_MOUSE1 = "??? ??"
	FEEDBACKUI_MOUSE2 = "??? ???"
	
	FEEDBACKUI_LALT = "Alt ??"
	FEEDBACKUI_RALT = "Alt ???"
	FEEDBACKUI_LCTRL = "Ctrl ??"
	FEEDBACKUI_RCTRL = "Ctrl ???"
	FEEDBACKUI_LSHIFT = "Shift ??"
	FEEDBACKUI_RSHIFT = "Shift ???"
	
	FEEDBACKUI_TOOLTIP_MESSAGE = "<???? ???? %s + %s ??>";
	FEEDBACKUI_MAP_MESSAGE = "???? ???? %s + %s ??";
	FEEDBACKUI_ITEMTARGETS = { "???", "?? ??", "??", "???", "???", "??", "???", "???", "???", "??" };
	FEEDBACKUI_MISCTYPE = "??";
	FEEDBACKUISHOWCUES_TEXT = "??? ?? ??";
	
	FEEDBACKUI_CATEGORYLABEL = "??:"
	FEEDBACKUI_STATUSLABEL = "??:"
	
	NEWBIE_TOOLTIP_BUG="?? ?? ?? ?? ?????? ? ? ??? ???? ???? ?? ?? ??? ?? ???? ??? ??? ????.\n\n" .. FEEDBACKUI_BLUE .. "????? ?? ??\n??? ??? ??? ??";
	FEEDBACKUILBLAPPEARANCE_TEXT = "??:"
	FEEDBACKUILBLUTILITY_TEXT = "???:"
	
	FEEDBACKUI_MOBSDIFFICULTYTABLEHEADER = "???"                   
	FEEDBACKUI_MOBSDIFFICULTYTABLESUBTEXT = "? ???? ????? ??? ??????"
	FEEDBACKUI_MOBSREWARDTABLEHEADER = "??"
	FEEDBACKUI_MOBSREWARDTABLESUBTEXT = "? ???? ??? ?? ??????"
	FEEDBACKUI_MOBSFUNTABLEHEADER = "??"
	FEEDBACKUI_MOBSFUNTABLESUBTEXT = "? ????? ??? ??? ???? ???????"
	FEEDBACKUI_MOBSAPPEARANCETABLEHEADER = "??"
	FEEDBACKUI_MOBSAPPEARANCETABLESUBTEXT = "? ???? ??? ?? ??????"
	
	FEEDBACKUI_ITEMSDIFFICULTYTABLEHEADER = "???"
	FEEDBACKUI_ITEMSDIFFICULTYTABLESUBTEXT = "? ???? ??? ??? ??????"
	FEEDBACKUI_ITEMSUTILITYHEADER = "???"
	FEEDBACKUI_ITEMSUTILITYSUBTEXT = "? ???? ??? ??????"
	FEEDBACKUI_ITEMSAPPEARANCETABLEHEADER = "??"
	FEEDBACKUI_ITEMSAPPEARANCETABLESUBTEXT = "? ???? ??? ?? ??????"
	
	FEEDBACKUI_STRUTILITY1 = "??? ????"
	FEEDBACKUI_STRUTILITY2 = "?? ????"
	FEEDBACKUI_STRUTILITY3 = "???"
	FEEDBACKUI_STRUTILITY4 = "?? ???"
	
	FEEDBACKUI_UTILITY1 = "??? ????"
	FEEDBACKUI_UTILITY2 = "?? ????"
	FEEDBACKUI_UTILITY3 = "???"
	FEEDBACKUI_UTILITY4 = "?? ???"
	
	FEEDBACKUI_STRAPPEARANCE1 = "?? ??"
	FEEDBACKUI_STRAPPEARANCE2 = "???"
	FEEDBACKUI_STRAPPEARANCE3 = "???"
	FEEDBACKUI_STRAPPEARANCE4 = "?? ??"
	
	FEEDBACKUI_APPEARANCE1 = "?? ??"
	FEEDBACKUI_APPEARANCE2 = "???"
	FEEDBACKUI_APPEARANCE3 = "???"
	FEEDBACKUI_APPEARANCE4 = "?? ??"
	
	FEEDBACKUI_POIUNDERCITY = "????";
	FEEDBACKUI_POISILVERMOON = "???";
	FEEDBACKUI_POIIRONFORGE = "?????";
	FEEDBACKUI_POISTORMWIND = "????";
	FEEDBACKUI_POISEPULCHER = "????";
	FEEDBACKUI_POITARRENMILL = "?? ???";
	FEEDBACKUI_POISOUTHSHORE = "?????";
	FEEDBACKUI_POIAERIEPEAK = "??? ???";
	FEEDBACKUI_POIREVANTUSK = "????? ??";
	FEEDBACKUI_POIHAMMERFALL = "???";
	FEEDBACKUI_POIMENETHIL = "??? ??";
	FEEDBACKUI_POITHELSAMAR = "???";
	FEEDBACKUI_POIKARGATH = "????";
	FEEDBACKUI_POILAKESHIRE = "??????";
	FEEDBACKUI_POISENTINELHILL = "??? ??";
	FEEDBACKUI_POIDARKSHIRE = "?????";
	FEEDBACKUI_POISTONARD = "????";
	FEEDBACKUI_POIGROMGOL = "??? ???";
	FEEDBACKUI_POIBOOTY = "???"
	
	FEEDBACKUI_POIDARNASSUS = "?????";
	FEEDBACKUI_POIEXODAR = "????";
	FEEDBACKUI_POIORGRIMMAR = "????";
	FEEDBACKUI_POITHUNDERB = "?? ???";
	FEEDBACKUI_POIAUBERDINE = "?????";
	FEEDBACKUI_POIEVERLOOK = "??? ??";
	FEEDBACKUI_POISTONETALON = "??? ???";
	FEEDBACKUI_POIASTRANAAR = "??????";
	FEEDBACKUI_POISPLINTERTREE = "???? ???";
	FEEDBACKUI_POISUNROCK = "??? ???";
	FEEDBACKUI_POINIJELS = "???? ???";
	FEEDBACKUI_POISHADOWPREY = "???? ??";
	FEEDBACKUI_POIFEATHERMOON = "??? ??";
	FEEDBACKUI_POIMOJACHE = "??? ???";
	FEEDBACKUI_POITHALANAAR = "????";
	FEEDBACKUI_POICENARIONHOLD = "???? ??";
	FEEDBACKUI_POIGADGET = "???";
	FEEDBACKUI_POIFREEWIND = "???? ???";
	FEEDBACKUI_POITAURAJO = "???? ???";
	FEEDBACKUI_POICROSSROADS = "?????";
	FEEDBACKUI_POIRATCHET = "???";
	FEEDBACKUI_POITHERAMORE = "???? ?";
	
	FEEDBACKUI_SURVEYTOOLTIPMOBHEADER = "??? ??:"
	FEEDBACKUI_SURVEYTOOLTIPMOBZONEHEADER = "?? ??:"
	
	FEEDBACKUI_VOICECHAT = "?? ??";
	FEEDBACKUI_VOICECHATTOOLTIP = FEEDBACKUI_WHITE .. FEEDBACKUI_VOICECHAT;
	FEEDBACKUI_STRVOICECHAT = "?? ??? ?? ?????.";
	FEEDBACKUI_HEADSETTYPE = "?? ??? ???? ???????";
	
	FEEDBACKUI_USBHEADSET = "USB ???"; --localize me
	FEEDBACKUI_ANALOGHEADSET = "???? ???"; --localize me
	FEEDBACKUI_HARDWIREDMIC = "?? ???"; --localize me
	
	FEEDBACKUI_STRUSBHEADSET = "USB ???? ?????.";
	FEEDBACKUI_STRANALOGHEADSET = "???? ???? ?????.";
	FEEDBACKUI_STRHARDWIREDMIC = "?? ???? ???? ????."; --localize me
	
	
elseif ( GetLocale() == "deDE" ) then
	--Localized German strings for FEEDBACKUI
	--[[
	function deDE() end
	]]--
	--Non-instance special zone names
	FEEDBACKUI_EXCEPTIONZONES = { "Die Tiefenbahn", "Halle der Champions", "Das verh�llte Meer", "Das verbotene Meer", "Das Gro�e Meer", "Alteractal", "Arathibecken", "Kriegshymnenschlucht", "Der Schwarzfels", "Halle der Legenden", "Burg Utgarde", }
	
	--Headers    
	FEEDBACKUIINFOPANELLABEL_TEXT = "Ihre Angaben"
	FEEDBACKUI_BUGINPUTHEADER = "Bitte beschreiben Sie diesen Fehler"
	FEEDBACKUI_BUGINPUTSUBTEXT = "Wie k�nnen wir diesen Bug reproduzieren?"
	FEEDBACKUI_SUGGESTINPUTHEADER = "Bitte beschreiben Sie Ihren Vorschlag"
	FEEDBACKUI_SUGGESTINPUTSUBTEXT = "Was w�rden Sie gerne vorschlagen?"
	
	--Labels
	FEEDBACKUIFEEDBACKFRMTITLE_TEXT = "Kommentare senden"
	FEEDBACKUILBLFRMVER_TEXT = "Version: "
	FEEDBACKUILBLFRMREALM_TEXT = "Realm: "
	FEEDBACKUILBLFRMNAME_TEXT = "Name: "
	FEEDBACKUILBLFRMCHAR_TEXT = "Charakter: "
	FEEDBACKUILBLFRMMAP_TEXT = "Karte:"
	FEEDBACKUILBLFRMZONE_TEXT = "Zone: "
	FEEDBACKUILBLFRMAREA_TEXT = "Gebiet: "
	FEEDBACKUILBLFRMADDONS_TEXT = "Add-Ons: "
	FEEDBACKUILBLADDONSWRAP_TEXT = "Momentan aktive Add-Ons:\n"
	FEEDBACKUITYPEBUG_TEXT = "Fehler"
	FEEDBACKUITYPESUGGEST_TEXT = "Vorschlag"
	FEEDBACKUITYPESURVEY_TEXT = "Bewertung"
	FEEDBACKUILBLFRMWHO_TEXT = "Wen: "
	FEEDBACKUILBLFRMWHERE_TEXT = "Wo: "
	FEEDBACKUILBLFRMWHEN_TEXT = "Wann: "
	FEEDBACKUILBLFRMTYPE_TEXT = "Art: "
	FEEDBACKUI_GENDERTABLE = { "unbekannt", "m�nnlich", "weiblich" }
	
	--Prompts
	FEEDBACKUIBUGFRMINPUTBOX_TEXT = "<Geben Sie hier Schritte ein, um den Fehler nachzustellen>"
	FEEDBACKUISUGGESTFRMINPUTBOX_TEXT = "<Geben Sie hier Ihren Vorschlag ein>"
	FEEDBACKUILBLADDONS_MOUSEOVER = "<F�r aktive Add-Ons Mauszeiger hierher bewegen>"
	FEEDBACKUI_CONFIRMATION = "Ihre Kommentare wurden abgeschickt.\nVielen Dank f�r Ihre Hilfe bei der Verbesserung von ArcEmu!"
	
	--Tooltips & Buttons
	BUG_BUTTON="Kommentare senden"
	NEWBIE_TOOLTIP_BUG="Melden Sie uns Fehler oder schicken Sie Vorschl�ge, um ArcEmu zu verbessern."
	FEEDBACKUIBACK_TEXT = "Schritt zur�ck"
	FEEDBACKUIRESET_TEXT = "Zur�cksetzen"
	FEEDBACKUISUBMIT_TEXT = "Senden"
	FEEDBACKUISTART_TEXT = "Start!"
	
	--Tables and strings for navigation.
	FEEDBACKUI_WELCOMETABLEBUGHEADER = "Einen Bug melden"
	FEEDBACKUI_WELCOMETABLESUGGESTHEADER = "Einen Vorschlag machen"
	FEEDBACKUI_WELCOMETABLESUBTEXT = "Vielen Dank f�r Ihre Kommentare!"
	
	FEEDBACKUI_WELCOME = "\nVielen Dank f�r Ihre Kommentare zu ArcEmu. Jede Einsendung, die wir erhalten, spielt eine wichtige Rolle f�r die Qualit�t des Spiels.\n\nBitte f�llen Sie diesen kurzen Fragebogen aus, damit wir Ihre Einsendung so schnell wie m�glich bearbeiten k�nnen.\n\nVielen Dank,\nThe ArcEmu Team"
	
	FEEDBACKUI_WHOTABLEHEADER = FEEDBACKUI_WHITE .. "Wen" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHOTABLESUBTEXT = "Worauf wirkt sich das Problem aus?"
	
	FEEDBACKUI_STRWHOPLAYER = "Betrifft meinen Charakter."
	FEEDBACKUI_STRPARTYMEMBER = "Betrifft Spieler meiner Gruppe."
	FEEDBACKUI_STRRAIDMEMBER = "Betrifft Spieler meines Schlachtzugs."
	FEEDBACKUI_STRENEMYPLAYER = "Betrifft einen gegnerischen Spieler."
	FEEDBACKUI_STRFRIENDLYPLAYER = "Betrifft einen befreundeten Spieler."
	FEEDBACKUI_STRENEMYCREATURE = "Betrifft eine feindliche Kreatur."
	FEEDBACKUI_STRFRIENDLYCREATURE = "Betrifft eine freundliche Kreatur."
	FEEDBACKUI_STRWHONA = "Betrifft keine Spieler oder Kreaturen."
	
	FEEDBACKUI_WHOPLAYER = "Mein Charakter"
	FEEDBACKUI_ENEMYPLAYER = "Gegnerischer Spieler"
	FEEDBACKUI_FRIENDLYPLAYER = "Befreundeter Spieler"
	FEEDBACKUI_PARTYMEMBER = "Gruppenmitglied"
	FEEDBACKUI_RAIDMEMBER = "Schlachtzugsmitglied"
	FEEDBACKUI_ENEMYCREATURE = "Feindliche Kreatur"
	FEEDBACKUI_FRIENDLYCREATURE = "Freundliche Kreatur"
	FEEDBACKUI_WHONA = "Nicht zutreffend"
	
	FEEDBACKUI_WHERETABLEHEADER = FEEDBACKUI_WHITE .. "Wo" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHERETABLESUBTEXT = "Wo tritt das Problem auf?"
	
	FEEDBACKUI_STRAREATABLE = "Tritt im Spiel auf."
	FEEDBACKUI_STRWHEREINSTALL = "Tritt w�hrend der Installation auf."
	FEEDBACKUI_STRWHEREDOWNLOAD = "Tritt w�hrend des Downloads auf."
	FEEDBACKUI_STRWHEREPATCH = "Tritt w�hrend des Patchvorgangs auf."
	
	FEEDBACKUI_WHEREINSTALL = "W�hrend der Installation"
	FEEDBACKUI_WHEREDOWNLOAD = "W�hrend des Downloads"
	FEEDBACKUI_WHEREPATCH = "W�hrend des Patchvorgangs"
	
	FEEDBACKUI_AREATABLESUMMARY = FEEDBACKUI_GREEN .. "An bestimmten Stellen im Spiel"
	
	---------------------------------------- Begin Area Strings ------------------------------------------------------------------
	FEEDBACKUI_STROCCURS = "- This occurs in "; --localize me
	FEEDBACKUI_EVERYWHERE = "�berall im Spiel"
	FEEDBACKUI_STREVERYWHERE = "Tritt �berall im Spiel auf."
	
	--AZEROTH
	FEEDBACKUI_AZEROTH = "Azeroth"
	
	--Northrend
	FEEDBACKUI_NORTHREND = "Nordend"
	FEEDBACKUI_BOREANTUNDRA = "Boreanische Tundra"
	FEEDBACKUI_CRYSTALSONG = "Kristallsangwald" --LOCALIZE ME
	FEEDBACKUI_DALARAN = "Dalaran" 
	FEEDBACKUI_DRAGONBLIGHT = "Drachen�de"
	FEEDBACKUI_GRIZZLYHILLS = "Grizzlyh�gel"
	FEEDBACKUI_HOWLINGFJORD = "Heulender Fjord"
	FEEDBACKUI_ICECROWN = "Eiskrone" --LOCALIZE ME
	FEEDBACKUI_NEXUS = "Nexus"
	FEEDBACKUI_SHOLAZARBASIN = "Sholazarbecken" --LOCALIZE ME
	FEEDBACKUI_STORMPEAKS = "Die Sturmgipfel" --LOCALIZE ME
	FEEDBACKUI_UTGARDEPINNACLE = "Turm Utgarde"
	FEEDBACKUI_WINTERGRASP = "Tausendwinter" --LOCALIZE ME
	FEEDBACKUI_ZULDRAK = "Zul'Drak" 
	FEEDBACKUI_STRNORTHREND = "Tritt in Nordend auf."
	--End Northrend-----------------------------------
	
	--Eastern Kingdoms
	FEEDBACKUI_EKINGDOMS = "�stliche K�nigreiche"
	FEEDBACKUI_ALTERACMOUNTAINS = "Alteracgebirge"
	FEEDBACKUI_ALTERACVALLEY = "Alteractal"
	FEEDBACKUI_ARATHIBASIN = "Arathibecken"
	FEEDBACKUI_ARATHIHIGHLANDS = "Arathihochland"
	FEEDBACKUI_BADLANDS = "�dland"
	FEEDBACKUI_BLACKROCKMOUNTAIN = "Schwarzfels"
	FEEDBACKUI_BLASTEDLANDS = "Verw�stete Lande"
	FEEDBACKUI_BURNINGSTEPPES = "Brennende Steppe"
	FEEDBACKUI_DEADWINDPASS = "Gebirgspass der Totenwinde"
	FEEDBACKUI_DUNMOROGH = "Dun Morogh"
	FEEDBACKUI_DUSKWOOD = "D�mmerwald"
	FEEDBACKUI_EPLAGUELANDS = "�stliche Pestl�nder"
	FEEDBACKUI_ELWYNN = "Wald von Elwynn"
	FEEDBACKUI_EVERSONG = "Immersangwald"
	FEEDBACKUI_GHOSTLANDS = "Geisterlande"
	FEEDBACKUI_HINTERLANDS = "Hinterland"
	FEEDBACKUI_IRONFORGE = "Eisenschmiede"
	FEEDBACKUI_ISLEOFQUELDANAS = "Insel von Quel'Danas" --LOCALIZE ME
	FEEDBACKUI_LOCHMODAN = "Loch Modan"
	FEEDBACKUI_REDRIDGE = "Rotkammgebirge"
	FEEDBACKUI_SEARINGGORGE = "Sengende Schlucht"
	FEEDBACKUI_SILVERMOON = "Silbermond"
	FEEDBACKUI_SILVERPINE = "Silberwald"
	FEEDBACKUI_STORMWIND = "Sturmwind"
	FEEDBACKUI_STRANGLETHORN = "Schlingendorntal"
	FEEDBACKUI_SWAMPOFSORROWS = "S�mpfen des Elends";
	FEEDBACKUI_TIRISFAL = "Tirisfal"
	FEEDBACKUI_UNDERCITY = "Unterstadt"
	FEEDBACKUI_WPLAGUELANDS = "Westliche Pestl�nder"
	FEEDBACKUI_WESTFALL = "Westfall"
	FEEDBACKUI_WETLANDS = "Sumpfland"
	FEEDBACKUI_STREKINGDOMS = "Tritt in den �stlichen K�nigreichen auf."
	--End Eastern Kingdoms-------------------------------------------------------------------------------------------------------
	
	--Kalimdor
	FEEDBACKUI_KALIMDOR = "Kalimdor"
	FEEDBACKUI_ASHENVALE = "Eschental"
	FEEDBACKUI_AZSHARA = "Azshara"
	FEEDBACKUI_AZUREMYST = "Azurmythosinsel"
	FEEDBACKUI_BARRENS = "Brachland"
	FEEDBACKUI_BLOODMYST = "Blutmythosinsel"
	FEEDBACKUI_DARKSHORE = "Dunkelk�ste"
	FEEDBACKUI_DARNASSUS = "Darnassus"
	FEEDBACKUI_DESOLACE = "Desolace";
	FEEDBACKUI_DUROTAR = "Durotar";
	FEEDBACKUI_DUSTWALLOW = "D�stermarschen"
	FEEDBACKUI_EXODAR = "Die Exodar"
	FEEDBACKUI_FELWOOD = "Teufelswald"
	FEEDBACKUI_FERALAS = "Feralas";
	FEEDBACKUI_MOONGLADE = "Mondlichtung"
	FEEDBACKUI_MULGORE = "Mulgore";
	FEEDBACKUI_ORGRIMMAR = "Orgrimmar";
	FEEDBACKUI_SILITHUS = "Silithus";
	FEEDBACKUI_STONETALON = "Steinkrallengebirge"
	FEEDBACKUI_TANARIS = "Tanaris";
	FEEDBACKUI_TELDRASSIL = "Teldrassil";
	FEEDBACKUI_THUNDERBLUFF = "Donnerklippe"
	FEEDBACKUI_THOUSANDNEEDLES = "Tausend Nadeln"
	FEEDBACKUI_UNGORO = "Krater von Un'Goro"
	FEEDBACKUI_WARSONG = "Kriegshymnenschlucht"
	FEEDBACKUI_WINTERSPRING = "Winterquell" 
	FEEDBACKUI_STRKALIMDOR = "Tritt in Kalimdor auf."
	--End Kalimdor ------------------------------------------------------------------------------------------------------------------
	
	--OUTLAND
	FEEDBACKUI_OUTLANDS = "Scherbenwelt"
	FEEDBACKUI_BLADESEDGE = "Schergrat"
	FEEDBACKUI_HELLFIRE = "H�llenfeuerhalbinsel"
	FEEDBACKUI_NAGRAND = "Nagrand"
	FEEDBACKUI_NETHERSTORM = "Nethersturm"
	FEEDBACKUI_SHADOWMOON = "Schattenmondtal"
	FEEDBACKUI_SHATTRATH = "Shattrath"
	FEEDBACKUI_TERROKAR = "W�lder von Terokkar"
	FEEDBACKUI_TWISTINGNETHER = "Wirbelnder Nether"
	FEEDBACKUI_ZANGARMARSH = "Zangarmarschen"
	FEEDBACKUI_STROUTLANDS = "Tritt in der Scherbenwelt auf."
	--End Outlands--------------------------------------------
	
	--Alert Targets/Extra areas
	FEEDBACKUI_BLACKTEMPLE = "Der Schwarze Tempel"
	FEEDBACKUI_ZULAMAN = "Zul'Aman"
	FEEDBACKUI_KAJA = "Kaja'mine"
	FEEDBACKUI_SUNWELLPLATEAU = "Sonnenbrunnenplateau"
	FEEDBACKUI_MAGISTERSTERRACE = "Terrasse der Magister"
	FEEDBACKUI_UTGARDEKEEP = "Burg Utgarde"
	FEEDBACKUI_DRAKTHARONKEEP = "Feste Drak'Tharon"
	FEEDBACKUI_ULDUAR = "Ulduar"
	FEEDBACKUI_HOL = "Die Hallen der Blitze"
	FEEDBACKUI_TAC = "Das Argentumkolosseum"
	FEEDBACKUI_IOC = "Insel der Eroberung"
	--End Alert Targets/Extra areas
	--------------------------------------------End Area Strings---------------------------------------------------------------------
	
	FEEDBACKUI_WHENTABLEHEADER = FEEDBACKUI_WHITE .. "Wann" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHENTABLESUBTEXT = "Wie h�ufig tritt das Problem auf?"
	
	FEEDBACKUI_STRREPRODUCABLE = "Tritt immer auf."
	FEEDBACKUI_STRSOMETIMES = "Tritt gelegentlich auf."
	FEEDBACKUI_STRRARELY = "Tritt selten auf."
	FEEDBACKUI_STRONETIME = "Trat bisher nur ein Mal auf."
	
	
	FEEDBACKUI_REPRODUCABLE = "Immer"
	FEEDBACKUI_SOMETIMES = "Gelegentlich"
	FEEDBACKUI_RARELY = "Selten"
	FEEDBACKUI_ONETIME = "Einmal"
	
	FEEDBACKUI_TYPETABLEHEADER = FEEDBACKUI_WHITE .. "Art" .. FEEDBACKUI_WHITE
	FEEDBACKUI_TYPETABLESUBTEXT = "Welcher Art ist das Problem?"
	
	FEEDBACKUI_STRUIOTHER = "Problem mit dem Benutzerinterface."
	FEEDBACKUI_STRUIITEMS = "- Problem mit dem Interface f�r Gegenst�nde."
	FEEDBACKUI_STRUISPAWNS = "- Problem mit dem Interface f�r Kreaturen."
	FEEDBACKUI_STRUIQUESTS = "- Problem mit dem Interface f�r Quests."
	FEEDBACKUI_STRUISPELLS = "- Problem mit dem Interface f�r Zauber oder Talente."
	FEEDBACKUI_STRUITRADESKILLS = "- Problem mit dem Interface f�r Handwerksfertigkeiten."
	
	FEEDBACKUI_STRGRAPHICOTHER = "Problem mit der Grafik."
	FEEDBACKUI_STRGRAPHICITEMS = "- Problem mit der Grafik von Gegenst�nden."
	FEEDBACKUI_STRGRAPHICSPAWNS = "- Problem mit der Grafik von Kreaturen."
	FEEDBACKUI_STRGRAPHICSPELLS = "- Problem mit der Grafik von Zaubern und Talenten."
	FEEDBACKUI_STRGRAPHICENVIRONMENT = "- Problem mit der Umgebungsgrafik."
	
	FEEDBACKUI_STRFUNCOTHER = "Problem mit der Funktionalit�t des Spiels."
	FEEDBACKUI_STRFUNCITEMS = "- Problem mit der Funktionalit�t von Gegenst�nden."
	FEEDBACKUI_STRFUNCSPAWNS = "- Problem mit der Funktionalit�t von Kreaturen."
	FEEDBACKUI_STRFUNCQUESTS = "- Problem mit der Funktionalit�t von Quests."
	FEEDBACKUI_STRFUNCSPELLS = "- Problem mit der Funktionalit�t von Zaubern oder Talenten."
	FEEDBACKUI_STRFUNCTRADESKILLS = "- Problem mit der Funktionalit�t von Handwerksfertigkeiten."
	
	FEEDBACKUI_STRCRASHOTHER = "Problem mit der Stabilit�t des Spiels."
	FEEDBACKUI_STRCRASHBUG = "- Verursacht einen Absturz von WoW."
	FEEDBACKUI_STRCRASHSOFTLOCK = "- Verursacht einen Stillstand von WoW."
	FEEDBACKUI_STRCRASHHARDLOCK = "- Verursacht einen Stillstand des Computers."
	FEEDBACKUI_STRCRASHWOWLAG = "- Betrifft Probleme mit Lag."
	
	FEEDBACKUI_UIITEMS = "Interface - Gegenst�nde"
	FEEDBACKUI_UISPAWNS = "Interface - Kreaturen"
	FEEDBACKUI_UIQUESTS = "Interface - Quests"
	FEEDBACKUI_UISPELLS = "Interface - Zauber/Talente"
	FEEDBACKUI_UITRADESKILLS = "Interface - Handwerk"
	FEEDBACKUI_UIOTHER = "Interface - Allgemein"
	
	FEEDBACKUI_GRAPHICITEMS = "Grafik - Gegenst�nde"
	FEEDBACKUI_GRAPHICSPAWNS = "Grafik - Kreaturen"
	FEEDBACKUI_GRAPHICSPELLS = "Grafik - Zauber/Talente"
	FEEDBACKUI_GRAPHICENVIRONMENT = "Grafik - Umgebung"
	FEEDBACKUI_GRAPHICOTHER = "Grafik - Allgemein"
	
	FEEDBACKUI_FUNCITEMS = "Funktion - Gegenst�nde"
	FEEDBACKUI_FUNCSPAWNS = "Funktion - Kreaturen"
	FEEDBACKUI_FUNCQUESTS = "Funktion - Quests"
	FEEDBACKUI_FUNCSPELLS = "Funktion - Zauber/Talente"   
	FEEDBACKUI_FUNCTRADESKILLS = "Funktion - Handwerk"
	FEEDBACKUI_FUNCOTHER = "Funktion - Allgemein"
	
	FEEDBACKUI_SPELLSPOWERTABLEHEADER = "St�rke"
	FEEDBACKUI_SPELLSPOWERTABLESUBTEXT = "Wie stark ist diese F�higkeit?"
	FEEDBACKUI_SPELLSFREQUENCYTABLEHEADER = "H�ufigkeit"
	FEEDBACKUI_SPELLSFREQUENCYTABLESUBTEXT = "Wie oft verwendest du diese F�higkeit?"
	FEEDBACKUI_SPELLSAPPROPRIATETABLEHEADER = "Eignung"
	FEEDBACKUI_SPELLSAPPROPRIATETABLESUBTEXT = "Wie gut passt diese F�higkeit zu �hnlichen F�higkeiten? "
	FEEDBACKUI_SPELLSFUNTABLEHEADER = "Spa�"
	FEEDBACKUI_SPELLSFUNTABLESUBTEXT = "Macht es Spa�, diese F�higkeit zu benutzen?"
	
	FEEDBACKUI_STRPOWER1 = "Sehr schwach";
	FEEDBACKUI_STRPOWER2 = "Schwach";
	FEEDBACKUI_STRPOWER3 = "Stark";
	FEEDBACKUI_STRPOWER4 = "Sehr stark";
	
	FEEDBACKUI_STRFREQUENCY1 = "Selten";
	FEEDBACKUI_STRFREQUENCY2 = "Gelegentlich";
	FEEDBACKUI_STRFREQUENCY3 = "H�ufig";
	FEEDBACKUI_STRFREQUENCY4 = "So oft wie m�glich";
	
	FEEDBACKUI_STRAPPROPRIATE1 = "�u�erst ungeeignet";
	FEEDBACKUI_STRAPPROPRIATE2 = "Ungeeignet";
	FEEDBACKUI_STRAPPROPRIATE3 = "Geeignet";
	FEEDBACKUI_STRAPPROPRIATE4 = "Perfekt geeignet";
	
	FEEDBACKUI_SPELLHEADERTEXT = "Zauber"
	FEEDBACKUILBLPOWER_TEXT = "Kraft:"
	FEEDBACKUILBLFREQUENCY_TEXT = "H�ufigkeit:"
	FEEDBACKUILBLAPPROPRIATE_TEXT = "Eignung:"
	
	FEEDBACKUI_CRASHBUG = "Absturz von WoW"
	FEEDBACKUI_CRASHSOFTLOCK = "Stillstand von WoW"
	FEEDBACKUI_CRASHHARDLOCK = "Stillstand des Rechners"
	FEEDBACKUI_CRASHWOWLAG = "Lag in WoW"
	FEEDBACKUI_CRASHOTHER = "Allgemeine Stabilit�tsprobleme"
	
	FEEDBACKUILBLFRMCLARITY_TEXT = "Questinfo:"
	FEEDBACKUILBLFRMDIFFICULTY_TEXT = "Schwierigkeit:"
	FEEDBACKUILBLFRMREWARD_TEXT = "Belohnung:"
	FEEDBACKUILBLFRMFUN_TEXT = "Spa�:"
	FEEDBACKUISURVEYTYPE_QUEST = "Quest"
	FEEDBACKUISURVEYTYPE_AREA = "Instanz"
	
	FEEDBACKUISKIP_TEXT = "Abbrechen"
	FEEDBACKUILBLSURVEYALERTSCHECK_TEXT = "Erinnerung"
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "Bitte w�hlen Sie eine Bewertung aus."
	FEEDBACKUI_WELCOMETABLESURVEYSUBTEXT = "Neue Inhalte er�ffnen neue Bewertungen."
	
	FEEDBACKUI_SURVEYCOLUMNNAME = "Name"
	FEEDBACKUI_SURVEYCOLUMNMODIFIED = "Entdeckt"
	
	FEEDBACKUI_ALLHEADERTEXT = "Alle"
	FEEDBACKUI_AREAHEADERTEXT = "Instanzen"
	FEEDBACKUI_QUESTHEADERTEXT = "Quests"
	
	FEEDBACKUI_STATUSALLTEXT = "Alle"
	FEEDBACKUI_STATUSAVAILABLETEXT = "Verf�gbar"
	FEEDBACKUI_STATUSSKIPPEDTEXT = "Abgebrochen"
	FEEDBACKUI_STATUSCOMPLETEDTEXT = "Abgeschlossen"
	
	FEEDBACKUI_SURVEYTOOLTIPQUESTHEADER = "Questtitel:"
	FEEDBACKUI_SURVEYTOOLTIPAREAHEADER = "Instanz:"
	FEEDBACKUI_SURVEYTOOLTIPEXPERIENCEDHEADER = "Entdeckt:"
	FEEDBACKUI_SURVEYTOOLTIPQUESTOBJECTIVESHEADER = "Questziele:"
	
	FEEDBACKUI_NEW = "Neu"
	FEEDBACKUI_TIMEPREFIX = "vor "
	FEEDBACKUI_HOURAGO = " Stunde"
	FEEDBACKUI_HOURSAGO = " Stunden"
	FEEDBACKUI_DAYAGO = " Tag"
	FEEDBACKUI_DAYSAGO = " Tagen"
	FEEDBACKUI_MONTHAGO = " Monat"
	FEEDBACKUI_MONTHSAGO = " Monaten"
	FEEDBACKUI_YEARAGO = " Jahr"
	FEEDBACKUI_YEARSAGO = " Jahren"
	
	FEEDBACKUI_QUESTSCLARITYTABLEHEADER = "Questinfo"
	FEEDBACKUI_QUESTSCLARITYTABLESUBTEXT = "Wie verst�ndlich waren die Questziele?"
	
	FEEDBACKUI_STRCLARITY1 = "Sehr vage"
	FEEDBACKUI_STRCLARITY2 = "Etwas vage"
	FEEDBACKUI_STRCLARITY3 = "Relativ verst�ndlich"
	FEEDBACKUI_STRCLARITY4 = "Absolut verst�ndlich"
	
	FEEDBACKUI_CLARITY1 = "Sehr vage"
	FEEDBACKUI_CLARITY2 = "Etwas vage"
	FEEDBACKUI_CLARITY3 = "Relativ verst�ndlich"
	FEEDBACKUI_CLARITY4 = "Absolut verst�ndlich"
	
	FEEDBACKUI_QUESTSDIFFICULTYTABLEHEADER = "Schwierigkeitsgrad"
	FEEDBACKUI_QUESTSDIFFICULTYTABLESUBTEXT = "Wie schwierig war die Quest?"
	FEEDBACKUI_AREASDIFFICULTYTABLEHEADER = "Schwierigkeitsgrad"
	FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT = "Wie schwierig waren die Instanzbegegnungen?"
	
	FEEDBACKUI_STRDIFFICULTY1 = "Leicht"
	FEEDBACKUI_STRDIFFICULTY2 = "Schaffbar"
	FEEDBACKUI_STRDIFFICULTY3 = "Herausfordernd"
	FEEDBACKUI_STRDIFFICULTY4 = "Schwer"
	FEEDBACKUI_STRDIFFICULTY5 = "N/A"
	
	FEEDBACKUI_DIFFICULTY1 = "Leicht"
	FEEDBACKUI_DIFFICULTY2 = "Schaffbar"
	FEEDBACKUI_DIFFICULTY3 = "Herausfordernd"
	FEEDBACKUI_DIFFICULTY4 = "Schwer"
	FEEDBACKUI_DIFFICULTY5 = "N/A"
	
	FEEDBACKUI_QUESTSREWARDTABLEHEADER = "Belohnung"
	FEEDBACKUI_QUESTSREWARDTABLESUBTEXT = "Wie w�rden Sie die Questbelohnung bewerten?"
	FEEDBACKUI_AREASREWARDTABLEHEADER = "Belohnung"
	FEEDBACKUI_AREASREWARDTABLESUBTEXT = "Wie w�rden Sie die Instanzbelohnungen bewerten?"
	
	FEEDBACKUI_STRREWARD1 = "Erb�rmlich"
	FEEDBACKUI_STRREWARD2 = "Schlecht"
	FEEDBACKUI_STRREWARD3 = "Gut"
	FEEDBACKUI_STRREWARD4 = "Fantastisch"
	FEEDBACKUI_STRREWARD5 = "N/A"
	
	FEEDBACKUI_REWARD1 = "Erb�rmlich"
	FEEDBACKUI_REWARD2 = "Schlecht"
	FEEDBACKUI_REWARD3 = "Gut"
	FEEDBACKUI_REWARD4 = "Fantastisch"
	FEEDBACKUI_REWARD5 = "N/A"
	
	FEEDBACKUI_QUESTSFUNTABLEHEADER = "Spa�"
	FEEDBACKUI_QUESTSFUNTABLESUBTEXT = "Wie unterhaltsam war die Quest?"
	FEEDBACKUI_AREASFUNTABLEHEADER = "Spa�"
	FEEDBACKUI_AREASFUNTABLESUBTEXT = "Wie unterhaltsam war die Instanz?"
	
	FEEDBACKUI_STRFUN1 = "Nicht unterhaltsam"
	FEEDBACKUI_STRFUN2 = "Wenig unterhaltsam"
	FEEDBACKUI_STRFUN3 = "Recht unterhaltsam"
	FEEDBACKUI_STRFUN4 = "Sehr unterhaltsam"
	
	FEEDBACKUI_FUN1 = "Nicht unterhaltsam"
	FEEDBACKUI_FUN2 = "Wenig unterhaltsam"
	FEEDBACKUI_FUN3 = "Recht unterhaltsam"
	FEEDBACKUI_FUN4 = "Sehr unterhaltsam"
	
	FEEDBACKUISURVEYFRMINPUTBOX_TEXT = "<Zus�tzliche Kommentare bitte hier eintragen>"
	FEEDBACKUI_SURVEYINPUTHEADER = "Danke f�r zus�tzliche Kommentare"
	FEEDBACKUIRESUBMIT_TEXT = "Neu senden"
	
	FEEDBACKUI_WELCOMETABLEBUGHEADER = "Bug melden"
	FEEDBACKUI_WELCOMETABLEBUGSUBTEXT = "Bugmeldungen helfen Fehler schneller zu beheben"
	FEEDBACKUI_WELCOMETABLESUGGESTHEADER = "Einen Vorschlag einreichen"
	FEEDBACKUI_WELCOMETABLESUGGESTSUBTEXT = "Vorschl�ge helfen das Spiel weiter zu verbessern"
	FEEDBACKUI_BUGINPUTHEADER = "Wie kann man den Bug nachstellen?"
	FEEDBACKUI_SUGGESTINPUTHEADER="Bitte geben Sie ihren Vorschlag ein."
	
	FEEDBACKUI_SURVEYNEWBIETEXT = "Klicken Sie hier, um eine Umfrage, �ber eine k�rzlich abgeschlossene Instanz, oder Quest, zu schlie�en."
	FEEDBACKUI_POIMASK = ".-%s%-%s(.+)"
	
	
	FEEDBACKUI_LEVELPREFIX = "Stufe"
	FEEDBACKUI_HILLSBRAD = "�stliche K�nigreiche - Vorgebirge des H�gellands";
	FEEDBACKUISURVEYTYPE_AREA = "Gebiet"
	FEEDBACKUISURVEYTYPE_ITEM = "Gegenstand"
	FEEDBACKUISURVEYTYPE_MOB = "Gegner"
	FEEDBACKUI_AREAHEADERTEXT = "Gebiete"
	FEEDBACKUI_QUESTHEADERTEXT = "Quests"
	FEEDBACKUI_ITEMHEADERTEXT = "Gegenst�nde"
	FEEDBACKUI_MOBHEADERTEXT = "Gegner"
	FEEDBACKUI_SURVEYTOOLTIPAREAHEADER = "Gebietsname:"
	FEEDBACKUI_AREASDIFFICULTYTABLEHEADER = "Schwierigkeitsgrad"
	FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT = "Wie schwierig waren die Begegnungen?"
	FEEDBACKUI_AREASREWARDTABLEHEADER = "Belohnung"
	FEEDBACKUI_AREASREWARDTABLESUBTEXT = "Wie w�rden Sie die Belohnungen bewerten?"
	FEEDBACKUI_AREASFUNTABLEHEADER = "Spa�"
	FEEDBACKUI_AREASFUNTABLESUBTEXT = "Wie unterhaltsam waren die Inhalte?"
	FEEDBACKUI_SURVEYINPUTSUBTEXT = "Hier klicken, um Bewertungsbeispiele anzuzeigen"
	FEEDBACKUI_SURVEYNEWBIETEXT = "Hier klicken, um die Erfahrungsbewertung abzuschlie�en."
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "Bitte Bewertung ausw�hlen"
	
	FEEDBACKUI_SPECIFICWELCOME = "Vielen Dank f�r Ihre Kommentare zu ArcEmu. Sie m�chten Feedback geben zu:\n\n\n\n\nBitte w�hlen Sie eine der folgenden Feedbackoptionen aus, um fortzufahren:";
	FEEDBACKUI_GENERALWELCOME = "Vielen Dank f�r Ihre Kommentare zu ArcEmu. Jede Einsendung, die wir erhalten, spielt eine wichtige Rolle f�r die Qualit�t des Spiels.\n\nBitte w�hlen Sie eine der folgenden Feedbackoptionen aus, um fortzufahren:";
	
	FEEDBACKUI_STARTBUG = "Fehler melden"
	FEEDBACKUI_STARTSURVEY = "Bewertung starten"
	FEEDBACKUI_STARTSUGGESTION = "Vorschlag einreichen"
	
	FEEDBACKUI_WELCOMEBUGHEADER = "Fehler"
	FEEDBACKUI_WELCOMESUGGESTHEADER = "Vorschlag"
	FEEDBACKUI_WELCOMESURVEYHEADER = "Bewertung"
	
	FEEDBACKUI_WELCOMEBUGTEXT = "Hier k�nnen Sie auf Fehler im Spiel hinweisen." 
	FEEDBACKUI_WELCOMESUGGESTTEXT = "�ber einen Vorschlag k�nnen Sie Ideen f�r Verbesserungen des Spiels einreichen."
	FEEDBACKUI_WELCOMESURVEYTEXT = "Mit Bewertungen k�nnen Sie Feedback zu bestimmten Bereichen des Spiels abgeben."
	FEEDBACKUI_WELCOMESURVEYDISABLED = "F�r dieses Thema steht momentan keine Bewertung zur Verf�gung."
	
	FEEDBACKUI_MODIFIERKEY = "Belegung:"
	FEEDBACKUI_MOUSE1 = "Linksklick"
	FEEDBACKUI_MOUSE2 = "Rechtsklick"
	
	FEEDBACKUI_LALT = "LAlt"
	FEEDBACKUI_RALT = "RAlt"
	FEEDBACKUI_LCTRL = "LCtrl"
	FEEDBACKUI_RCTRL = "RCtrl"
	FEEDBACKUI_LSHIFT = "LShift"
	FEEDBACKUI_RSHIFT = "RShift"
	
	FEEDBACKUI_TOOLTIP_MESSAGE = "<F�r Feedback %s-%s>";
	FEEDBACKUI_MAP_MESSAGE = "F�r Feedback auf Karte %s-%s";
	FEEDBACKUI_ITEMTARGETS = { "R�stung", "Verbrauchbar", "Beh�lter", "Projektil", "K�cher", "Waffe", "Rezept", "Edelstein" };
	FEEDBACKUI_MISCTYPE = "Verschiedenes";
	FEEDBACKUISHOWCUES_TEXT = "Tooltipps anzeigen";
	
	FEEDBACKUI_CATEGORYLABEL = "Art:"
	FEEDBACKUI_STATUSLABEL = "Status:"
	
	NEWBIE_TOOLTIP_BUG="Helfen Sie uns, ArcEmu zu verbessern, indem Sie Fehler, Vorschl�ge oder eine Bewertung einreichen.\n\n" .. FEEDBACKUI_BLUE .. "Linksklick zum Beginnen.\nRechtsklick f�r Anzeigeoptionen.";
	FEEDBACKUILBLAPPEARANCE_TEXT = "Aussehen:"
	FEEDBACKUILBLUTILITY_TEXT = "Nutzen:"
	
	FEEDBACKUI_MOBSDIFFICULTYTABLEHEADER = "Schwierigkeitsgrad"                   
	FEEDBACKUI_MOBSDIFFICULTYTABLESUBTEXT = "Wie schwierig war der Gegner zu besiegen?"
	FEEDBACKUI_MOBSREWARDTABLEHEADER = "Belohnung"
	FEEDBACKUI_MOBSREWARDTABLESUBTEXT = "Wie w�rden Sie die Beute des Gegners bewerten?"
	FEEDBACKUI_MOBSFUNTABLEHEADER = "Spa�"
	FEEDBACKUI_MOBSFUNTABLESUBTEXT = "Wie unterhaltsam war die Begegnung?"
	FEEDBACKUI_MOBSAPPEARANCETABLEHEADER = "Ausssehen"
	FEEDBACKUI_MOBSAPPEARANCETABLESUBTEXT = "Wie w�rden Sie das Aussehen des Gegners bewerten?"
	
	FEEDBACKUI_ITEMSDIFFICULTYTABLEHEADER = "Schwierigkeitsgrad"
	FEEDBACKUI_ITEMSDIFFICULTYTABLESUBTEXT = "Wie schwer ist es, den Gegenstand zu erhalten?"
	FEEDBACKUI_ITEMSUTILITYHEADER = "Nutzen"
	FEEDBACKUI_ITEMSUTILITYSUBTEXT = "Bewerten Sie bitte den generellen Nutzen des Gegenstands?"
	FEEDBACKUI_ITEMSAPPEARANCETABLEHEADER = "Aussehen"
	FEEDBACKUI_ITEMSAPPEARANCETABLESUBTEXT = "Wie w�rden Sie das Aussehen des Gegenstands bewerten?"
	
	FEEDBACKUI_STRUTILITY1 = "V�llig nutzlos"
	FEEDBACKUI_STRUTILITY2 = "Fast g�nzlich nutzlos"
	FEEDBACKUI_STRUTILITY3 = "N�tzlich"
	FEEDBACKUI_STRUTILITY4 = "Sehr n�tzlich"
	
	FEEDBACKUI_UTILITY1 = "V�llig nutzlos"
	FEEDBACKUI_UTILITY2 = "Fast g�nzlich nutzlos"
	FEEDBACKUI_UTILITY3 = "N�tzlich"
	FEEDBACKUI_UTILITY4 = "Sehr n�tzlich"
	
	FEEDBACKUI_STRAPPEARANCE1 = "Ungen�gend"
	FEEDBACKUI_STRAPPEARANCE2 = "Unscheinbar"
	FEEDBACKUI_STRAPPEARANCE3 = "Gut"
	FEEDBACKUI_STRAPPEARANCE4 = "Herausragend"
	
	FEEDBACKUI_APPEARANCE1 = "Ungen�gend"
	FEEDBACKUI_APPEARANCE2 = "Unscheinbar"
	FEEDBACKUI_APPEARANCE3 = "Gut"
	FEEDBACKUI_APPEARANCE4 = "Herausragend"
	
	FEEDBACKUI_POIUNDERCITY = "Unterstadt";
	FEEDBACKUI_POISILVERMOON = "Silbermond";
	FEEDBACKUI_POIIRONFORGE = "Eisenschmiede";
	FEEDBACKUI_POISTORMWIND = "Sturmwind";
	FEEDBACKUI_POISEPULCHER = "Das Grabmal";
	FEEDBACKUI_POITARRENMILL = "Tarrens M�hle";
	FEEDBACKUI_POISOUTHSHORE = "S�derstade";
	FEEDBACKUI_POIAERIEPEAK = "Nistgipfel";
	FEEDBACKUI_POIREVANTUSK = "Dorf der Bruchhauer";
	FEEDBACKUI_POIHAMMERFALL = "Hammerfall";
	FEEDBACKUI_POIMENETHIL = "Hafen von Menethil";
	FEEDBACKUI_POITHELSAMAR = "Thelsamar";
	FEEDBACKUI_POIKARGATH = "Kargath";
	FEEDBACKUI_POILAKESHIRE = "Seenhain";
	FEEDBACKUI_POISENTINELHILL = "Sp�herkuppe";
	FEEDBACKUI_POIDARKSHIRE = "Dunkelhain";
	FEEDBACKUI_POISTONARD = "Steinard";
	FEEDBACKUI_POIGROMGOL = "Basislager von Grom'gol";
	FEEDBACKUI_POIBOOTY = "Beutebucht"
	
	FEEDBACKUI_POIDARNASSUS = "Darnassus";
	FEEDBACKUI_POIEXODAR = "Die Exodar";
	FEEDBACKUI_POIORGRIMMAR = "Orgrimmar";
	FEEDBACKUI_POITHUNDERB = "Donnerfels";
	FEEDBACKUI_POIAUBERDINE = "Auberdine";
	FEEDBACKUI_POIEVERLOOK = "Ewige Warte";
	FEEDBACKUI_POISTONETALON = "Steinkrallengipfel";
	FEEDBACKUI_POIASTRANAAR = "Astranaar";
	FEEDBACKUI_POISPLINTERTREE = "Splitterholzposten";
	FEEDBACKUI_POISUNROCK = "Sonnenfels";
	FEEDBACKUI_POINIJELS = "Nijelspitze";
	FEEDBACKUI_POISHADOWPREY = "Schattenflucht";
	FEEDBACKUI_POIFEATHERMOON = "Mondfederfeste";
	FEEDBACKUI_POIMOJACHE = "Camp Mojache";
	FEEDBACKUI_POITHALANAAR = "Thalanaar";
	FEEDBACKUI_POICENARIONHOLD = "Burg Cenarius";
	FEEDBACKUI_POIGADGET = "Gadgetzan";
	FEEDBACKUI_POIFREEWIND = "Freiwindposten";
	FEEDBACKUI_POITAURAJO = "Camp Taurajo";
	FEEDBACKUI_POICROSSROADS = "Das Wegekreuz";
	FEEDBACKUI_POIRATCHET = "Ratschet";
	FEEDBACKUI_POITHERAMORE = "Insel Theramore";
	
	FEEDBACKUI_SURVEYTOOLTIPMOBHEADER = "Gegnername:"
	FEEDBACKUI_SURVEYTOOLTIPMOBZONEHEADER = "Gefunden in:"
	
	FEEDBACKUI_VOICECHAT = "Sprachchat";
	FEEDBACKUI_VOICECHATTOOLTIP = FEEDBACKUI_WHITE .. FEEDBACKUI_VOICECHAT;
	FEEDBACKUI_STRVOICECHAT = "Problem mit dem Sprachchat.";
	FEEDBACKUI_HEADSETTYPE = "Welche Art von Headset benutzt ihr?";
	
	FEEDBACKUI_USBHEADSET = "USB Headset";
	FEEDBACKUI_ANALOGHEADSET = "Analoges Headset"; --localize me
	FEEDBACKUI_HARDWIREDMIC = "Festverdrahtetes Mikrofon"; --localize me
	
	FEEDBACKUI_STRUSBHEADSET = "Ich benutze ein USB Headset.";
	FEEDBACKUI_STRANALOGHEADSET = "Ich benutze ein Analoges Headset.";
	FEEDBACKUI_STRHARDWIREDMIC = "Ich benutze ein festverdrahtetes Mikrofon."; --localize me
	
elseif ( GetLocale() == "esES" ) then
	-- Localized Spanish strings for FEEDBACKUI
	--[[
	function esES() end
	]]--
	--Non-instance special zone names
	FEEDBACKUI_EXCEPTIONZONES = { "Tren subterr�neo", "Mar Adusto", "Mare Magnum", "Valle de Alterac", "Cuenca de Arathi", "Garganta Grito de Guerra", "Sala de los Campeones", "Monta�a Roca Negra", "Mar de la Bruma", "Sala de las Leyendas", "El Vac�o Abisal", "Fortaleza de Utgarde", }
	
	--Headers    
	FEEDBACKUIINFOPANELLABEL_TEXT = "Tus datos"
	FEEDBACKUI_BUGINPUTHEADER = "Describe este error"
	FEEDBACKUI_BUGINPUTSUBTEXT = "�C�mo podemos reproducir este error?"
	FEEDBACKUI_SUGGESTINPUTHEADER = "Describe tu sugerencia"
	FEEDBACKUI_SUGGESTINPUTSUBTEXT = "�Qu� te gustar�a sugerir?"
	
	--Labels
	FEEDBACKUIFEEDBACKFRMTITLE_TEXT = "Mandar informaci�n"
	FEEDBACKUILBLFRMVER_TEXT = "Versi�n:"
	FEEDBACKUILBLFRMREALM_TEXT = "Reino:"
	FEEDBACKUILBLFRMNAME_TEXT = "Nombre:"
	FEEDBACKUILBLFRMCHAR_TEXT = "Personaje:"
	FEEDBACKUILBLFRMMAP_TEXT = "Mapa:"
	FEEDBACKUILBLFRMZONE_TEXT = "Zona:"
	FEEDBACKUILBLFRMAREA_TEXT = "�rea:"
	FEEDBACKUILBLFRMADDONS_TEXT = "Addons: "
	FEEDBACKUILBLADDONSWRAP_TEXT = "Addons actuales:\n"
	FEEDBACKUITYPEBUG_TEXT = "Error"
	FEEDBACKUITYPESUGGEST_TEXT = "Sugerencia"
	FEEDBACKUITYPESURVEY_TEXT = "Encuesta"
	FEEDBACKUILBLFRMWHO_TEXT = "Qui�n: "
	FEEDBACKUILBLFRMWHERE_TEXT = "D�nde: "
	FEEDBACKUILBLFRMWHEN_TEXT = "Cu�ndo: "
	FEEDBACKUILBLFRMTYPE_TEXT = "Tipo: "
	FEEDBACKUI_GENDERTABLE = { "Desconocido", "Masculino", "Femenino" }
	
	--Prompts
	FEEDBACKUIBUGFRMINPUTBOX_TEXT = "<Escribe aqu� los pasos a seguir para reproducir el error>"
	FEEDBACKUISUGGESTFRMINPUTBOX_TEXT = "<Escribe tu sugerencia aqu�>"
	FEEDBACKUILBLADDONS_MOUSEOVER = "<Texto al pasar el rat�n de los addons cargados>"
	FEEDBACKUI_CONFIRMATION = "Tu informaci�n se ha enviado.\n�Gracias por ayudarnos a mejorar ArcEmu!"
	
	--Tooltips & Buttons
	BUG_BUTTON="Enviar informaci�n"
	NEWBIE_TOOLTIP_BUG="Env�anos informaci�n sobre errores o sugerencias para ayudarnos a mejorar ArcEmu."
	FEEDBACKUIBACK_TEXT = "Volver"
	FEEDBACKUIRESET_TEXT = "Borrar todo"
	FEEDBACKUISUBMIT_TEXT = "Enviar"
	FEEDBACKUISTART_TEXT = "�Inicio!"
	
	--Tables and strings for navigation.
	FEEDBACKUI_WELCOMETABLEBUGHEADER = "Informa de un error"
	FEEDBACKUI_WELCOMETABLESUGGESTHEADER = "Haz una sugerencia"
	FEEDBACKUI_WELCOMETABLESUBTEXT = "�Gracias por la informaci�n!"
	
	FEEDBACKUI_WELCOME = "\nGracias por tu informaci�n sobre ArcEmu. Cada mensaje que recibimos es vital para lograr la calidad de ArcEmu.\n\nRellena este corto cuestionario para ayudarnos a procesar los numerosos mensajes que recibimos de forma efectiva.\n\nGracias,\nThe ArcEmu Team"
	
	FEEDBACKUI_WHOTABLEHEADER = FEEDBACKUI_WHITE .. "Qui�n" .. FEEDBACKUI_WHITE 
	FEEDBACKUI_WHOTABLESUBTEXT = "�A qu� afecta este problema?"
	
	FEEDBACKUI_STRWHOPLAYER = "Afecta a mi personaje."
	FEEDBACKUI_STRPARTYMEMBER = "Afecta a los jugadores de mi grupo."
	FEEDBACKUI_STRRAIDMEMBER = "Afecta a los jugadores de mi banda."
	FEEDBACKUI_STRENEMYPLAYER = "Afecta a un jugador enemigo."
	FEEDBACKUI_STRFRIENDLYPLAYER = "Afecta a un jugador aliado."
	FEEDBACKUI_STRENEMYCREATURE = "Afecta a una criatura enemiga."
	FEEDBACKUI_STRFRIENDLYCREATURE = "Afecta a una criatura aliada."
	FEEDBACKUI_STRWHONA = "No afecta ni a jugadores ni a criaturas."
	
	FEEDBACKUI_WHOPLAYER = "Mi personaje"
	FEEDBACKUI_ENEMYPLAYER = "Personaje enemigo"
	FEEDBACKUI_FRIENDLYPLAYER = "Personaje aliado"
	FEEDBACKUI_PARTYMEMBER = "Miembro grupo"
	FEEDBACKUI_RAIDMEMBER = "Miembro banda"
	FEEDBACKUI_ENEMYCREATURE = "Criatura enemiga"
	FEEDBACKUI_FRIENDLYCREATURE = "Criatura aliada"
	FEEDBACKUI_WHONA = "N/A"
	
	FEEDBACKUI_WHERETABLEHEADER = FEEDBACKUI_WHITE .. "D�nde" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHERETABLESUBTEXT = "�D�nde ocurre este problema?"
	
	FEEDBACKUI_STRAREATABLE = "Ocurre durante el juego."
	FEEDBACKUI_STRWHEREINSTALL = "Ocurre durante la instalaci�n."
	FEEDBACKUI_STRWHEREDOWNLOAD = "Ocurre durante la descarga."
	FEEDBACKUI_STRWHEREPATCH = "Ocurre instalando un parche."
	
	FEEDBACKUI_WHEREINSTALL = "Durante instalaci�n"
	FEEDBACKUI_WHEREDOWNLOAD = "Durante descarga"
	FEEDBACKUI_WHEREPATCH = "Durante parche"
	
	FEEDBACKUI_AREATABLESUMMARY = FEEDBACKUI_GREEN .. "En alg�n lugar del juego"
	
	---------------------------------------- Begin Area Strings ------------------------------------------------------------------
	FEEDBACKUI_STROCCURS = "- This occurs in "; --localize me
	FEEDBACKUI_EVERYWHERE = "En todo el juego"
	FEEDBACKUI_STREVERYWHERE = "En todos sitios en el juego."
	
	--AZEROTH
	FEEDBACKUI_AZEROTH = "Azeroth"
	
	--Northrend
	FEEDBACKUI_NORTHREND = "Rasganorte"
	FEEDBACKUI_BOREANTUNDRA = "Tundra Boreal"
	FEEDBACKUI_CRYSTALSONG = "Bosque Canto de Cristal" --LOCALIZE ME
	FEEDBACKUI_DALARAN = "Dalaran" 
	FEEDBACKUI_DRAGONBLIGHT = "Cementerio de Dragones"
	FEEDBACKUI_GRIZZLYHILLS = "Colinas Pardas"
	FEEDBACKUI_HOWLINGFJORD = "Fiordo Aquilonal"
	FEEDBACKUI_ICECROWN = "Corona de Hielo" --LOCALIZE ME
	FEEDBACKUI_NEXUS = "El Nexo"
	FEEDBACKUI_SHOLAZARBASIN = "Cuenca de Sholazar" --LOCALIZE ME
	FEEDBACKUI_STORMPEAKS = "Las Cumbres Tormentosas" --LOCALIZE ME
	FEEDBACKUI_UTGARDEPINNACLE = "Pin�culo de Utgarde"
	FEEDBACKUI_WINTERGRASP = "Conquista del Invierno" --LOCALIZE ME
	FEEDBACKUI_ZULDRAK = "Zul'Drak" 
	FEEDBACKUI_STRNORTHREND = "Ocurre en Rasganorte."
	--End Northrend-----------------------------------
	
	--Eastern Kingdoms
	FEEDBACKUI_EKINGDOMS = "Reinos del Este"
	FEEDBACKUI_ALTERACMOUNTAINS = "Monta�as de Alterac"
	FEEDBACKUI_ALTERACVALLEY = "Valle de Alterac"
	FEEDBACKUI_ARATHIBASIN = "Cuenca de Arathi"
	FEEDBACKUI_ARATHIHIGHLANDS = "Tierras Altas de Arathi"
	FEEDBACKUI_BADLANDS = "Tierras Inh�spitas"
	FEEDBACKUI_BLACKROCKMOUNTAIN = "Monta�a Roca Negra"
	FEEDBACKUI_BLASTEDLANDS = "Las Tierras Devastadas"
	FEEDBACKUI_BURNINGSTEPPES = "Las Estepas Ardientes"
	FEEDBACKUI_DEADWINDPASS = "Paso de la Muerte"
	FEEDBACKUI_DUNMOROGH = "Dun Morogh"
	FEEDBACKUI_DUSKWOOD = "Bosque del Ocaso"
	FEEDBACKUI_EPLAGUELANDS = "Tierras de la Peste del Este"
	FEEDBACKUI_ELWYNN = "Bosque de Elwynn"
	FEEDBACKUI_EVERSONG = "Bosque Canci�n Eterna"
	FEEDBACKUI_GHOSTLANDS = "Tierras Fantasma"
	FEEDBACKUI_HILLSBRAD = "Laderas de Trabalomas"
	FEEDBACKUI_HINTERLANDS = "Tierras del Interior"
	FEEDBACKUI_IRONFORGE = "Forjaz"
	FEEDBACKUI_ISLEOFQUELDANAS = "Isla de Quel�Danas" --LOCALIZE ME
	FEEDBACKUI_LOCHMODAN = "Loch Modan";
	FEEDBACKUI_REDRIDGE = "Monta�as Crestagrana"
	FEEDBACKUI_SEARINGGORGE = "La Garganta de Fuego"
	FEEDBACKUI_SILVERMOON = "Ciudad de Lunargenta"
	FEEDBACKUI_SILVERPINE = "Bosque de Arg�nteos"
	FEEDBACKUI_STORMWIND = "Ventormenta"
	FEEDBACKUI_STRANGLETHORN = "Vega de Tuercespina"
	FEEDBACKUI_SWAMPOFSORROWS = "Pantano de las Penas";
	FEEDBACKUI_TIRISFAL = "Claros de Tirisfal"
	FEEDBACKUI_UNDERCITY = "Entra�as"
	FEEDBACKUI_WPLAGUELANDS = "Tierras de la Peste del Oeste"
	FEEDBACKUI_WESTFALL = "P�ramos de Poniente"
	FEEDBACKUI_WETLANDS = "Los Humedales"
	FEEDBACKUI_STREKINGDOMS = "Ocurre en los Reinos del Este."
	--End Eastern Kingdoms-------------------------------------------------------------------------------------------------------
	
	--Kalimdor
	FEEDBACKUI_KALIMDOR = "Kalimdor"
	FEEDBACKUI_ASHENVALE = "Vallefresno"
	FEEDBACKUI_AZSHARA = "Azshara"
	FEEDBACKUI_AZUREMYST = "Isla Bruma Azur"
	FEEDBACKUI_BARRENS = "Los Bald�os"
	FEEDBACKUI_BLOODMYST = "Isla Bruma de Sangre"
	FEEDBACKUI_DARKSHORE = "Costa Oscura"
	FEEDBACKUI_DARNASSUS = "Darnassus"
	FEEDBACKUI_DESOLACE = "Desolace";
	FEEDBACKUI_DUROTAR = "Durotar";
	FEEDBACKUI_DUSTWALLOW = "Marjal Revolcafango"
	FEEDBACKUI_EXODAR = "El Exodar"
	FEEDBACKUI_FELWOOD = "Frondavil"
	FEEDBACKUI_FERALAS = "Feralas"
	FEEDBACKUI_MOONGLADE = "Claro de la Luna"
	FEEDBACKUI_MULGORE = "Mulgore";
	FEEDBACKUI_ORGRIMMAR = "Orgrimmar";
	FEEDBACKUI_SILITHUS = "Silithus";
	FEEDBACKUI_STONETALON = "Sierra Espol�n"
	FEEDBACKUI_TANARIS = "Tanaris";
	FEEDBACKUI_TELDRASSIL = "Teldrassil";
	FEEDBACKUI_THUNDERBLUFF = "Cima del Trueno"
	FEEDBACKUI_THOUSANDNEEDLES = "Las Mil Agujas"
	FEEDBACKUI_UNGORO = "Cr�ter de Un'Goro"
	FEEDBACKUI_WARSONG = "Garganta Grito de Guerra"
	FEEDBACKUI_WINTERSPRING = "Cuna del Invierno"
	FEEDBACKUI_STRKALIMDOR = "Ocurre en Kalimdor."
	--End Kalimdor ------------------------------------------------------------------------------------------------------------------
	
	--OUTLAND
	FEEDBACKUI_OUTLANDS = "Terrallende"
	FEEDBACKUI_BLADESEDGE = "Monta�as Filospada"
	FEEDBACKUI_HELLFIRE = "Pen�nsula del Fuego Infernal"
	FEEDBACKUI_NAGRAND = "Nagrand"
	FEEDBACKUI_NETHERSTORM = "Tormenta Abisal"
	FEEDBACKUI_SHADOWMOON = "Valle Sombraluna"
	FEEDBACKUI_SHATTRATH = "Ciudad de Shattrath"
	FEEDBACKUI_TERROKAR = "Bosque de Terokkar"
	FEEDBACKUI_TWISTINGNETHER = "El Vac�o Abisal"
	FEEDBACKUI_ZANGARMARSH = "Marisma de Zangar"
	FEEDBACKUI_STROUTLANDS = "Ocurre en Terrallende."
	--End Outlands--------------------------------------------
	
	--Alert Targets/Extra areas
	FEEDBACKUI_BLACKTEMPLE = "Templo Oscuro"
	FEEDBACKUI_ZULAMAN = "Zul'Aman"
	FEEDBACKUI_KAJA = "Kaja'mine"
	FEEDBACKUI_SUNWELLPLATEAU = "Meseta de La Fuente del Sol"
	FEEDBACKUI_MAGISTERSTERRACE = "Bancal del Magister"
	FEEDBACKUI_UTGARDEKEEP = "Fortaleza de Utgarde"
	FEEDBACKUI_DRAKTHARONKEEP = "Fortaleza de Drak'Tharon"
	FEEDBACKUI_ULDUAR = "Ulduar"
	FEEDBACKUI_HOL = "C�maras de Rel�mpagos"
	FEEDBACKUI_TAC = "El Coliseo Argenta"
	FEEDBACKUI_IOC = "Isla de la Conquista"
	--End Alert Targets/Extra areas
	--------------------------------------------End Area Strings---------------------------------------------------------------------
	
	FEEDBACKUI_WHENTABLEHEADER = FEEDBACKUI_WHITE .. "Cu�ndo" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHENTABLESUBTEXT = "�Con qu� frecuencia ocurre?"
	
	FEEDBACKUI_STRREPRODUCABLE = "Ocurre continuamente."
	FEEDBACKUI_STRSOMETIMES = "Ocurre ocasionalmente."
	FEEDBACKUI_STRRARELY = "Ocurre pocas veces."
	FEEDBACKUI_STRONETIME = "S�lo ha ocurrido una vez."
	
	
	FEEDBACKUI_REPRODUCABLE = "Siempre"
	FEEDBACKUI_SOMETIMES = "Ocasionalmente"
	FEEDBACKUI_RARELY = "Pocas veces"
	FEEDBACKUI_ONETIME = "Una vez"
	
	FEEDBACKUI_TYPETABLEHEADER = FEEDBACKUI_WHITE .. "Tipo" .. FEEDBACKUI_WHITE
	FEEDBACKUI_TYPETABLESUBTEXT = "�Qu� tipo de problema es?"
	
	FEEDBACKUI_STRUIOTHER = "Es un problema de interfaz."
	FEEDBACKUI_STRUIITEMS = "- Es un problema de la interfaz de objetos."
	FEEDBACKUI_STRUISPAWNS = "- Es un problema de la interfaz de criaturas."
	FEEDBACKUI_STRUIQUESTS = "- Es un problema de la interfaz de misiones."
	FEEDBACKUI_STRUISPELLS = "- Es un problema de la interfaz de hechizos o talentos."
	FEEDBACKUI_STRUITRADESKILLS = "- Es un problema de la interfaz de oficios."
	
	FEEDBACKUI_STRGRAPHICOTHER = "Es un problema gr�fico."
	FEEDBACKUI_STRGRAPHICITEMS = "- Es un problema gr�fico con objetos."
	FEEDBACKUI_STRGRAPHICSPAWNS = "- Es un problema gr�fico de criaturas."
	FEEDBACKUI_STRGRAPHICSPELLS = "- Es un problema gr�fico de talentos."
	FEEDBACKUI_STRGRAPHICENVIRONMENT = "- Es un problema gr�fico de efectos ambientales."
	
	FEEDBACKUI_STRFUNCOTHER = "Este problema afecta de funcionamiento del juego."
	FEEDBACKUI_STRFUNCITEMS = "- Afecta al funcionamiento de objetos."
	FEEDBACKUI_STRFUNCSPAWNS = "- Afecta al funcionamiento de criaturas."
	FEEDBACKUI_STRFUNCQUESTS = "- Afecta al funcionamiento de misiones."
	FEEDBACKUI_STRFUNCSPELLS = "- Afecta al funcionamiento de hechizos o talentos."
	FEEDBACKUI_STRFUNCTRADESKILLS = "- Afecta al funcionamiento de oficios."
	
	FEEDBACKUI_STRCRASHOTHER = "Es un problema de estabilidad."
	FEEDBACKUI_STRCRASHBUG = "- Causa que WoW se cierre."
	FEEDBACKUI_STRCRASHSOFTLOCK = "- Causa que WoW deje de responder."
	FEEDBACKUI_STRCRASHHARDLOCK = "- Causa que mi ordenador no responda."
	FEEDBACKUI_STRCRASHWOWLAG = "- Relacionado con un retardo de conexi�n."
	
	FEEDBACKUI_UIITEMS = "Problema de interfaz de objeto"
	FEEDBACKUI_UISPAWNS = "Problema de interfaz de criatura"
	FEEDBACKUI_UIQUESTS = "Problema de interfaz de misi�n"
	FEEDBACKUI_UISPELLS = "Problema de interfaz de hechizo o talento"
	FEEDBACKUI_UITRADESKILLS = "Problema de interfaz de oficio"
	FEEDBACKUI_UIOTHER = "Problema de interfaz general"
	
	FEEDBACKUI_GRAPHICITEMS = "Problema gr�fico de objeto"
	FEEDBACKUI_GRAPHICSPAWNS = "Problema gr�fico de criatura"
	FEEDBACKUI_GRAPHICSPELLS = "Problema gr�fico de hechizo o talento"
	FEEDBACKUI_GRAPHICENVIRONMENT = "Problema gr�fico ambiental"
	FEEDBACKUI_GRAPHICOTHER = "General Graphics Issue"
	
	FEEDBACKUI_FUNCITEMS = "Problema de funcionamiento de objeto"
	FEEDBACKUI_FUNCSPAWNS = "Problema de funcionamiento de criatura"
	FEEDBACKUI_FUNCQUESTS = "Problema de funcionamiento de misi�n"
	FEEDBACKUI_FUNCSPELLS = "Problema de funcionamiento de hechizo o talento"  
	FEEDBACKUI_FUNCTRADESKILLS = "Problema de funcionamiento de oficio"
	FEEDBACKUI_FUNCOTHER = "Problema de funcionamiento general"
	
	FEEDBACKUI_SPELLSPOWERTABLEHEADER = "Poder"
	FEEDBACKUI_SPELLSPOWERTABLESUBTEXT = "�Es potente esta facultad?"
	FEEDBACKUI_SPELLSFREQUENCYTABLEHEADER = "Frecuencia"
	FEEDBACKUI_SPELLSFREQUENCYTABLESUBTEXT = "�Con qu� frecuencia usas esta facultad?"
	FEEDBACKUI_SPELLSAPPROPRIATETABLEHEADER = "Pertinencia"
	FEEDBACKUI_SPELLSAPPROPRIATETABLESUBTEXT = "�Encaja con otras facultades similares?"
	FEEDBACKUI_SPELLSFUNTABLEHEADER = "Diversi�n"
	FEEDBACKUI_SPELLSFUNTABLESUBTEXT = "�Es divertida esta facultad?"
	
	FEEDBACKUI_STRPOWER1 = "Muy poco";
	FEEDBACKUI_STRPOWER2 = "Poco";
	FEEDBACKUI_STRPOWER3 = "Es potente";
	FEEDBACKUI_STRPOWER4 = "Muy potente";
	
	FEEDBACKUI_STRFREQUENCY1 = "Casi nunca";
	FEEDBACKUI_STRFREQUENCY2 = "A veces";
	FEEDBACKUI_STRFREQUENCY3 = "Con frecuencia";
	FEEDBACKUI_STRFREQUENCY4 = "Siempre que puedo";
	
	FEEDBACKUI_STRAPPROPRIATE1 = "Muy poco"; 
	FEEDBACKUI_STRAPPROPRIATE2 = "Poco"; 
	FEEDBACKUI_STRAPPROPRIATE3 = "Encaja bien";
	FEEDBACKUI_STRAPPROPRIATE4 = "Encaja perfectamente";
	
	FEEDBACKUI_SPELLHEADERTEXT = "Hechizos"
	FEEDBACKUILBLPOWER_TEXT = "Poder:"
	FEEDBACKUILBLFREQUENCY_TEXT = "Frecuencia:"
	FEEDBACKUILBLAPPROPRIATE_TEXT = "Pertinencia:"
	
	FEEDBACKUI_CRASHBUG = "El problema hace que WoW se cierre"
	FEEDBACKUI_CRASHSOFTLOCK = "El problema hace que WoW se cuelgue"
	FEEDBACKUI_CRASHHARDLOCK = "El problema hace que el ordenador se cuelgue"
	FEEDBACKUI_CRASHWOWLAG = "El problema ralentiza WoW"
	FEEDBACKUI_CRASHOTHER = "Es un problema de estabilidad general"
	
	FEEDBACKUILBLFRMCLARITY_TEXT = "Claridad:"
	FEEDBACKUILBLFRMDIFFICULTY_TEXT = "Dificultad:"
	FEEDBACKUILBLFRMREWARD_TEXT = "Recompensa:"
	FEEDBACKUILBLFRMFUN_TEXT = "Diversi�n:"
	FEEDBACKUISURVEYTYPE_QUEST = "Misi�n"
	FEEDBACKUISURVEYTYPE_AREA = "Estancia"
	
	FEEDBACKUISKIP_TEXT = "Saltar encuesta"
	FEEDBACKUILBLSURVEYALERTSCHECK_TEXT = "Mostrar alertas"
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "Por favor, escoge una encuesta."
	FEEDBACKUI_WELCOMETABLESURVEYSUBTEXT = "Las encuestas se a�aden al probar nuevo contenido."
	
	FEEDBACKUI_SURVEYCOLUMNNAME = "Nombre"
	FEEDBACKUI_SURVEYCOLUMNMODIFIED = "Probado"
	
	FEEDBACKUI_ALLHEADERTEXT = "Todo"
	FEEDBACKUI_AREAHEADERTEXT = "Estancias"
	FEEDBACKUI_QUESTHEADERTEXT = "Misiones"
	
	FEEDBACKUI_STATUSALLTEXT = "Todo"
	FEEDBACKUI_STATUSAVAILABLETEXT = "Disponible"
	FEEDBACKUI_STATUSSKIPPEDTEXT = "Descartado"
	FEEDBACKUI_STATUSCOMPLETEDTEXT = "Completado"
	
	FEEDBACKUI_SURVEYTOOLTIPQUESTHEADER = "Nombre misi�n:"
	FEEDBACKUI_SURVEYTOOLTIPAREAHEADER = "Nombre estancia:"
	FEEDBACKUI_SURVEYTOOLTIPEXPERIENCEDHEADER = "Ocurrido:"
	FEEDBACKUI_SURVEYTOOLTIPQUESTOBJECTIVESHEADER = "Objetivos de misi�n:"
	
	FEEDBACKUI_NEW = "Nuevo"
	FEEDBACKUI_HOURAGO = " hora"
	FEEDBACKUI_HOURSAGO = " horas"
	FEEDBACKUI_DAYAGO = " d�a"
	FEEDBACKUI_DAYSAGO = " d�as"
	FEEDBACKUI_MONTHAGO = " mes"
	FEEDBACKUI_MONTHSAGO = " meses"
	FEEDBACKUI_YEARAGO = " a�o"
	FEEDBACKUI_YEARSAGO = " a�os"
	
	FEEDBACKUI_QUESTSCLARITYTABLEHEADER = "Claridad"
	FEEDBACKUI_QUESTSCLARITYTABLESUBTEXT = "�Son suficientemente claros los objetivos de la misi�n?"
	
	FEEDBACKUI_STRCLARITY1 = "Muy vagos"
	FEEDBACKUI_STRCLARITY2 = "Algo vagos"
	FEEDBACKUI_STRCLARITY3 = "Bastante claros"
	FEEDBACKUI_STRCLARITY4 = "Perfectamente claros"
	
	FEEDBACKUI_CLARITY1 = "Muy vagos"
	FEEDBACKUI_CLARITY2 = "Algo vagos"
	FEEDBACKUI_CLARITY3 = "Bastante claros"
	FEEDBACKUI_CLARITY4 = "Perfectamente claros"
	
	FEEDBACKUI_QUESTSDIFFICULTYTABLEHEADER = "Dificultad"
	FEEDBACKUI_QUESTSDIFFICULTYTABLESUBTEXT = "�Cu�l fue la dificultad de la misi�n?"
	FEEDBACKUI_AREASDIFFICULTYTABLEHEADER = "Dificultad"
	FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT = "�Cu�l fue la dificultad de los encuentros de la estancia?"
	
	FEEDBACKUI_STRDIFFICULTY1 = "F�cil"
	FEEDBACKUI_STRDIFFICULTY2 = "Razonable"
	FEEDBACKUI_STRDIFFICULTY3 = "Desafiante"
	FEEDBACKUI_STRDIFFICULTY4 = "Dif�cil"
	FEEDBACKUI_STRDIFFICULTY5 = "N/A"
	
	FEEDBACKUI_DIFFICULTY1 = "F�cil"
	FEEDBACKUI_DIFFICULTY2 = "Razonable"
	FEEDBACKUI_DIFFICULTY3 = "Desafiante"
	FEEDBACKUI_DIFFICULTY4 = "Dif�cil"
	FEEDBACKUI_DIFFICULTY5 = "N/A"
	
	FEEDBACKUI_QUESTSREWARDTABLEHEADER = "Recompensa"
	FEEDBACKUI_QUESTSREWARDTABLESUBTEXT = "�C�mo valoras la recompensa de la misi�n?"
	FEEDBACKUI_AREASREWARDTABLEHEADER = "Recompensa"
	FEEDBACKUI_AREASREWARDTABLESUBTEXT = "�C�mo valoras la recompensa de la estancia?"
	
	FEEDBACKUI_STRREWARD1 = "Horrible"
	FEEDBACKUI_STRREWARD2 = "Mala"
	FEEDBACKUI_STRREWARD3 = "Buena"
	FEEDBACKUI_STRREWARD4 = "Genial"
	FEEDBACKUI_STRREWARD5 = "N/A"
	
	FEEDBACKUI_REWARD1 = "Horrible"
	FEEDBACKUI_REWARD2 = "Mala"
	FEEDBACKUI_REWARD3 = "Buena"
	FEEDBACKUI_REWARD4 = "Genial"
	FEEDBACKUI_REWARD5 = "N/A"
	
	FEEDBACKUI_QUESTSFUNTABLEHEADER = "Diversi�n"
	FEEDBACKUI_QUESTSFUNTABLESUBTEXT = "�Fue divertida la misi�n?"
	FEEDBACKUI_AREASFUNTABLEHEADER = "Diversi�n"
	FEEDBACKUI_AREASFUNTABLESUBTEXT = "�Fue divertida la estancia?"
	
	FEEDBACKUI_STRFUN1 = "Nada divertida"
	FEEDBACKUI_STRFUN2 = "No muy divertida"
	FEEDBACKUI_STRFUN3 = "Bastante divertida"
	FEEDBACKUI_STRFUN4 = "Muy divertida"
	
	FEEDBACKUI_FUN1 = "Nada divertida"
	FEEDBACKUI_FUN2 = "No muy divertida"
	FEEDBACKUI_FUN3 = "Bastante divertida"
	FEEDBACKUI_FUN4 = "Muy divertida"
	
	FEEDBACKUISURVEYFRMINPUTBOX_TEXT = "<Escribe cualquier otro comentario aqu�.>"
	FEEDBACKUI_SURVEYINPUTHEADER = "A�ade m�s comentarios"
	FEEDBACKUIRESUBMIT_TEXT = "Reenviar"
	
	FEEDBACKUI_WELCOMETABLEBUGHEADER = "Se�alar un error"
	FEEDBACKUI_WELCOMETABLEBUGSUBTEXT = "Se�alar errores ayuda a arreglar los problemas del juego"
	FEEDBACKUI_WELCOMETABLESUGGESTHEADER = "Hacer una sugerencia"
	FEEDBACKUI_WELCOMETABLESUGGESTSUBTEXT = "Las sugerencias nos ayudan a mejorar el dise�o del juego"
	FEEDBACKUI_BUGINPUTHEADER = "�C�mo podemos reproducir este error?"
	FEEDBACKUI_SUGGESTINPUTHEADER = "Describe tu sugerencia."
	
	FEEDBACKUI_SURVEYNEWBIETEXT = "Chasque aqu� para completar una encuesta sobre una mazmorra o b�squeda que han terminado recientemente."
	FEEDBACKUI_POIMASK = ".-%s%-%s(.+)"
	
	
	FEEDBACKUI_LEVELPREFIX = "Nivel"
	FEEDBACKUI_HILLSBRAD = "Reinos del Este - Laderas de Trabalomas";
	FEEDBACKUISURVEYTYPE_AREA = "�rea"
	FEEDBACKUISURVEYTYPE_ITEM = "Objeto"
	FEEDBACKUISURVEYTYPE_MOB = "Enemigo"
	FEEDBACKUI_AREAHEADERTEXT = "�reas"
	FEEDBACKUI_QUESTHEADERTEXT = "Misiones"
	FEEDBACKUI_ITEMHEADERTEXT = "Objetos"
	FEEDBACKUI_MOBHEADERTEXT = "Enemigos"
	FEEDBACKUI_SURVEYTOOLTIPAREAHEADER = "Nombre del �rea:"
	FEEDBACKUI_AREASDIFFICULTYTABLEHEADER = "Dificultad"
	FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT = "�Qu� dificultad han tenido los encuentros del �rea?"
	FEEDBACKUI_AREASREWARDTABLEHEADER = "Recompensa"
	FEEDBACKUI_AREASREWARDTABLESUBTEXT = "�C�mo valorar�as las recompensas de esta �rea?"
	FEEDBACKUI_AREASFUNTABLEHEADER = "Diversi�n"
	FEEDBACKUI_AREASFUNTABLESUBTEXT = "�Cu�nto te has divertido en el �rea?"
	FEEDBACKUI_SURVEYINPUTSUBTEXT = "Haz clic aqu� para ver algunas opiniones"
	FEEDBACKUI_SURVEYNEWBIETEXT = "Haz clic aqu� para rellenar una encuesta sobre esta experiencia."
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "Selecciona una encuesta"
	
	FEEDBACKUI_SPECIFICWELCOME = "Gracias por tu opini�n acerca de ArcEmu. Has elegido opinar sobre:\n\n\n\n\nElige una de las siguientes opciones para continuar:";
	FEEDBACKUI_GENERALWELCOME = "Gracias por tu opini�n acerca de ArcEmu. Cada comentario que recibimos desempe�a un papel muy importante a la hora de determinar la calidad del juego.\n\nElige una de estas opciones para continuar:";
	
	FEEDBACKUI_STARTBUG = "Informar de un error"
	FEEDBACKUI_STARTSURVEY = "Comenzar encuesta"
	FEEDBACKUI_STARTSUGGESTION = "Hacer una sugerencia"
	
	FEEDBACKUI_WELCOMEBUGHEADER = "Error"
	FEEDBACKUI_WELCOMESUGGESTHEADER = "Sugerencia"
	FEEDBACKUI_WELCOMESURVEYHEADER = "Encuesta"
	
	FEEDBACKUI_WELCOMEBUGTEXT = "Un error nos informa acerca de un fallo que has encontrado en el juego." 
	FEEDBACKUI_WELCOMESUGGESTTEXT = "Una sugerencia nos informa de qu� te gustar�a que mejor�ramos en el juego."
	FEEDBACKUI_WELCOMESURVEYTEXT = "La encuesta permite que nos des tu opini�n acerca de una parte espec�fica del juego."
	FEEDBACKUI_WELCOMESURVEYDISABLED = "En este momento no existe ninguna encuesta disponible sobre este tema."
	
	FEEDBACKUI_MODIFIERKEY = "Atar:"
	FEEDBACKUI_MOUSE1 = "clic izquierdo"
	FEEDBACKUI_MOUSE2 = "clic derecha"
	
	FEEDBACKUI_LALT = "LAlt"
	FEEDBACKUI_RALT = "RAlt"
	FEEDBACKUI_LCTRL = "LCtrl"
	FEEDBACKUI_RCTRL = "RCtrl"
	FEEDBACKUI_LSHIFT = "LShift"
	FEEDBACKUI_RSHIFT = "RShift"
	
	FEEDBACKUI_TOOLTIP_MESSAGE = "<%s %s para opinar>";
	FEEDBACKUI_MAP_MESSAGE = "%s %s en el mapa para opinar";
	FEEDBACKUI_ITEMTARGETS = { "Armadura", "Consumible", "Contenedor", "Proyectil", "Carcaj", "Arma", "Receta", "Gema" };
	FEEDBACKUI_MISCTYPE = "Miscel�nea";
	FEEDBACKUISHOWCUES_TEXT = "Mostrar consejos";
	
	FEEDBACKUI_CATEGORYLABEL = "Tipo:"
	FEEDBACKUI_STATUSLABEL = "Estado:"
	
	NEWBIE_TOOLTIP_BUG="Ay�danos a mejorar ArcEmu envi�ndonos informes de error o sugerencias, o bien, contestando a nuestras encuestas.\n\n" .. FEEDBACKUI_BLUE .. "Clic izquierdo para comenzar.\nClic derecho para mostrar las opciones.";
	FEEDBACKUILBLAPPEARANCE_TEXT = "Apariencia:"
	FEEDBACKUILBLUTILITY_TEXT = "Utilidad:"
	
	FEEDBACKUI_MOBSDIFFICULTYTABLEHEADER = "Dificultad"                   
	FEEDBACKUI_MOBSDIFFICULTYTABLESUBTEXT = "�C�mo de dif�cil de matar es este enemigo?"
	FEEDBACKUI_MOBSREWARDTABLEHEADER = "Recompensa"
	FEEDBACKUI_MOBSREWARDTABLESUBTEXT = "�C�mo valoras las recompensas del enemigo?"
	FEEDBACKUI_MOBSFUNTABLEHEADER = "Diversi�n"
	FEEDBACKUI_MOBSFUNTABLESUBTEXT = "�C�mo de divertidos son los enfrentamientos con este enemigo?"
	FEEDBACKUI_MOBSAPPEARANCETABLEHEADER = "Apariencia"
	FEEDBACKUI_MOBSAPPEARANCETABLESUBTEXT = "�C�mo valoras la apariencia de este enemigo?"
	
	FEEDBACKUI_ITEMSDIFFICULTYTABLEHEADER = "Dificultad"
	FEEDBACKUI_ITEMSDIFFICULTYTABLESUBTEXT = "�C�mo de dif�cil es adquirir este objeto?"
	FEEDBACKUI_ITEMSUTILITYHEADER = "Utilidad"
	FEEDBACKUI_ITEMSUTILITYSUBTEXT = "�C�mo de �til es este objeto?"
	FEEDBACKUI_ITEMSAPPEARANCETABLEHEADER = "Apariencia"
	FEEDBACKUI_ITEMSAPPEARANCETABLESUBTEXT = "�C�mo valoras la apariencia de este objeto?"
	
	FEEDBACKUI_STRUTILITY1 = "Totalmente in�til"
	FEEDBACKUI_STRUTILITY2 = "Bastante in�til"
	FEEDBACKUI_STRUTILITY3 = "�til"
	FEEDBACKUI_STRUTILITY4 = "Muy �til"
	
	FEEDBACKUI_UTILITY1 = "Totalmente in�til"
	FEEDBACKUI_UTILITY2 = "Bastante in�til"
	FEEDBACKUI_UTILITY3 = "�til"
	FEEDBACKUI_UTILITY4 = "Muy �til"
	
	FEEDBACKUI_STRAPPEARANCE1 = "Inferior"
	FEEDBACKUI_STRAPPEARANCE2 = "Nada de otro mundo"
	FEEDBACKUI_STRAPPEARANCE3 = "Est� bien"
	FEEDBACKUI_STRAPPEARANCE4 = "Impresionante"
	
	FEEDBACKUI_APPEARANCE1 = "Inferior"
	FEEDBACKUI_APPEARANCE2 = "Nada de otro mundo"
	FEEDBACKUI_APPEARANCE3 = "Est� bien"
	FEEDBACKUI_APPEARANCE4 = "Impresionante"
	
	FEEDBACKUI_POIUNDERCITY = "Entra�as";
	FEEDBACKUI_POISILVERMOON = "Ciudad de Lunargenta";
	FEEDBACKUI_POIIRONFORGE = "Forjaz";
	FEEDBACKUI_POISTORMWIND = "Ciudad de Ventormenta";
	FEEDBACKUI_POISEPULCHER = "El Sepulcro";
	FEEDBACKUI_POITARRENMILL = "Molino Tarren";
	FEEDBACKUI_POISOUTHSHORE = "Costasur";
	FEEDBACKUI_POIAERIEPEAK = "Pico Nidal";
	FEEDBACKUI_POIREVANTUSK = "Poblado Sa�adiente";
	FEEDBACKUI_POIHAMMERFALL = "Sentencia";
	FEEDBACKUI_POIMENETHIL = "Puerto de Menethil";
	FEEDBACKUI_POITHELSAMAR = "Thelsamar";
	FEEDBACKUI_POIKARGATH = "Kargath";
	FEEDBACKUI_POILAKESHIRE = "Villa del Lago";
	FEEDBACKUI_POISENTINELHILL = "Colina del Centinela";
	FEEDBACKUI_POIDARKSHIRE = "Villa Oscura";
	FEEDBACKUI_POISTONARD = "Rocal";
	FEEDBACKUI_POIGROMGOL = "Campamento Grom'gol";
	FEEDBACKUI_POIBOOTY = "Bah�a del Bot�n";
	
	FEEDBACKUI_POIDARNASSUS = "Darnassus";
	FEEDBACKUI_POIEXODAR = "El Exodar";
	FEEDBACKUI_POIORGRIMMAR = "Orgrimmar";
	FEEDBACKUI_POITHUNDERB = "Cima del Trueno";
	FEEDBACKUI_POIAUBERDINE = "Auberdine";
	FEEDBACKUI_POIEVERLOOK = "Vista Eterna";
	FEEDBACKUI_POISTONETALON = "Cima del Espol�n";
	FEEDBACKUI_POIASTRANAAR = "Astranaar";
	FEEDBACKUI_POISPLINTERTREE = "Puesto del Hachazo";
	FEEDBACKUI_POISUNROCK = "Refugio Roca del Sol";
	FEEDBACKUI_POINIJELS = "Punta de Nijel";
	FEEDBACKUI_POISHADOWPREY = "Aldea Cazasombras";
	FEEDBACKUI_POIFEATHERMOON = "Basti�n Plumaluna";
	FEEDBACKUI_POIMOJACHE = "Campamento Mojache";
	FEEDBACKUI_POITHALANAAR = "Thalanaar";
	FEEDBACKUI_POICENARIONHOLD = "Fuerte Cenarion";
	FEEDBACKUI_POIGADGET = "Gadgetzan";
	FEEDBACKUI_POIFREEWIND = "Poblado Viento Libre";
	FEEDBACKUI_POITAURAJO = "Campamento Taurajo";
	FEEDBACKUI_POICROSSROADS = "El Cruce";
	FEEDBACKUI_POIRATCHET = "Trinquete";
	FEEDBACKUI_POITHERAMORE = "Isla Theramore";
	
	FEEDBACKUI_SURVEYTOOLTIPMOBHEADER = "Nombre del enemigo:"
	FEEDBACKUI_SURVEYTOOLTIPMOBZONEHEADER = "Encontrado en:"
	
	FEEDBACKUI_VOICECHAT = "Chat de voz";
	FEEDBACKUI_VOICECHATTOOLTIP = FEEDBACKUI_WHITE .. FEEDBACKUI_VOICECHAT;
	FEEDBACKUI_STRVOICECHAT = "Es una problema de la chat de voz.";
	FEEDBACKUI_HEADSETTYPE = "�Qu� tipo de aud�fonos est�s usando?";
	
	FEEDBACKUI_USBHEADSET = "Auriculares USB"; --localize me
	FEEDBACKUI_ANALOGHEADSET = "Auriculares anal�gicos"; --localize me
	FEEDBACKUI_HARDWIREDMIC = "Micr�fono incorporado"; --localize me
	
	FEEDBACKUI_STRUSBHEADSET = "Estoy usando aud�fonos USB.";
	FEEDBACKUI_STRANALOGHEADSET = "Estoy usando aud�fonos an�logos.";
	FEEDBACKUI_STRHARDWIREDMIC = "Estoy usando un micr�fono incorporado."; --localize me
	
	
else
	--English strings for FEEDBACKUI.
	--[[
	function enUS ()
	end
	]]--
	--Non-instance special zone names
	FEEDBACKUI_EXCEPTIONZONES = { "Deeprun Tram", "The Veiled Sea", "The Great Sea", "Alterac Valley", "Arathi Basin", "Warsong Gulch", "Champions' Hall", "Blackrock Mountain", "The Forbidding Sea", "Hall of Legends", "Twisting Nether", "Utgarde Keep", }
	
	--Headers    
	FEEDBACKUIINFOPANELLABEL_TEXT = "Your Information"
	FEEDBACKUI_BUGINPUTHEADER = "How can we reproduce this bug?"
	FEEDBACKUI_SUGGESTINPUTHEADER="Please describe your suggestion."
	
	--Labels
	FEEDBACKUIFEEDBACKFRMTITLE_TEXT = "Feedback Submission"
	FEEDBACKUILBLFRMVER_TEXT = "Version: "
	FEEDBACKUILBLFRMREALM_TEXT = "Realm: "
	FEEDBACKUILBLFRMNAME_TEXT = "Name: "
	FEEDBACKUILBLFRMCHAR_TEXT = "Character: "
	FEEDBACKUILBLFRMMAP_TEXT = "Map: "
	FEEDBACKUILBLFRMZONE_TEXT = "Zone: "
	FEEDBACKUILBLFRMAREA_TEXT = "Area: "
	FEEDBACKUILBLFRMADDONS_TEXT = "Addons: "
	FEEDBACKUILBLADDONSWRAP_TEXT = "Currently loaded addons:" .. "\n"
	FEEDBACKUITYPEBUG_TEXT = "Bug"
	FEEDBACKUITYPESUGGEST_TEXT = "Suggestion"
	FEEDBACKUITYPESURVEY_TEXT = "Surveys"
	FEEDBACKUILBLFRMWHO_TEXT = "Who: "
	FEEDBACKUILBLFRMWHERE_TEXT = "Where: "
	FEEDBACKUILBLFRMWHEN_TEXT = "When: "
	FEEDBACKUILBLFRMTYPE_TEXT = "Type: "
	FEEDBACKUI_GENDERTABLE = { "Unknown", "Male", "Female" }
	
	--Prompts
	FEEDBACKUISURVEYFRMINPUTBOX_TEXT = "<Type any other feedback you have here>"
	FEEDBACKUIBUGFRMINPUTBOX_TEXT = "<Type the steps to reproduce your bug here>"
	FEEDBACKUISUGGESTFRMINPUTBOX_TEXT = "<Type your suggestion here>"
	FEEDBACKUILBLADDONS_MOUSEOVER = "<Mouse-over for loaded addons>"
	FEEDBACKUI_CONFIRMATION = [[Your feedback has been submitted.
Thank you for helping us to improve ArcEmu!]]
	
	--Tooltips & Buttons
	BUG_BUTTON="Submit Feedback"
	FEEDBACKUIBACK_TEXT = "Back a Step"
	FEEDBACKUIRESET_TEXT = "Reset Form"
	FEEDBACKUISUBMIT_TEXT = "Submit"
	FEEDBACKUISTART_TEXT = "Start"
	
	--Tables and strings for navigation.
	FEEDBACKUI_WELCOMETABLEBUGHEADER = "Report a bug"
	FEEDBACKUI_WELCOMETABLEBUGSUBTEXT = "Bug submissions help fix game errors."
	FEEDBACKUI_WELCOMETABLESUGGESTHEADER = "Make a suggestion"
	FEEDBACKUI_WELCOMETABLESUGGESTSUBTEXT = "Suggestions help us improve game design."
	FEEDBACKUI_WELCOMETABLESUBTEXT = "Thanks for your feedback!"
	
	
	FEEDBACKUI_WELCOME = "\nThank you for offering feedback on ArcEmu. Each and every submission we receive plays an important role in determining the quality of ArcEmu.\n\nPlease fill out this short questionnaire so that we may efficiently process the huge amount of feedback we receive.\n\nThank You,\nThe ArcEmu Team";
	-- FEEDBACKUI_SPECIFICBUG = "Report a bug that affects " .. NORMAL_FONT_COLOR_CODE .. "%s" .. HIGHLIGHT_FONT_COLOR_CODE .. "."
	-- FEEDBACKUI_SPECIFICSUGGESTION = "Make a suggestion regarding " .. NORMAL_FONT_COLOR_CODE .. "%s" .. HIGHLIGHT_FONT_COLOR_CODE .. "."
	-- FEEDBACKUI_SPECIFICSURVEY = "Take a survey about " .. NORMAL_FONT_COLOR_CODE .. "%s" .. HIGHLIGHT_FONT_COLOR_CODE .. "."
	
	FEEDBACKUI_WHOTABLEHEADER = FEEDBACKUI_WHITE .. "Who" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHOTABLESUBTEXT = "What does this issue affect?"
	
	FEEDBACKUI_STRWHOPLAYER = "This affects my character."
	FEEDBACKUI_STRPARTYMEMBER = "This affects players from my party."
	FEEDBACKUI_STRRAIDMEMBER = "This affects players from my raid."
	FEEDBACKUI_STRENEMYPLAYER = "This affects an enemy player."
	FEEDBACKUI_STRFRIENDLYPLAYER = "This affects a friendly player."
	FEEDBACKUI_STRENEMYCREATURE = "This affects an enemy creature."
	FEEDBACKUI_STRFRIENDLYCREATURE = "This affects a friendly creature."
	FEEDBACKUI_STRWHONA = "This does not involve players or creatures."
	
	FEEDBACKUI_WHOPLAYER = "My Character"
	FEEDBACKUI_ENEMYPLAYER = "Enemy Player"
	FEEDBACKUI_FRIENDLYPLAYER = "Friendly Player"
	FEEDBACKUI_PARTYMEMBER = "Party Member"
	FEEDBACKUI_RAIDMEMBER = "Raid Member"
	FEEDBACKUI_ENEMYCREATURE = "Enemy Creature"
	FEEDBACKUI_FRIENDLYCREATURE = "Friendly Creature"
	FEEDBACKUI_WHONA = "N/A"
	
	FEEDBACKUI_WHERETABLEHEADER = FEEDBACKUI_WHITE .. "Where" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHERETABLESUBTEXT = "Where does this issue occur?"
	
	FEEDBACKUI_STRAREATABLE = "This occurs in-game."
	FEEDBACKUI_STRWHEREINSTALL = "This occurs during installation."
	FEEDBACKUI_STRWHEREDOWNLOAD = "This occurs while downloading."
	FEEDBACKUI_STRWHEREPATCH = "This occurs while patching."
	
	FEEDBACKUI_WHEREINSTALL = "While Installing"
	FEEDBACKUI_WHEREDOWNLOAD = "While Downloading"
	FEEDBACKUI_WHEREPATCH = "While Patching"
	
	FEEDBACKUI_AREATABLESUMMARY = FEEDBACKUI_GREEN .. "Somewhere in-game"
	
	
	-------------------------- Begin Area Strings ------------------------------------------------------------------
	FEEDBACKUI_STROCCURS = "- This occurs in "; --localize me
	FEEDBACKUI_EVERYWHERE = "Everywhere in-game"
	FEEDBACKUI_STREVERYWHERE = "- This occurs everywhere in-game."
	
	--AZEROTH 
	FEEDBACKUI_AZEROTH = "Azeroth"
	
	--Northrend
	FEEDBACKUI_NORTHREND = "Northrend"
	FEEDBACKUI_BOREANTUNDRA = "Borean Tundra"
	FEEDBACKUI_CRYSTALSONG = "Crystalsong Forest" --localize me-
	FEEDBACKUI_DALARAN = "Dalaran" --localize me-
	FEEDBACKUI_DRAGONBLIGHT = "Dragonblight"
	FEEDBACKUI_GRIZZLYHILLS = "Grizzly Hills"
	FEEDBACKUI_HOWLINGFJORD = "Howling Fjord"
	FEEDBACKUI_ICECROWN = "Icecrown" --localize me-
	FEEDBACKUI_NEXUS = "The Nexus"
	FEEDBACKUI_SHOLAZARBASIN = "Sholazar Basin" ---localize me-
	FEEDBACKUI_STORMPEAKS = "The Storm Peaks" --localize me-
	FEEDBACKUI_UTGARDEPINNACLE = "Utgarde Pinnacle"
	FEEDBACKUI_WINTERGRASP = "Wintergrasp" --localize me-
	FEEDBACKUI_ZULDRAK = "Zul'Drak" --localize me-
	FEEDBACKUI_STRNORTHREND = FEEDBACKUI_STROCCURS .. FEEDBACKUI_NORTHREND
	--End Northrend-----------------------------------
	
	--Eastern Kingdoms
	FEEDBACKUI_EKINGDOMS = "Eastern Kingdoms"
	FEEDBACKUI_ALTERACMOUNTAINS = "Alterac Mountains";
	FEEDBACKUI_ALTERACVALLEY = "Alterac Valley";
	FEEDBACKUI_ARATHIBASIN = "Arathi Basin";
	FEEDBACKUI_ARATHIHIGHLANDS = "Arathi Highlands";
	FEEDBACKUI_BADLANDS = "Badlands";
	FEEDBACKUI_BLACKROCKMOUNTAIN = "Blackrock Mountain";
	FEEDBACKUI_BLASTEDLANDS = "Blasted Lands";
	FEEDBACKUI_BURNINGSTEPPES = "Burning Steppes";
	FEEDBACKUI_DEADWINDPASS = "Deadwind Pass";
	FEEDBACKUI_DUNMOROGH = "Dun Morogh";
	FEEDBACKUI_DUSKWOOD = "Duskwood";
	FEEDBACKUI_EPLAGUELANDS = "Eastern Plaguelands";
	FEEDBACKUI_ELWYNN = "Elwynn Forest";
	FEEDBACKUI_EVERSONG = "Eversong Woods";
	FEEDBACKUI_GHOSTLANDS = "Ghostlands";
	FEEDBACKUI_HILLSBRAD = "Hillsbrad Foothills";
	FEEDBACKUI_HINTERLANDS = "The Hinterlands";
	FEEDBACKUI_IRONFORGE = "Ironforge";
	FEEDBACKUI_ISLEOFQUELDANAS = "Isle of Quel'Danas"
	FEEDBACKUI_LOCHMODAN = "Loch Modan";
	FEEDBACKUI_REDRIDGE = "Redridge Mountains";
	FEEDBACKUI_SEARINGGORGE = "Searing Gorge";
	FEEDBACKUI_SILVERMOON = "Silvermoon City";
	FEEDBACKUI_SILVERPINE = "Silverpine Forest";
	FEEDBACKUI_STORMWIND = "Stormwind";
	FEEDBACKUI_STRANGLETHORN = "Stranglethorn Vale";
	FEEDBACKUI_SWAMPOFSORROWS = "Swamp of Sorrows";
	FEEDBACKUI_TIRISFAL = "Tirisfal Glades";
	FEEDBACKUI_UNDERCITY = "Undercity";
	FEEDBACKUI_WPLAGUELANDS = "Western Plaguelands";
	FEEDBACKUI_WESTFALL = "Westfall";
	FEEDBACKUI_WETLANDS = "Wetlands";
	FEEDBACKUI_STREKINGDOMS = FEEDBACKUI_STROCCURS .. FEEDBACKUI_EKINGDOMS;
	--End Eastern Kingdoms-------------------------------------------------------------------------------------------------------
	
	--Kalimdor
	FEEDBACKUI_KALIMDOR = "Kalimdor"
	FEEDBACKUI_ASHENVALE = "Ashenvale";
	FEEDBACKUI_AZSHARA = "Azshara";
	FEEDBACKUI_AZUREMYST = "Azuremyst Isle";
	FEEDBACKUI_BARRENS = "The Barrens";
	FEEDBACKUI_BLOODMYST = "Bloodmyst Isle";
	FEEDBACKUI_DARKSHORE = "Darkshore";
	FEEDBACKUI_DARNASSUS = "Darnassus";
	FEEDBACKUI_DESOLACE = "Desolace";
	FEEDBACKUI_DUROTAR = "Durotar";
	FEEDBACKUI_DUSTWALLOW = "Dustwallow Marsh";
	FEEDBACKUI_EXODAR = "The Exodar";
	FEEDBACKUI_FELWOOD = "Felwood";
	FEEDBACKUI_FERALAS = "Feralas";
	FEEDBACKUI_MOONGLADE = "Moonglade";
	FEEDBACKUI_MULGORE = "Mulgore";
	FEEDBACKUI_ORGRIMMAR = "Orgrimmar";
	FEEDBACKUI_SILITHUS = "Silithus";
	FEEDBACKUI_STONETALON = "Stonetalon Mountains";
	FEEDBACKUI_TANARIS = "Tanaris";
	FEEDBACKUI_TELDRASSIL = "Teldrassil";
	FEEDBACKUI_THUNDERBLUFF = "Thunder Bluff";
	FEEDBACKUI_THOUSANDNEEDLES = "Thousand Needles";
	FEEDBACKUI_UNGORO = "Un'Goro Crater";
	FEEDBACKUI_WARSONG = "Warsong Gulch";
	FEEDBACKUI_WINTERSPRING = "Winterspring";
	FEEDBACKUI_STRKALIMDOR = FEEDBACKUI_STROCCURS .. FEEDBACKUI_KALIMDOR;
	--End Kalimdor ----------------------------------------------------------------------------------------------------------------------
	
	--OUTLAND
	FEEDBACKUI_OUTLANDS = "Outland"
	FEEDBACKUI_BLADESEDGE = "Blade's Edge Mountains"
	FEEDBACKUI_HELLFIRE = "Hellfire Peninsula"
	FEEDBACKUI_NAGRAND = "Nagrand"
	FEEDBACKUI_NETHERSTORM = "Netherstorm"
	FEEDBACKUI_SHADOWMOON = "Shadowmoon Valley"
	FEEDBACKUI_SHATTRATH = "Shattrath City"
	FEEDBACKUI_TERROKAR = "Terokkar Forest"
	FEEDBACKUI_TWISTINGNETHER = "Twisting Nether"
	FEEDBACKUI_ZANGARMARSH = "Zangarmarsh"
	FEEDBACKUI_STROUTLANDS = FEEDBACKUI_STROCCURS .. FEEDBACKUI_OUTLANDS;
	--End Outlands--------------------------------------------
	
	--Alert Targets/Extra areas
	FEEDBACKUI_BLACKTEMPLE = "Black Temple";
	FEEDBACKUI_ZULAMAN = "Zul'Aman";
	FEEDBACKUI_SUNWELLPLATEAU = "Sunwell Plateau"
	FEEDBACKUI_MAGISTERSTERRACE = "Magisters' Terrace"
	FEEDBACKUI_UTGARDEKEEP = "Utgarde Keep"
	FEEDBACKUI_DRAKTHARONKEEP = "Drak'Tharon Keep"
	FEEDBACKUI_ULDUAR = "Ulduar"
	FEEDBACKUI_HOL = "Halls of Lightning"
	FEEDBACKUI_KAJA = "Kaja'mine"
	FEEDBACKUI_TAC = "The Argent Coliseum"
	FEEDBACKUI_IOC = "Isle of Conquest"
	--End Alert Targets/Extra areas
	--End Area Strings-------------------------------------------------------------------------------------------------------------------------------------
	
	FEEDBACKUI_WHENTABLEHEADER = FEEDBACKUI_WHITE .. "When" .. FEEDBACKUI_WHITE
	FEEDBACKUI_WHENTABLESUBTEXT = "How often does this occur?"
	
	FEEDBACKUI_STRREPRODUCABLE = "This occurs all the time."
	FEEDBACKUI_STRSOMETIMES = "This occurs occasionally."
	FEEDBACKUI_STRRARELY = "This occurs rarely."
	FEEDBACKUI_STRONETIME = "This only happened once."
	
	FEEDBACKUI_REPRODUCABLE = "Always"
	FEEDBACKUI_SOMETIMES = "Occasionally"
	FEEDBACKUI_RARELY = "Rarely"
	FEEDBACKUI_ONETIME = "Once"
	
	FEEDBACKUI_TYPETABLEHEADER = FEEDBACKUI_WHITE .. "Type" .. FEEDBACKUI_WHITE
	FEEDBACKUI_TYPETABLESUBTEXT = "What type of issue is this?"
	
	FEEDBACKUI_STRUIOTHER = "This is a user-interface issue."
	FEEDBACKUI_STRUIITEMS = "- This is an item UI issue."
	FEEDBACKUI_STRUISPAWNS = "- This is a creature UI issue."
	FEEDBACKUI_STRUIQUESTS = "- This is a quest UI issue."
	FEEDBACKUI_STRUISPELLS = "- This is a spell or talent UI issue."
	FEEDBACKUI_STRUITRADESKILLS = "- This is a tradeskill UI issue."
	
	FEEDBACKUI_STRGRAPHICOTHER = "This is a graphical issue."
	FEEDBACKUI_STRGRAPHICITEMS = "- This is an item graphics issue."
	FEEDBACKUI_STRGRAPHICSPAWNS = "- This is a creature graphics issue."
	FEEDBACKUI_STRGRAPHICSPELLS = "- This is a spell or talent graphics issue."
	FEEDBACKUI_STRGRAPHICENVIRONMENT = "- This issue affects environmental graphics."
	
	FEEDBACKUI_STRFUNCOTHER = "This issue affects game functionality."
	FEEDBACKUI_STRFUNCITEMS = "- This affects item functionality."
	FEEDBACKUI_STRFUNCSPAWNS = "- This affects creature functionality."
	FEEDBACKUI_STRFUNCQUESTS = "- This affects quest functionality."
	FEEDBACKUI_STRFUNCSPELLS = "- This affects spell or talent functionality."
	FEEDBACKUI_STRFUNCTRADESKILLS = "- This affects tradeskill functionality."
	
	FEEDBACKUI_STRCRASHOTHER = "This is a stability issue."
	FEEDBACKUI_STRCRASHBUG = "- This causes WoW to crash."
	FEEDBACKUI_STRCRASHSOFTLOCK = "- This causes WoW to stop responding."
	FEEDBACKUI_STRCRASHHARDLOCK = "- This causes my computer to stop responding."
	FEEDBACKUI_STRCRASHWOWLAG = "- This issue is lag-related."
	
	FEEDBACKUI_UIITEMS = "Item UI Issue"
	FEEDBACKUI_UISPAWNS = "Creature UI Issue"
	FEEDBACKUI_UIQUESTS = "Quest UI Issue"
	FEEDBACKUI_UISPELLS = "Spell or Talent UI Issue"
	FEEDBACKUI_UITRADESKILLS = "Tradeskill UI Issue"
	FEEDBACKUI_UIOTHER = "General UI Issue"
	
	FEEDBACKUI_GRAPHICITEMS = "Item Graphics Issue"
	FEEDBACKUI_GRAPHICSPAWNS = "Creature Graphics Issue"
	FEEDBACKUI_GRAPHICSPELLS = "Spell or Talent Graphics Issue"
	FEEDBACKUI_GRAPHICENVIRONMENT = "Environmental Graphics Issue"
	FEEDBACKUI_GRAPHICOTHER = "General Graphics Issue"
	
	FEEDBACKUI_FUNCITEMS = "Item Functionality Issue"
	FEEDBACKUI_FUNCSPAWNS = "Creature Functionality Issue"
	FEEDBACKUI_FUNCQUESTS = "Quest Functionality Issue"
	FEEDBACKUI_FUNCSPELLS = "Spell or Talent Functionality Issue"    
	FEEDBACKUI_FUNCTRADESKILLS = "Tradeskill Functionality Issue"
	FEEDBACKUI_FUNCOTHER = "General Functionality Issue"
	
	FEEDBACKUI_CRASHBUG = "Issue Crashes WoW"
	FEEDBACKUI_CRASHSOFTLOCK = "Issue Causes WoW to Freeze"
	FEEDBACKUI_CRASHHARDLOCK = "Issue Causes Computer to Freeze"
	FEEDBACKUI_CRASHWOWLAG = "Issue Causes WoW to Lag"
	FEEDBACKUI_CRASHOTHER = "General Stability Issue"
	
	FEEDBACKUILBLFRMCLARITY_TEXT = "Clarity:"
	FEEDBACKUILBLFRMDIFFICULTY_TEXT = "Difficulty:"
	FEEDBACKUILBLFRMREWARD_TEXT = "Reward:"
	FEEDBACKUILBLFRMFUN_TEXT = "Fun:"
	FEEDBACKUILBLPOWER_TEXT = "Power:"
	FEEDBACKUILBLFREQUENCY_TEXT = "Frequency:"
	FEEDBACKUILBLAPPROPRIATE_TEXT = "Appropriate:"
	FEEDBACKUISURVEYTYPE_QUEST = "Quest"
	FEEDBACKUISURVEYTYPE_AREA = "Area"
	FEEDBACKUISURVEYTYPE_ITEM = "Item"
	FEEDBACKUISURVEYTYPE_MOB = "Mob"
	
	FEEDBACKUISKIP_TEXT = "Skip Survey"
	FEEDBACKUILBLSURVEYALERTSCHECK_TEXT = "Show Alerts"
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "Please choose a survey."
	FEEDBACKUI_WELCOMETABLESURVEYSUBTEXT = "Surveys are added as you experience new content."
	
	FEEDBACKUI_SURVEYCOLUMNNAME = "Name"
	FEEDBACKUI_SURVEYCOLUMNMODIFIED = "Experienced"
	
	FEEDBACKUI_ALLHEADERTEXT = "All"
	FEEDBACKUI_AREAHEADERTEXT = "Areas"
	FEEDBACKUI_QUESTHEADERTEXT = "Quests"
	FEEDBACKUI_ITEMHEADERTEXT = "Items"
	FEEDBACKUI_MOBHEADERTEXT = "Mobs"
	FEEDBACKUI_SPELLHEADERTEXT = "Spells"
	
	FEEDBACKUI_STATUSALLTEXT = "All"
	FEEDBACKUI_STATUSAVAILABLETEXT = "Available"
	FEEDBACKUI_STATUSSKIPPEDTEXT = "Skipped"
	FEEDBACKUI_STATUSCOMPLETEDTEXT = "Completed"
	
	FEEDBACKUI_SURVEYTOOLTIPQUESTHEADER = "Quest name:"
	FEEDBACKUI_SURVEYTOOLTIPAREAHEADER = "Area name:"
	FEEDBACKUI_SURVEYTOOLTIPEXPERIENCEDHEADER = "Experienced:"
	FEEDBACKUI_SURVEYTOOLTIPQUESTOBJECTIVESHEADER = "Quest objectives:"
	
	FEEDBACKUI_NEW = "New"
	FEEDBACKUI_HOURAGO = " hour ago"
	FEEDBACKUI_HOURSAGO = " hours ago"
	FEEDBACKUI_DAYAGO = " day ago"
	FEEDBACKUI_DAYSAGO = " days ago"
	FEEDBACKUI_MONTHAGO = " month ago"
	FEEDBACKUI_MONTHSAGO = " months ago"
	FEEDBACKUI_YEARAGO = " year ago"
	FEEDBACKUI_YEARSAGO = " years ago"
	
	FEEDBACKUI_QUESTSCLARITYTABLEHEADER = "Clarity"
	FEEDBACKUI_QUESTSCLARITYTABLESUBTEXT = "How clear were the Quest's objectives?"
	
	FEEDBACKUI_STRCLARITY1 = "Extremely vague"
	FEEDBACKUI_STRCLARITY2 = "Somewhat vague"
	FEEDBACKUI_STRCLARITY3 = "Fairly clear"
	FEEDBACKUI_STRCLARITY4 = "Perfectly clear"
	
	FEEDBACKUI_CLARITY1 = "Extremely vague"
	FEEDBACKUI_CLARITY2 = "Somewhat vague"
	FEEDBACKUI_CLARITY3 = "Fairly clear"
	FEEDBACKUI_CLARITY4 = "Perfectly clear"
	
	FEEDBACKUI_QUESTSDIFFICULTYTABLEHEADER = "Difficulty"
	FEEDBACKUI_QUESTSDIFFICULTYTABLESUBTEXT = "How difficult was the Quest?"
	FEEDBACKUI_AREASDIFFICULTYTABLEHEADER = "Difficulty"
	FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT = "How difficult were the Area's encounters?"
	
	FEEDBACKUI_STRDIFFICULTY1 = "Easy"
	FEEDBACKUI_STRDIFFICULTY2 = "Manageable"
	FEEDBACKUI_STRDIFFICULTY3 = "Challenging"
	FEEDBACKUI_STRDIFFICULTY4 = "Hard"
	FEEDBACKUI_STRDIFFICULTY5 = "N/A"
	
	FEEDBACKUI_DIFFICULTY1 = "Easy"
	FEEDBACKUI_DIFFICULTY2 = "Manageable"
	FEEDBACKUI_DIFFICULTY3 = "Challenging"
	FEEDBACKUI_DIFFICULTY4 = "Hard"
	FEEDBACKUI_DIFFICULTY5 = "N/A"
	
	FEEDBACKUI_QUESTSREWARDTABLEHEADER = "Reward"
	FEEDBACKUI_QUESTSREWARDTABLESUBTEXT = "How would you rate the Quest's reward?"
	FEEDBACKUI_AREASREWARDTABLEHEADER = "Reward"
	FEEDBACKUI_AREASREWARDTABLESUBTEXT = "How would you rate the Area's rewards?"
	
	FEEDBACKUI_STRREWARD1 = "Awful"
	FEEDBACKUI_STRREWARD2 = "Bad"
	FEEDBACKUI_STRREWARD3 = "Good"
	FEEDBACKUI_STRREWARD4 = "Awesome"
	FEEDBACKUI_STRREWARD5 = "N/A"
	
	FEEDBACKUI_REWARD1 = "Awful"
	FEEDBACKUI_REWARD2 = "Bad"
	FEEDBACKUI_REWARD3 = "Good"
	FEEDBACKUI_REWARD4 = "Awesome"
	FEEDBACKUI_REWARD5 = "N/A"
	
	FEEDBACKUI_QUESTSFUNTABLEHEADER = "Fun"
	FEEDBACKUI_QUESTSFUNTABLESUBTEXT = "How fun was the Quest?"
	FEEDBACKUI_AREASFUNTABLEHEADER = "Fun"
	FEEDBACKUI_AREASFUNTABLESUBTEXT = "How fun was the Area?"
	
	FEEDBACKUI_STRFUN1 = "Not fun at all"
	FEEDBACKUI_STRFUN2 = "Not very fun"
	FEEDBACKUI_STRFUN3 = "Pretty fun"
	FEEDBACKUI_STRFUN4 = "A lot of fun"
	
	FEEDBACKUI_FUN1 = "Not fun at all"
	FEEDBACKUI_FUN2 = "Not very fun"
	FEEDBACKUI_FUN3 = "Pretty fun"
	FEEDBACKUI_FUN4 = "A lot of fun"
	
	FEEDBACKUISURVEYFRMINPUTBOX_TEXT = "<Type any other feedback you have here>"
	FEEDBACKUI_SURVEYINPUTHEADER = "Please add any additional feedback"
	FEEDBACKUI_SURVEYINPUTSUBTEXT = "Click here to see some feedback examples"
	FEEDBACKUIRESUBMIT_TEXT = "Resubmit"
	
	FEEDBACKUI_SURVEYNEWBIETEXT = "Click here to complete a survey about this experience."
	
	FEEDBACKUI_WELCOMETABLESURVEYHEADER = "Please select a survey"
	
	FEEDBACKUI_SPECIFICWELCOME = "Thank you for offering feedback on ArcEmu. You've chosen to give feedback on:\n\n\n\n\nPlease choose one of the following feedback options to continue:";
	FEEDBACKUI_GENERALWELCOME = "Thank you for offering feedback on ArcEmu. Each and every submission we receive plays an important role in determining the quality of ArcEmu.\n\nPlease choose one of the following feedback options to continue:";
	
	FEEDBACKUI_STARTBUG = "Report Bug"
	FEEDBACKUI_STARTSURVEY = "Start Survey"
	FEEDBACKUI_STARTSUGGESTION = "Make Suggestion"
	
	FEEDBACKUI_WELCOMEBUGHEADER = "Bug"
	FEEDBACKUI_WELCOMESUGGESTHEADER = "Suggestion"
	FEEDBACKUI_WELCOMESURVEYHEADER = "Survey"
	
	FEEDBACKUI_WELCOMEBUGTEXT = "A bug tells us about an error you have found in the game." 
	FEEDBACKUI_WELCOMESUGGESTTEXT = "A suggestion tells us how you would like to see the game improved."
	FEEDBACKUI_WELCOMESURVEYTEXT = "A survey allows you to give us feedback about a specific part of the game."
	FEEDBACKUI_WELCOMESURVEYDISABLED = "There are no surveys available for this object at this time."
	
	FEEDBACKUI_MODIFIERKEY = "Binding:"
	FEEDBACKUI_MOUSE1 = "Left Click"
	FEEDBACKUI_MOUSE2 = "Right Click"
	
	FEEDBACKUI_LALT = "LAlt"
	FEEDBACKUI_RALT = "RAlt"
	FEEDBACKUI_LCTRL = "LCtrl"
	FEEDBACKUI_RCTRL = "RCtrl"
	FEEDBACKUI_LSHIFT = "LShift"
	FEEDBACKUI_RSHIFT = "RShift"
	
	FEEDBACKUI_TOOLTIP_MESSAGE = "<%s+%s for Feedback>";
	FEEDBACKUI_MAP_MESSAGE = "%s+%s On Map For Feedback";
	FEEDBACKUI_ITEMTARGETS = { "Armor", "Consumable", "Container", "Projectile", "Quiver", "Weapon", "Recipe", "Gem" };
	FEEDBACKUI_MISCTYPE = "Miscellaneous";
	FEEDBACKUISHOWCUES_TEXT = "Show Tooltip Cues";
	
	FEEDBACKUI_CATEGORYLABEL = "Type:"
	FEEDBACKUI_STATUSLABEL = "Status:"
	FEEDBACKUI_MODIFIERKEY = "Binding:"
	
	NEWBIE_TOOLTIP_BUG="Help improve ArcEmu by submitting a bug or suggestion, or by taking a survey.\n\n" .. FEEDBACKUI_BLUE .. "Left Click to start\nRight Click for display options\nRight Click and drag to move";
	FEEDBACKUILBLAPPEARANCE_TEXT = "Appearance:"
	FEEDBACKUILBLUTILITY_TEXT = "Usefulness:"
	
	
	FEEDBACKUI_MOBSDIFFICULTYTABLEHEADER = "Difficulty"                   
	FEEDBACKUI_MOBSDIFFICULTYTABLESUBTEXT = "How difficult is this mob to defeat?"
	FEEDBACKUI_MOBSREWARDTABLEHEADER = "Reward"
	FEEDBACKUI_MOBSREWARDTABLESUBTEXT = "How would you rate the Mob's rewards?"
	FEEDBACKUI_MOBSFUNTABLEHEADER = "Fun"
	FEEDBACKUI_MOBSFUNTABLESUBTEXT = "How fun are encounters with this Mob?"
	FEEDBACKUI_MOBSAPPEARANCETABLEHEADER = "Appearance"
	FEEDBACKUI_MOBSAPPEARANCETABLESUBTEXT = "How would you rate this Mob's appearance?"
	
	FEEDBACKUI_ITEMSDIFFICULTYTABLEHEADER = "Difficulty"
	FEEDBACKUI_ITEMSDIFFICULTYTABLESUBTEXT = "How difficult is this Item to acquire?"
	FEEDBACKUI_ITEMSUTILITYHEADER = "Utility"
	FEEDBACKUI_ITEMSUTILITYSUBTEXT = "How useful is this Item in general?"
	FEEDBACKUI_ITEMSAPPEARANCETABLEHEADER = "Appearance"
	FEEDBACKUI_ITEMSAPPEARANCETABLESUBTEXT = "How would you rate the art for this Item?"
	
	FEEDBACKUI_SPELLSPOWERTABLEHEADER = "Power"
	FEEDBACKUI_SPELLSPOWERTABLESUBTEXT = "How powerful is this ability?"
	FEEDBACKUI_SPELLSFREQUENCYTABLEHEADER = "Frequency"
	FEEDBACKUI_SPELLSFREQUENCYTABLESUBTEXT = "How often are you likely to use this ability?"
	FEEDBACKUI_SPELLSAPPROPRIATETABLEHEADER = "Appropriateness"
	FEEDBACKUI_SPELLSAPPROPRIATETABLESUBTEXT = "How well does this fit with similar abilities?"
	FEEDBACKUI_SPELLSFUNTABLEHEADER = "Fun"
	FEEDBACKUI_SPELLSFUNTABLESUBTEXT = "How fun is this ability to use?"
	
	FEEDBACKUI_STRUTILITY1 = "Quite Useless"
	FEEDBACKUI_STRUTILITY2 = "Somewhat Useless"
	FEEDBACKUI_STRUTILITY3 = "Useful"
	FEEDBACKUI_STRUTILITY4 = "Quite Useful"
	
	FEEDBACKUI_UTILITY1 = "Quite Useless"
	FEEDBACKUI_UTILITY2 = "Somewhat Useless"
	FEEDBACKUI_UTILITY3 = "Useful"
	FEEDBACKUI_UTILITY4 = "Quite Useful"
	
	FEEDBACKUI_STRAPPEARANCE1 = "Ugly"
	FEEDBACKUI_STRAPPEARANCE2 = "Below Average"
	FEEDBACKUI_STRAPPEARANCE3 = "Above Average"
	FEEDBACKUI_STRAPPEARANCE4 = "Beautiful"
	
	FEEDBACKUI_APPEARANCE1 = "Ugly"
	FEEDBACKUI_APPEARANCE2 = "Below Average"
	FEEDBACKUI_APPEARANCE3 = "Above Average"
	FEEDBACKUI_APPEARANCE4 = "Beautiful"
	
	FEEDBACKUI_STRPOWER1 = "Very Weak";
	FEEDBACKUI_STRPOWER2 = "Weak";
	FEEDBACKUI_STRPOWER3 = "Powerful";
	FEEDBACKUI_STRPOWER4 = "Very Powerful";
	
	FEEDBACKUI_STRFREQUENCY1 = "Rarely";
	FEEDBACKUI_STRFREQUENCY2 = "Occasionally";
	FEEDBACKUI_STRFREQUENCY3 = "Frequently";
	FEEDBACKUI_STRFREQUENCY4 = "Whenever Possible";
	
	FEEDBACKUI_STRAPPROPRIATE1 = "Very Inappropriate";
	FEEDBACKUI_STRAPPROPRIATE2 = "Somewhat Inappropriate";
	FEEDBACKUI_STRAPPROPRIATE3 = "Good Fit";
	FEEDBACKUI_STRAPPROPRIATE4 = "Perfect Fit";
	
	FEEDBACKUI_POIUNDERCITY = "Undercity";
	FEEDBACKUI_POISILVERMOON = "Silvermoon City";
	FEEDBACKUI_POIIRONFORGE = "Ironforge";
	FEEDBACKUI_POISTORMWIND = "Stormwind City";
	FEEDBACKUI_POISEPULCHER = "The Sepulcher";
	FEEDBACKUI_POITARRENMILL = "Tarren Mill";
	FEEDBACKUI_POISOUTHSHORE = "Southshore";
	FEEDBACKUI_POIAERIEPEAK = "Aerie Peak";
	FEEDBACKUI_POIREVANTUSK = "Revantusk Village";
	FEEDBACKUI_POIHAMMERFALL = "Hammerfall";
	FEEDBACKUI_POIMENETHIL = "Menethil Harbor";
	FEEDBACKUI_POITHELSAMAR = "Thelsamar";
	FEEDBACKUI_POIKARGATH = "Kargath";
	FEEDBACKUI_POILAKESHIRE = "Lakeshire";
	FEEDBACKUI_POISENTINELHILL = "Sentinel Hill";
	FEEDBACKUI_POIDARKSHIRE = "Darkshire";
	FEEDBACKUI_POISTONARD = "Stonard";
	FEEDBACKUI_POIGROMGOL = "Grom'gol Base Camp";
	FEEDBACKUI_POIBOOTY = "Booty Bay"
	
	FEEDBACKUI_POIDARNASSUS = "Darnassus";
	FEEDBACKUI_POIEXODAR = "The Exodar";
	FEEDBACKUI_POIORGRIMMAR = "Orgrimmar";
	FEEDBACKUI_POITHUNDERB = "Thunder Bluff";
	FEEDBACKUI_POIAUBERDINE = "Auberdine";
	FEEDBACKUI_POIEVERLOOK = "Everlook";
	FEEDBACKUI_POISTONETALON = "Stonetalon Peak";
	FEEDBACKUI_POIASTRANAAR = "Astranaar";
	FEEDBACKUI_POISPLINTERTREE = "Splintertree Post";
	FEEDBACKUI_POISUNROCK = "Sun Rock Retreat";
	FEEDBACKUI_POINIJELS = "Nijel's Point";
	FEEDBACKUI_POISHADOWPREY = "Shadowprey Village";
	FEEDBACKUI_POIFEATHERMOON = "Feathermoon Stronghold";
	FEEDBACKUI_POIMOJACHE = "Camp Mojache";
	FEEDBACKUI_POITHALANAAR = "Thalanaar";
	FEEDBACKUI_POICENARIONHOLD = "Cenarion Hold";
	FEEDBACKUI_POIGADGET = "Gadgetzan";
	FEEDBACKUI_POIFREEWIND = "Freewind Post";
	FEEDBACKUI_POITAURAJO = "Camp Taurajo";
	FEEDBACKUI_POICROSSROADS = "The Crossroads";
	FEEDBACKUI_POIRATCHET = "Ratchet";
	FEEDBACKUI_POITHERAMORE = "Theramore Isle";
	
	FEEDBACKUI_POIMASK = ".-%s%-%s(.+)"
	
	FEEDBACKUI_LEVELPREFIX = "Lvl" 
	FEEDBACKUI_SURVEYTOOLTIPMOBHEADER = "Mob Name:"
	FEEDBACKUI_SURVEYTOOLTIPMOBZONEHEADER = "Found in:"
	
	FEEDBACKUI_VOICECHAT = "Voice Chat";
	FEEDBACKUI_VOICECHATTOOLTIP = FEEDBACKUI_WHITE .. FEEDBACKUI_VOICECHAT;
	FEEDBACKUI_STRVOICECHAT = "This is a voice chat issue.";
	FEEDBACKUI_HEADSETTYPE = "What type of headset are you using?";
	
	FEEDBACKUI_USBHEADSET = "USB Headset"; --localize me
	FEEDBACKUI_ANALOGHEADSET = "Analog Headset"; --localize me
	FEEDBACKUI_HARDWIREDMIC = "Hardwired Microphone"; --localize me
	
	
	FEEDBACKUI_STRUSBHEADSET = "I am using a USB headset.";
	FEEDBACKUI_STRANALOGHEADSET = "I am using an analog headset.";
	FEEDBACKUI_STRHARDWIREDMIC = "I am using a hardwired microphone."; --localize me
	
end

--TABLES
--[[
function DataTables() end
]]--

--Generate Zone - Subzone strings:

--Northrend
FEEDBACKUI_STRBOREANTUNDRA = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_BOREANTUNDRA
FEEDBACKUI_STRCRYSTALSONG = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_CRYSTALSONG
FEEDBACKUI_STRDALARAN = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_DALARAN 
FEEDBACKUI_STRDRAGONBLIGHT = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_DRAGONBLIGHT
FEEDBACKUI_STRGRIZZLYHILLS = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_GRIZZLYHILLS
FEEDBACKUI_STRHOWLINGFJORD = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_HOWLINGFJORD
FEEDBACKUI_STRICECROWN = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_ICECROWN 
FEEDBACKUI_STRNEXUS = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_NEXUS
FEEDBACKUI_STRSHOLAZARBASIN = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_SHOLAZARBASIN 
FEEDBACKUI_STRSTORMPEAKS = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_STORMPEAKS 
FEEDBACKUI_STRUTGARDEPINNACLE = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_UTGARDEPINNACLE 
FEEDBACKUI_STRWINTERGRASP = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_WINTERGRASP 
FEEDBACKUI_STRZULDRAK = FEEDBACKUI_NORTHREND .. " - " .. FEEDBACKUI_ZULDRAK

--Eastern Kingdoms
FEEDBACKUI_STRALTERACMOUNTAINS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_ALTERACMOUNTAINS 
FEEDBACKUI_STRALTERACVALLEY = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_ALTERACVALLEY 
FEEDBACKUI_STRARATHIBASIN = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_ARATHIBASIN 
FEEDBACKUI_STRARATHIHIGHLANDS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_ARATHIHIGHLANDS 
FEEDBACKUI_STRBADLANDS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_BADLANDS 
FEEDBACKUI_STRBLACKROCKMOUNTAIN = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_BLACKROCKMOUNTAIN 
FEEDBACKUI_STRBLASTEDLANDS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_BLASTEDLANDS 
FEEDBACKUI_STRBURNINGSTEPPES = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_BURNINGSTEPPES 
FEEDBACKUI_STRDEADWINDPASS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_DEADWINDPASS 
FEEDBACKUI_STRDUNMOROGH = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_DUNMOROGH 
FEEDBACKUI_STRDUSKWOOD = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_DUSKWOOD 
FEEDBACKUI_STREPLAGUELANDS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_EPLAGUELANDS 
FEEDBACKUI_STRELWYNN = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_ELWYNN 
FEEDBACKUI_STREVERSONG = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_EVERSONG 
FEEDBACKUI_STRGHOSTLANDS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_GHOSTLANDS 
FEEDBACKUI_STRHILLSBRAD = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_HILLSBRAD 
FEEDBACKUI_STRHINTERLANDS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_HINTERLANDS 
FEEDBACKUI_STRIRONFORGE = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_IRONFORGE 
FEEDBACKUI_STRISLEOFQUELDANAS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_ISLEOFQUELDANAS 
FEEDBACKUI_STRLOCHMODAN = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_LOCHMODAN 
FEEDBACKUI_STRREDRIDGE = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_REDRIDGE 
FEEDBACKUI_STRSEARINGGORGE = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_SEARINGGORGE 
FEEDBACKUI_STRSILVERMOON = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_SILVERMOON 
FEEDBACKUI_STRSILVERPINE = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_SILVERPINE 
FEEDBACKUI_STRSTORMWIND = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_STORMWIND 
FEEDBACKUI_STRSTRANGLETHORN = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_STRANGLETHORN 
FEEDBACKUI_STRSWAMPOFSORROWS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_SWAMPOFSORROWS 
FEEDBACKUI_STRTIRISFAL = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_TIRISFAL 
FEEDBACKUI_STRUNDERCITY = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_UNDERCITY 
FEEDBACKUI_STRWPLAGUELANDS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_WPLAGUELANDS 
FEEDBACKUI_STRWESTFALL = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_WESTFALL 
FEEDBACKUI_STRWETLANDS = FEEDBACKUI_EKINGDOMS .. " - " .. FEEDBACKUI_WETLANDS 

--Kalimdor
FEEDBACKUI_STRASHENVALE = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_ASHENVALE;
FEEDBACKUI_STRAZSHARA = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_AZSHARA ;
FEEDBACKUI_STRAZUREMYST = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_AZUREMYST ;
FEEDBACKUI_STRBARRENS = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_BARRENS ;
FEEDBACKUI_STRBLOODMYST = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_BLOODMYST ;
FEEDBACKUI_STRDARKSHORE = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_DARKSHORE ;
FEEDBACKUI_STRDARNASSUS = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_DARNASSUS ;
FEEDBACKUI_STRDESOLACE = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_DESOLACE ;
FEEDBACKUI_STRDUROTAR = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_DUROTAR ;
FEEDBACKUI_STRDUSTWALLOW = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_DUSTWALLOW ;
FEEDBACKUI_STREXODAR = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_EXODAR ;
FEEDBACKUI_STRFELWOOD = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_FELWOOD ;
FEEDBACKUI_STRFERALAS = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_FERALAS ;
FEEDBACKUI_STRMOONGLADE = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_MOONGLADE ;
FEEDBACKUI_STRMULGORE = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_MULGORE ;
FEEDBACKUI_STRORGRIMMAR = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_ORGRIMMAR ;
FEEDBACKUI_STRSILITHUS = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_SILITHUS ;
FEEDBACKUI_STRSTONETALON = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_STONETALON ;
FEEDBACKUI_STRTANARIS = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_TANARIS ;
FEEDBACKUI_STRTELDRASSIL = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_TELDRASSIL ;
FEEDBACKUI_STRTHUNDERBLUFF = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_THUNDERBLUFF ;
FEEDBACKUI_STRTHOUSANDNEEDLES = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_THOUSANDNEEDLES ;
FEEDBACKUI_STRUNGORO = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_UNGORO ;
FEEDBACKUI_STRWARSONG = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_WARSONG ;
FEEDBACKUI_STRWINTERSPRING = FEEDBACKUI_KALIMDOR .. " - " .. FEEDBACKUI_WINTERSPRING ;

--Outland
FEEDBACKUI_STRBLADESEDGE = FEEDBACKUI_OUTLANDS .. " - " .. FEEDBACKUI_BLADESEDGE;
FEEDBACKUI_STRHELLFIRE = FEEDBACKUI_OUTLANDS .. " - " .. FEEDBACKUI_HELLFIRE;
FEEDBACKUI_STRNAGRAND = FEEDBACKUI_OUTLANDS .. " - " .. FEEDBACKUI_NAGRAND;
FEEDBACKUI_STRNETHERSTORM = FEEDBACKUI_OUTLANDS .. " - " .. FEEDBACKUI_NETHERSTORM;
FEEDBACKUI_STRSHADOWMOON = FEEDBACKUI_OUTLANDS .. " - " .. FEEDBACKUI_SHADOWMOON;
FEEDBACKUI_STRSHATTRATH = FEEDBACKUI_OUTLANDS .. " - " .. FEEDBACKUI_SHATTRATH;
FEEDBACKUI_STRTERROKAR = FEEDBACKUI_OUTLANDS .. " - " .. FEEDBACKUI_TERROKAR;
FEEDBACKUI_STRTWISTINGNETHER = FEEDBACKUI_OUTLANDS .. " - " .. FEEDBACKUI_TWISTINGNETHER;
FEEDBACKUI_STRZANGARMARSH = FEEDBACKUI_OUTLANDS .. " - " .. FEEDBACKUI_ZANGARMARSH;


FEEDBACKUI_VOICECHATTYPETABLE = { [1] = { ["index"] = FEEDBACKUI_STRUSBHEADSET, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_VOICECHAT", ["value"] = 23 }, ["link"] = "FEEDBACKUI_WHENTABLE" }, 
[2] = { ["index"] = FEEDBACKUI_STRANALOGHEADSET, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_VOICECHAT", ["value"] = 24 }, ["link"] = "FEEDBACKUI_WHENTABLE" }, 
["header"] = "",
["subtext"] = FEEDBACKUI_HEADSETTYPE }

if ( not FEEDBACKUI_AREATABLE ) then
	
	--[[ Area Values 
	Outlands = 2 - 11
	Eastern Kingdoms = 12 - 43
	Kalimdor = 44 - 69
	70 - While Installing
	71 - While Downloading
	72 - While Patching
	Isle of Quel'Danas = 73 (Eastern Kingdoms)
	Northrend = 74 - 87
	]]
	
	FEEDBACKUI_AREATABLE = {[1] = { ["index"] = FEEDBACKUI_STREVERYWHERE, ["summary"] = { ["type"] = "where", ["value"] = 1, ["text"] = "FEEDBACKUI_EVERYWHERE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[2] = { ["index"] = FEEDBACKUI_STRNORTHREND, ["summary"] = { ["type"] = "where", ["value"] = 74, ["text"] = "FEEDBACKUI_NORTHREND" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[3] = { ["index"] = FEEDBACKUI_STRBOREANTUNDRA, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 75, ["text"] = "FEEDBACKUI_STRBOREANTUNDRA" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[4] = { ["index"] = FEEDBACKUI_STRCRYSTALSONG, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 81, ["text"] = "FEEDBACKUI_STRCRYSTALSONG" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[5] = { ["index"] = FEEDBACKUI_STRDALARAN, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 82, ["text"] = "FEEDBACKUI_STRDALARAN" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[6] = { ["index"] = FEEDBACKUI_STRDRAGONBLIGHT, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 76, ["text"] = "FEEDBACKUI_STRDRAGONBLIGHT" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[7] = { ["index"] = FEEDBACKUI_STRGRIZZLYHILLS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 77, ["text"] = "FEEDBACKUI_STRGRIZZLYHILLS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[8] = { ["index"] = FEEDBACKUI_STRHOWLINGFJORD, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 78, ["text"] = "FEEDBACKUI_STRHOWLINGFJORD" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[9] = { ["index"] = FEEDBACKUI_STRICECROWN, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 83, ["text"] = "FEEDBACKUI_STRICECROWN" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[10] = { ["index"] = FEEDBACKUI_STRNEXUS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 79, ["text"] = "FEEDBACKUI_STRNEXUS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[11] = { ["index"] = FEEDBACKUI_STRSHOLAZARBASIN, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 84, ["text"] = "FEEDBACKUI_STRSHOLAZARBASIN" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[12] = { ["index"] = FEEDBACKUI_STRSTORMPEAKS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 85, ["text"] = "FEEDBACKUI_STRSTORMPEAKS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[13] = { ["index"] = FEEDBACKUI_STRUTGARDEPINNACLE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 80, ["text"] = "FEEDBACKUI_STRUTGARDEPINNACLE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[14] = { ["index"] = FEEDBACKUI_STRWINTERGRASP, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 86, ["text"] = "FEEDBACKUI_STRWINTERGRASP" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[15] = { ["index"] = FEEDBACKUI_STRZULDRAK, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 87, ["text"] = "FEEDBACKUI_STRZULDRAK" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[16] = { ["index"] = FEEDBACKUI_STROUTLANDS, ["summary"] = { ["type"] = "where", ["value"] = 2, ["text"] = "FEEDBACKUI_OUTLANDS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[17] = { ["index"] = FEEDBACKUI_STRBLADESEDGE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 3, ["text"] = "FEEDBACKUI_STRBLADESEDGE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[18] = { ["index"] = FEEDBACKUI_STRHELLFIRE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 4, ["text"] = "FEEDBACKUI_STRHELLFIRE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[19] = { ["index"] = FEEDBACKUI_STRNAGRAND, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 5, ["text"] = "FEEDBACKUI_STRNAGRAND" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[20] = { ["index"] = FEEDBACKUI_STRNETHERSTORM, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 6, ["text"] = "FEEDBACKUI_STRNETHERSTORM" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[21] = { ["index"] = FEEDBACKUI_STRSHADOWMOON, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 7, ["text"] = "FEEDBACKUI_STRSHADOWMOON" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[22] = { ["index"] = FEEDBACKUI_STRSHATTRATH, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 8, ["text"] = "FEEDBACKUI_STRSHATTRATH" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[23] = { ["index"] = FEEDBACKUI_STRTERROKAR, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 9, ["text"] = "FEEDBACKUI_STRTERROKAR" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[24] = { ["index"] = FEEDBACKUI_STRTWISTINGNETHER, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 10, ["text"] = "FEEDBACKUI_STRTWISTINGNETHER" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[25] = { ["index"] = FEEDBACKUI_STRZANGARMARSH, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 11, ["text"] = "FEEDBACKUI_STRZANGARMARSH" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[26] = { ["index"] = FEEDBACKUI_STREKINGDOMS, ["summary"] = { ["type"] = "where", ["value"] = 12, ["text"] = "FEEDBACKUI_EKINGDOMS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[27] = { ["index"] = FEEDBACKUI_STRALTERACMOUNTAINS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 13, ["text"] = "FEEDBACKUI_STRALTERACMOUNTAINS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[28] = { ["index"] = FEEDBACKUI_STRALTERACVALLEY, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 14, ["text"] = "FEEDBACKUI_STRALTERACVALLEY" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[29] = { ["index"] = FEEDBACKUI_STRARATHIBASIN, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 15, ["text"] = "FEEDBACKUI_STRARATHIBASIN" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[30] = { ["index"] = FEEDBACKUI_STRARATHIHIGHLANDS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 16, ["text"] = "FEEDBACKUI_STRARATHIHIGHLANDS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[31] = { ["index"] = FEEDBACKUI_STRBADLANDS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 17, ["text"] = "FEEDBACKUI_STRBADLANDS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[32] = { ["index"] = FEEDBACKUI_STRBLACKROCKMOUNTAIN, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 18, ["text"] = "FEEDBACKUI_STRBLACKROCKMOUNTAIN" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[33] = { ["index"] = FEEDBACKUI_STRBLASTEDLANDS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 19, ["text"] = "FEEDBACKUI_STRBLASTEDLANDS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[34] = { ["index"] = FEEDBACKUI_STRBURNINGSTEPPES, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 20, ["text"] = "FEEDBACKUI_STRBURNINGSTEPPES" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[35] = { ["index"] = FEEDBACKUI_STRDEADWINDPASS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 21, ["text"] = "FEEDBACKUI_STRDEADWINDPASS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[36] = { ["index"] = FEEDBACKUI_STRDUNMOROGH, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 22, ["text"] = "FEEDBACKUI_STRDUNMOROGH" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[37] = { ["index"] = FEEDBACKUI_STRDUSKWOOD, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 23, ["text"] = "FEEDBACKUI_STRDUSKWOOD" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[38] = { ["index"] = FEEDBACKUI_STREPLAGUELANDS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 24, ["text"] = "FEEDBACKUI_STREPLAGUELANDS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[39] = { ["index"] = FEEDBACKUI_STRELWYNN, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 25, ["text"] = "FEEDBACKUI_STRELWYNN" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[40] = { ["index"] = FEEDBACKUI_STREVERSONG, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 26, ["text"] = "FEEDBACKUI_STREVERSONG" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[41] = { ["index"] = FEEDBACKUI_STRGHOSTLANDS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 27, ["text"] = "FEEDBACKUI_STRGHOSTLANDS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[42] = { ["index"] = FEEDBACKUI_STRHILLSBRAD, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 28, ["text"] = "FEEDBACKUI_STRHILLSBRAD" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[43] = { ["index"] = FEEDBACKUI_STRHINTERLANDS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 29, ["text"] = "FEEDBACKUI_STRHINTERLANDS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[44] = { ["index"] = FEEDBACKUI_STRIRONFORGE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 30, ["text"] = "FEEDBACKUI_STRIRONFORGE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[45] = { ["index"] = FEEDBACKUI_STRISLEOFQUELDANAS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 73, ["text"] = "FEEDBACKUI_STRISLEOFQUELDANAS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[46] = { ["index"] = FEEDBACKUI_STRLOCHMODAN, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 31, ["text"] = "FEEDBACKUI_STRLOCHMODAN" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[47] = { ["index"] = FEEDBACKUI_STRREDRIDGE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 32, ["text"] = "FEEDBACKUI_STRREDRIDGE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[48] = { ["index"] = FEEDBACKUI_STRSEARINGGORGE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 33, ["text"] = "FEEDBACKUI_STRSEARINGGORGE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[49] = { ["index"] = FEEDBACKUI_STRSILVERMOON, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 34, ["text"] = "FEEDBACKUI_STRSILVERMOON" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[50] = { ["index"] = FEEDBACKUI_STRSILVERPINE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 35, ["text"] = "FEEDBACKUI_STRSILVERPINE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[51] = { ["index"] = FEEDBACKUI_STRSTORMWIND, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 36, ["text"] = "FEEDBACKUI_STRSTORMWIND" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[52] = { ["index"] = FEEDBACKUI_STRSTRANGLETHORN, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 37, ["text"] = "FEEDBACKUI_STRSTRANGLETHORN" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[53] = { ["index"] = FEEDBACKUI_STRSWAMPOFSORROWS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 38, ["text"] = "FEEDBACKUI_STRSWAMPOFSORROWS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[54] = { ["index"] = FEEDBACKUI_STRTIRISFAL, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 39, ["text"] = "FEEDBACKUI_STRTIRISFAL" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[55] = { ["index"] = FEEDBACKUI_STRUNDERCITY, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 40, ["text"] = "FEEDBACKUI_STRUNDERCITY" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[56] = { ["index"] = FEEDBACKUI_STRWPLAGUELANDS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 41, ["text"] = "FEEDBACKUI_STRWPLAGUELANDS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[57] = { ["index"] = FEEDBACKUI_STRWESTFALL, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 42, ["text"] = "FEEDBACKUI_STRWESTFALL" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[58] = { ["index"] = FEEDBACKUI_STRWETLANDS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 43, ["text"] = "FEEDBACKUI_STRWETLANDS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[59] = { ["index"] = FEEDBACKUI_STRKALIMDOR, ["summary"] = { ["type"] = "where", ["value"] = 44, ["text"] = "FEEDBACKUI_KALIMDOR" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[60] = { ["index"] = FEEDBACKUI_STRASHENVALE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 45, ["text"] = "FEEDBACKUI_STRASHENVALE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[61] = { ["index"] = FEEDBACKUI_STRAZSHARA, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 46, ["text"] = "FEEDBACKUI_STRAZSHARA" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[62] = { ["index"] = FEEDBACKUI_STRAZUREMYST, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 47, ["text"] = "FEEDBACKUI_STRAZUREMYST" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[63] = { ["index"] = FEEDBACKUI_STRBARRENS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 48, ["text"] = "FEEDBACKUI_STRBARRENS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[64] = { ["index"] = FEEDBACKUI_STRBLOODMYST, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 49, ["text"] = "FEEDBACKUI_STRBLOODMYST" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[65] = { ["index"] = FEEDBACKUI_STRDARKSHORE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 50, ["text"] = "FEEDBACKUI_STRDARKSHORE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[66] = { ["index"] = FEEDBACKUI_STRDARNASSUS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 51, ["text"] = "FEEDBACKUI_STRDARNASSUS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[67] = { ["index"] = FEEDBACKUI_STRDESOLACE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 52, ["text"] = "FEEDBACKUI_STRDESOLACE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[68] = { ["index"] = FEEDBACKUI_STRDUROTAR, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 53, ["text"] = "FEEDBACKUI_STRDUROTAR" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[69] = { ["index"] = FEEDBACKUI_STRDUSTWALLOW, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 54, ["text"] = "FEEDBACKUI_STRDUSTWALLOW" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[70] = { ["index"] = FEEDBACKUI_STREXODAR, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 55, ["text"] = "FEEDBACKUI_STREXODAR" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[71] = { ["index"] = FEEDBACKUI_STRFELWOOD, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 56, ["text"] = "FEEDBACKUI_STRFELWOOD" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[72] = { ["index"] = FEEDBACKUI_STRFERALAS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 57, ["text"] = "FEEDBACKUI_STRFERALAS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[73] = { ["index"] = FEEDBACKUI_STRMOONGLADE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 58, ["text"] = "FEEDBACKUI_STRMOONGLADE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[74] = { ["index"] = FEEDBACKUI_STRMULGORE, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 59, ["text"] = "FEEDBACKUI_STRMULGORE" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[75] = { ["index"] = FEEDBACKUI_STRORGRIMMAR, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 60, ["text"] = "FEEDBACKUI_STRORGRIMMAR" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[76] = { ["index"] = FEEDBACKUI_STRSILITHUS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 61, ["text"] = "FEEDBACKUI_STRSILITHUS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[77] = { ["index"] = FEEDBACKUI_STRSTONETALON, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 62, ["text"] = "FEEDBACKUI_STRSTONETALON" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[78] = { ["index"] = FEEDBACKUI_STRTANARIS, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 63, ["text"] = "FEEDBACKUI_STRTANARIS" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[79] = { ["index"] = FEEDBACKUI_STRTELDRASSIL, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 64, ["text"] = "FEEDBACKUI_STRTELDRASSIL" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[80] = { ["index"] = FEEDBACKUI_STRTHUNDERBLUFF, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 65, ["text"] = "FEEDBACKUI_STRTHUNDERBLUFF" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[81] = { ["index"] = FEEDBACKUI_STRTHOUSANDNEEDLES, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 66, ["text"] = "FEEDBACKUI_STRTHOUSANDNEEDLES" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[82] = { ["index"] = FEEDBACKUI_STRUNGORO, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 67, ["text"] = "FEEDBACKUI_STRUNGORO" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[83] = { ["index"] = FEEDBACKUI_STRWARSONG, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 68, ["text"] = "FEEDBACKUI_STRWARSONG" }, ["link"] = "FEEDBACKUI_WHOTABLE" },
	[84] = { ["index"] = FEEDBACKUI_STRWINTERSPRING, ["offset"] = 1, ["summary"] = { ["type"] = "where", ["value"] = 69, ["text"] = "FEEDBACKUI_STRWINTERSPRING" }, ["link"] = "FEEDBACKUI_WHOTABLE" } }
	
end

FEEDBACKUI_POITABLE = { { ["name"] = FEEDBACKUI_POIUNDERCITY, ["zone"] = FEEDBACKUI_EKINGDOMS },
{ ["name"] = FEEDBACKUI_POISILVERMOON, ["zone"] = FEEDBACKUI_EKINGDOMS },
{ ["name"] = FEEDBACKUI_POIIRONFORGE, ["zone"] = FEEDBACKUI_EKINGDOMS },
{ ["name"] = FEEDBACKUI_POISTORMWIND, ["zone"] = FEEDBACKUI_EKINGDOMS },
{ ["name"] = FEEDBACKUI_POISEPULCHER, ["zone"] = FEEDBACKUI_SILVERPINE },
{ ["name"] = FEEDBACKUI_POITARRENMILL, ["zone"] = FEEDBACKUI_HILLSBRAD },
{ ["name"] = FEEDBACKUI_POISOUTHSHORE, ["zone"] = FEEDBACKUI_HILLSBRAD },
{ ["name"] = FEEDBACKUI_POIAERIEPEAK, ["zone"] = FEEDBACKUI_HINTERLANDS },
{ ["name"] = FEEDBACKUI_POIREVANTUSK, ["zone"] = FEEDBACKUI_HINTERLANDS },
{ ["name"] = FEEDBACKUI_POIHAMMERFALL, ["zone"] = FEEDBACKUI_ARATHIHIGHLANDS },
{ ["name"] = FEEDBACKUI_POIMENETHIL, ["zone"] = FEEDBACKUI_WETLANDS },
{ ["name"] = FEEDBACKUI_POITHELSAMAR, ["zone"] = FEEDBACKUI_LOCHMODAN },
{ ["name"] = FEEDBACKUI_POIKARGATH, ["zone"] = FEEDBACKUI_BADLANDS },
{ ["name"] = FEEDBACKUI_POILAKESHIRE, ["zone"] = FEEDBACKUI_REDRIDGE },
{ ["name"] = FEEDBACKUI_POISENTINELHILL, ["zone"] = FEEDBACKUI_WESTFALL },
{ ["name"] = FEEDBACKUI_POIDARKSHIRE, ["zone"] = FEEDBACKUI_DUSKWOOD },
{ ["name"] = FEEDBACKUI_POISTONARD, ["zone"] = FEEDBACKUI_SWAMPOFSORROWS },
{ ["name"] = FEEDBACKUI_POIGROMGOL, ["zone"] = FEEDBACKUI_STRANGLETHORN },
{ ["name"] = FEEDBACKUI_POIBOOTY, ["zone"] = FEEDBACKUI_STRANGLETHORN },
{ ["name"] = FEEDBACKUI_POIDARNASSUS, ["zone"] = FEEDBACKUI_KALIMDOR },
{ ["name"] = FEEDBACKUI_POIEXODAR, ["zone"] = FEEDBACKUI_KALIMDOR },
{ ["name"] = FEEDBACKUI_POIORGRIMMAR, ["zone"] = FEEDBACKUI_KALIMDOR },
{ ["name"] = FEEDBACKUI_POITHUNDERB, ["zone"] = FEEDBACKUI_KALIMDOR },
{ ["name"] = FEEDBACKUI_POIAUBERDINE, ["zone"] = FEEDBACKUI_DARKSHORE },
{ ["name"] = FEEDBACKUI_POIEVERLOOK, ["zone"] = FEEDBACKUI_WINTERSPRING },
{ ["name"] = FEEDBACKUI_POISTONETALON, ["zone"] = FEEDBACKUI_STONETALON },
{ ["name"] = FEEDBACKUI_POIASTRANAAR, ["zone"] = FEEDBACKUI_ASHENVALE },
{ ["name"] = FEEDBACKUI_POISPLINTERTREE, ["zone"] = FEEDBACKUI_ASHENVALE },
{ ["name"] = FEEDBACKUI_POISUNROCK, ["zone"] = FEEDBACKUI_STONETALON },
{ ["name"] = FEEDBACKUI_POINIJELS, ["zone"] = FEEDBACKUI_DESOLACE },
{ ["name"] = FEEDBACKUI_POISHADOWPREY, ["zone"] = FEEDBACKUI_DESOLACE },
{ ["name"] = FEEDBACKUI_POIFEATHERMOON, ["zone"] = FEEDBACKUI_FERALAS }, 
{ ["name"] = FEEDBACKUI_POIMOJACHE, ["zone"] = FEEDBACKUI_FERALAS },
{ ["name"] = FEEDBACKUI_POITHALANAAR, ["zone"] = FEEDBACKUI_FERALAS },
{ ["name"] = FEEDBACKUI_POICENARIONHOLD, ["zone"] = FEEDBACKUI_SILITHUS },
{ ["name"] = FEEDBACKUI_POIGADGET, ["zone"] = FEEDBACKUI_TANARIS },
{ ["name"] = FEEDBACKUI_POIFREEWIND, ["zone"] = FEEDBACKUI_THOUSANDNEEDLES },
{ ["name"] = FEEDBACKUI_POITAURAJO, ["zone"] = FEEDBACKUI_BARRENS },
{ ["name"] = FEEDBACKUI_POICROSSROADS, ["zone"] = FEEDBACKUI_BARRENS },
{ ["name"] = FEEDBACKUI_POIRATCHET, ["zone"] = FEEDBACKUI_BARRENS },
{ ["name"] = FEEDBACKUI_POITHERAMORE, ["zone"] = FEEDBACKUI_DUSTWALLOW } }            

FEEDBACKUI_GENERICTYPETABLE = { [1] = { ["index"] = FEEDBACKUI_STRVOICECHAT, ["summary"] = { ["type"] = "type", ["value"] = 23, ["text"] = "FEEDBACKUI_VOICECHAT" }, ["link"] = "FEEDBACKUI_VOICECHATTYPETABLE" },
[2] = { ["index"] = FEEDBACKUI_STRUIOTHER, ["summary"] = { ["type"] = "type", ["value"] = 1, ["text"] = "FEEDBACKUI_UIOTHER" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRUIITEMS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 2, ["text"] = "FEEDBACKUI_UIITEMS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[4] = { ["index"] = FEEDBACKUI_STRUISPAWNS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 3, ["text"] = "FEEDBACKUI_UISPAWNS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[5] = { ["index"] = FEEDBACKUI_STRUIQUESTS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 4, ["text"] = "FEEDBACKUI_UIQUESTS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[6] = { ["index"] = FEEDBACKUI_STRUISPELLS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 5, ["text"] = "FEEDBACKUI_UISPELLS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[7] = { ["index"] = FEEDBACKUI_STRUITRADESKILLS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 6, ["text"] = "FEEDBACKUI_UITRADESKILLS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[8] = { ["index"] = FEEDBACKUI_STRGRAPHICOTHER, ["summary"] = { ["type"] = "type", ["value"] = 7, ["text"] = "FEEDBACKUI_GRAPHICOTHER" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[9] = { ["index"] = FEEDBACKUI_STRGRAPHICITEMS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 8, ["text"] = "FEEDBACKUI_GRAPHICITEMS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[10] = { ["index"] = FEEDBACKUI_STRGRAPHICSPAWNS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 9, ["text"] = "FEEDBACKUI_GRAPHICSPAWNS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[11] = { ["index"] = FEEDBACKUI_STRGRAPHICSPELLS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 10, ["text"] = "FEEDBACKUI_GRAPHICSPELLS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[12] = { ["index"] = FEEDBACKUI_STRGRAPHICENVIRONMENT, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 11, ["text"] = "FEEDBACKUI_GRAPHICENVIRONMENT" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[13] = { ["index"] = FEEDBACKUI_STRFUNCOTHER, ["summary"] = { ["type"] = "type", ["value"] = 12, ["text"] = "FEEDBACKUI_FUNCOTHER" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[14] = { ["index"] = FEEDBACKUI_STRFUNCITEMS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 13, ["text"] = "FEEDBACKUI_FUNCITEMS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[15] = { ["index"] = FEEDBACKUI_STRFUNCSPAWNS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 14, ["text"] = "FEEDBACKUI_FUNCSPAWNS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[16] = { ["index"] = FEEDBACKUI_STRFUNCQUESTS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 15, ["text"] = "FEEDBACKUI_FUNCQUESTS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[17] = { ["index"] = FEEDBACKUI_STRFUNCSPELLS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 16, ["text"] = "FEEDBACKUI_FUNCSPELLS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[18] = { ["index"] = FEEDBACKUI_STRFUNCTRADESKILLS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 17, ["text"] = "FEEDBACKUI_FUNCTRADESKILLS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },    
[19] = { ["index"] = FEEDBACKUI_STRCRASHOTHER, ["summary"] = { ["type"] = "type", ["value"] = 18, ["text"] = "FEEDBACKUI_CRASHOTHER" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[20] = { ["index"] = FEEDBACKUI_STRCRASHBUG, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 19, ["text"] = "FEEDBACKUI_CRASHBUG" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[21] = { ["index"] = FEEDBACKUI_STRCRASHSOFTLOCK, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 20, ["text"] = "FEEDBACKUI_CRASHSOFTLOCK" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[22] = { ["index"] = FEEDBACKUI_STRCRASHHARDLOCK, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 21, ["text"] = "FEEDBACKUI_CRASHHARDLOCK" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[23] = { ["index"] = FEEDBACKUI_STRCRASHWOWLAG, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 22, ["text"] = "FEEDBACKUI_CRASHWOWLAG" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
["header"] = "",
["subtext"] = FEEDBACKUI_TYPETABLESUBTEXT }

FEEDBACKUI_BUGWELCOMETABLE = { [1] = { ["prompt"] = FEEDBACKUI_WELCOME, ["link"] = "FEEDBACKUI_WHERETABLE" }, ["header"] = FEEDBACKUI_WHITE .. FEEDBACKUI_WELCOMETABLEBUGHEADER, ["subtext"] = FEEDBACKUI_WELCOMETABLEBUGSUBTEXT }    
FEEDBACKUI_SUGGESTWELCOMETABLE = { [1] = { ["prompt"] = FEEDBACKUI_WELCOME, ["link"] = "FEEDBACKUI_WHERETABLE" }, ["header"] = FEEDBACKUI_WHITE .. FEEDBACKUI_WELCOMETABLESUGGESTHEADER, ["subtext"] = FEEDBACKUI_WELCOMETABLESUGGESTSUBTEXT }    

FEEDBACKUI_WHENTABLE = { [4] = { ["index"] = FEEDBACKUI_STRREPRODUCABLE, ["summary"] = { ["type"] = "when", ["value"] = 4, ["text"] = "FEEDBACKUI_REPRODUCABLE" }, ["link"] = "edit" },
[3] = { ["index"] = FEEDBACKUI_STRSOMETIMES, ["summary"] = { ["type"] = "when", ["value"] = 3, ["text"] = "FEEDBACKUI_SOMETIMES" }, ["link"] = "edit" },
[2] = { ["index"] = FEEDBACKUI_STRRARELY, ["summary"] = { ["type"] = "when", ["value"] = 2, ["text"] = "FEEDBACKUI_RARELY" }, ["link"] = "edit" },
[1] = { ["index"] = FEEDBACKUI_STRONETIME, ["summary"] = { ["type"] = "when", ["value"] = 1, ["text"] = "FEEDBACKUI_ONETIME" }, ["link"] = "edit" },
["header"] = "",
["subtext"] = FEEDBACKUI_WHENTABLESUBTEXT }

FEEDBACKUI_WHERETABLE = { [1] = { ["index"] = FEEDBACKUI_STRAREATABLE, ["summary"] = { ["type"] = "where", ["value"] = 1, ["text"] = "FEEDBACKUI_AREATABLESUMMARY" }, ["link"] = "FEEDBACKUI_AREATABLE" },
[2] = { ["index"] = FEEDBACKUI_STRWHEREINSTALL, ["summary"] = { ["type"] = "where", ["value"] = 70, ["text"] = "FEEDBACKUI_WHEREINSTALL" }, ["link"] = "FEEDBACKUI_TYPETABLE" },
[3] = { ["index"] = FEEDBACKUI_STRWHEREDOWNLOAD, ["summary"] = { ["type"] = "where", ["value"] = 71, ["text"] = "FEEDBACKUI_WHEREDOWNLOAD" }, ["link"] = "FEEDBACKUI_TYPETABLE" }, 
[4] = { ["index"] = FEEDBACKUI_STRWHEREPATCH, ["summary"] = { ["type"] = "where", ["value"] = 72, ["text"] = "FEEDBACKUI_WHEREPATCH" }, ["link"] = "FEEDBACKUI_TYPETABLE" },
["header"] = "",
["subtext"] = FEEDBACKUI_WHERETABLESUBTEXT } 

FEEDBACKUI_AREATABLE["header"] = "";
FEEDBACKUI_AREATABLE["subtext"] = FEEDBACKUI_WHERETABLESUBTEXT;              

FEEDBACKUI_WHOTABLE = { [1] = { ["index"] = FEEDBACKUI_STRWHOPLAYER, ["summary"] = { ["type"] = "who", ["value"] = 1, ["text"] = "FEEDBACKUI_WHOPLAYER" }, ["link"] = "FEEDBACKUI_TYPETABLE" },
[2] = { ["index"] = FEEDBACKUI_STRPARTYMEMBER, ["summary"] = { ["type"] = "who", ["value"] = 2, ["text"] = "FEEDBACKUI_PARTYMEMBER" }, ["link"] = "FEEDBACKUI_TYPETABLE" },
[3] = { ["index"] = FEEDBACKUI_STRRAIDMEMBER, ["summary"] = { ["type"] = "who", ["value"] = 3, ["text"] = "FEEDBACKUI_RAIDMEMBER" }, ["link"] = "FEEDBACKUI_TYPETABLE" },
[4] = { ["index"] = FEEDBACKUI_STRENEMYPLAYER, ["summary"] = { ["type"] = "who", ["value"] = 4, ["text"] = "FEEDBACKUI_ENEMYPLAYER" }, ["link"] = "FEEDBACKUI_TYPETABLE" },
[5] = { ["index"] = FEEDBACKUI_STRFRIENDLYPLAYER, ["summary"] = { ["type"] = "who", ["value"] = 5, ["text"] = "FEEDBACKUI_FRIENDLYPLAYER" }, ["link"] = "FEEDBACKUI_TYPETABLE" },
[6] = { ["index"] = FEEDBACKUI_STRENEMYCREATURE, ["summary"] = { ["type"] = "who", ["value"] = 6, ["text"] = "FEEDBACKUI_ENEMYCREATURE" } , ["link"] = "FEEDBACKUI_TYPETABLE" },
[7] = { ["index"] = FEEDBACKUI_STRFRIENDLYCREATURE, ["summary"] = { ["type"] = "who", ["value"] = 7, ["text"] = "FEEDBACKUI_FRIENDLYCREATURE" }, ["link"] = "FEEDBACKUI_TYPETABLE" },
[8] = { ["index"] = FEEDBACKUI_STRWHONA, ["summary"] = { ["type"] = "who", ["value"] = 0, ["text"] = "FEEDBACKUI_WHONA" }, ["link"] = "FEEDBACKUI_TYPETABLE" },
["header"] = "",
["subtext"] = FEEDBACKUI_WHOTABLESUBTEXT }

----------------------------------------------------------------------------------------------------             

FEEDBACKUI_SURVEYRESPONSETYPES = { ["Areas"] = { "difficulty", "reward", "fun" }, 
["Quests"] = { "clarity", "difficulty", "reward", "fun" }, 
["Mobs"] = { "difficulty", "reward", "fun", "appearance" },
["Items"] = { "difficulty", "utility", "appearance" },
["Spells"] = { "power", "frequency", "appropriateness", "fun" }, };

FEEDBACKUI_RESPONSELABELS = {  ["clarity"] = FEEDBACKUILBLFRMCLARITY_TEXT, 
["difficulty"] = FEEDBACKUILBLFRMDIFFICULTY_TEXT, 
["reward"] = FEEDBACKUILBLFRMREWARD_TEXT, 
["fun"] = FEEDBACKUILBLFRMFUN_TEXT,
["appearance"] = FEEDBACKUILBLAPPEARANCE_TEXT,
["utility"] = FEEDBACKUILBLUTILITY_TEXT,
["power"] = FEEDBACKUILBLPOWER_TEXT,
["frequency"] = FEEDBACKUILBLFREQUENCY_TEXT,
["appropriateness"] = FEEDBACKUILBLAPPROPRIATE_TEXT, }

FEEDBACKUI_AREADIFFICULTIES = { DUNGEON_DIFFICULTY1, DUNGEON_DIFFICULTY2, DUNGEON_DIFFICULTY3};


FEEDBACKUI_AREASDIFFICULTYTABLE = { [1] = { ["index"] = FEEDBACKUI_DIFFICULTY1, ["summary"] = { ["type"] = "difficulty", ["value"] = 1, ["text"] = "FEEDBACKUI_DIFFICULTY1" }, ["link"] = "FEEDBACKUI_AREASREWARDTABLE" },
[2] = { ["index"] = FEEDBACKUI_DIFFICULTY2, ["summary"] = { ["type"] = "difficulty", ["value"] = 2, ["text"] = "FEEDBACKUI_DIFFICULTY2" }, ["link"] = "FEEDBACKUI_AREASREWARDTABLE" },
[3] = { ["index"] = FEEDBACKUI_DIFFICULTY3, ["summary"] = { ["type"] = "difficulty", ["value"] = 3, ["text"] = "FEEDBACKUI_DIFFICULTY3" }, ["link"] = "FEEDBACKUI_AREASREWARDTABLE" },
[4] = { ["index"] = FEEDBACKUI_DIFFICULTY4, ["summary"] = { ["type"] = "difficulty", ["value"] = 4, ["text"] = "FEEDBACKUI_DIFFICULTY4" }, ["link"] = "FEEDBACKUI_AREASREWARDTABLE" },
["header"] = FEEDBACKUI_AREASDIFFICULTYTABLEHEADER, 
["subtext"] = FEEDBACKUI_AREASDIFFICULTYTABLESUBTEXT }

FEEDBACKUI_AREASREWARDTABLE = { [1] = { ["index"] = FEEDBACKUI_REWARD1, ["summary"] = { ["type"] = "reward", ["value"] = 1, ["text"] = "FEEDBACKUI_REWARD1" }, ["link"] = "FEEDBACKUI_AREASFUNTABLE" },
[2] = { ["index"] = FEEDBACKUI_REWARD2, ["summary"] = { ["type"] = "reward", ["value"] = 2, ["text"] = "FEEDBACKUI_REWARD2" }, ["link"] = "FEEDBACKUI_AREASFUNTABLE" },
[3] = { ["index"] = FEEDBACKUI_REWARD3, ["summary"] = { ["type"] = "reward", ["value"] = 3, ["text"] = "FEEDBACKUI_REWARD3" }, ["link"] = "FEEDBACKUI_AREASFUNTABLE" },
[4] = { ["index"] = FEEDBACKUI_REWARD4, ["summary"] = { ["type"] = "reward", ["value"] = 4, ["text"] = "FEEDBACKUI_REWARD4" }, ["link"] = "FEEDBACKUI_AREASFUNTABLE" },
["header"] = FEEDBACKUI_AREASREWARDTABLEHEADER,
["subtext"] = FEEDBACKUI_AREASREWARDTABLESUBTEXT }

FEEDBACKUI_AREASFUNTABLE = { [1] = { ["index"] = FEEDBACKUI_FUN1, ["summary"] = { ["type"] = "fun", ["value"] = 1, ["text"] = "FEEDBACKUI_FUN1" }, ["link"] = "edit" },
[2] = { ["index"] = FEEDBACKUI_FUN2, ["summary"] = { ["type"] = "fun", ["value"] = 2, ["text"] = "FEEDBACKUI_FUN2" }, ["link"] = "edit" },
[3] = { ["index"] = FEEDBACKUI_FUN3, ["summary"] = { ["type"] = "fun", ["value"] = 3, ["text"] = "FEEDBACKUI_FUN3" }, ["link"] = "edit" },
[4] = { ["index"] = FEEDBACKUI_FUN4, ["summary"] = { ["type"] = "fun", ["value"] = 4, ["text"] = "FEEDBACKUI_FUN4" }, ["link"] = "edit" },
["header"] = FEEDBACKUI_AREASFUNTABLEHEADER,
["subtext"] = FEEDBACKUI_AREASFUNTABLESUBTEXT }

FEEDBACKUI_QUESTSCLARITYTABLE = { [1] = { ["index"] = FEEDBACKUI_STRCLARITY1, ["summary"] = { ["type"] = "clarity", ["value"] = 1, ["text"] = "FEEDBACKUI_CLARITY1" }, ["link"] = "FEEDBACKUI_QUESTSDIFFICULTYTABLE" },
[2] = { ["index"] = FEEDBACKUI_STRCLARITY2, ["summary"] = { ["type"] = "clarity", ["value"] = 2, ["text"] = "FEEDBACKUI_CLARITY2" }, ["link"] = "FEEDBACKUI_QUESTSDIFFICULTYTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRCLARITY3, ["summary"] = { ["type"] = "clarity", ["value"] = 3, ["text"] = "FEEDBACKUI_CLARITY3" }, ["link"] = "FEEDBACKUI_QUESTSDIFFICULTYTABLE" },
[4] = { ["index"] = FEEDBACKUI_STRCLARITY4, ["summary"] = { ["type"] = "clarity", ["value"] = 4, ["text"] = "FEEDBACKUI_CLARITY4" }, ["link"] = "FEEDBACKUI_QUESTSDIFFICULTYTABLE" },
["header"] = FEEDBACKUI_QUESTSCLARITYTABLEHEADER,
["subtext"] = FEEDBACKUI_QUESTSCLARITYTABLESUBTEXT }

FEEDBACKUI_QUESTSDIFFICULTYTABLE = { [1] = { ["index"] = FEEDBACKUI_STRDIFFICULTY1, ["summary"] = { ["type"] = "difficulty", ["value"] = 1, ["text"] = "FEEDBACKUI_DIFFICULTY1" }, ["link"] = "FEEDBACKUI_QUESTSREWARDTABLE" },
[2] = { ["index"] = FEEDBACKUI_STRDIFFICULTY2, ["summary"] = { ["type"] = "difficulty", ["value"] = 2, ["text"] = "FEEDBACKUI_DIFFICULTY2" }, ["link"] = "FEEDBACKUI_QUESTSREWARDTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRDIFFICULTY3, ["summary"] = { ["type"] = "difficulty", ["value"] = 3, ["text"] = "FEEDBACKUI_DIFFICULTY3" }, ["link"] = "FEEDBACKUI_QUESTSREWARDTABLE" },
[4] = { ["index"] = FEEDBACKUI_STRDIFFICULTY4, ["summary"] = { ["type"] = "difficulty", ["value"] = 4, ["text"] = "FEEDBACKUI_DIFFICULTY4" }, ["link"] = "FEEDBACKUI_QUESTSREWARDTABLE" },
["header"] = FEEDBACKUI_QUESTSDIFFICULTYTABLEHEADER,
["subtext"] = FEEDBACKUI_QUESTSDIFFICULTYTABLESUBTEXT }

FEEDBACKUI_QUESTSREWARDTABLE = { [1] = { ["index"] = FEEDBACKUI_STRREWARD1, ["summary"] = { ["type"] = "reward", ["value"] = 1, ["text"] = "FEEDBACKUI_REWARD1" }, ["link"] = "FEEDBACKUI_QUESTSFUNTABLE" },
[2] = { ["index"] = FEEDBACKUI_STRREWARD2, ["summary"] = { ["type"] = "reward", ["value"] = 2, ["text"] = "FEEDBACKUI_REWARD2" }, ["link"] = "FEEDBACKUI_QUESTSFUNTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRREWARD3, ["summary"] = { ["type"] = "reward", ["value"] = 3, ["text"] = "FEEDBACKUI_REWARD3" }, ["link"] = "FEEDBACKUI_QUESTSFUNTABLE" },
[4] = { ["index"] = FEEDBACKUI_STRREWARD4, ["summary"] = { ["type"] = "reward", ["value"] = 4, ["text"] = "FEEDBACKUI_REWARD4" }, ["link"] = "FEEDBACKUI_QUESTSFUNTABLE" },
["header"] = FEEDBACKUI_QUESTSREWARDTABLEHEADER,
["subtext"] = FEEDBACKUI_QUESTSREWARDTABLESUBTEXT }

FEEDBACKUI_QUESTSFUNTABLE = { [1] = { ["index"] = FEEDBACKUI_STRFUN1, ["summary"] = { ["type"] = "fun", ["value"] = 1, ["text"] = "FEEDBACKUI_FUN1" }, ["link"] = "edit" },
[2] = { ["index"] = FEEDBACKUI_STRFUN2, ["summary"] = { ["type"] = "fun", ["value"] = 2, ["text"] = "FEEDBACKUI_FUN2" }, ["link"] = "edit" },
[3] = { ["index"] = FEEDBACKUI_STRFUN3, ["summary"] = { ["type"] = "fun", ["value"] = 3, ["text"] = "FEEDBACKUI_FUN3" }, ["link"] = "edit" },
[4] = { ["index"] = FEEDBACKUI_STRFUN4, ["summary"] = { ["type"] = "fun", ["value"] = 4, ["text"] = "FEEDBACKUI_FUN4" }, ["link"] = "edit" },
["header"] = FEEDBACKUI_QUESTSFUNTABLEHEADER,
["subtext"] = FEEDBACKUI_QUESTSFUNTABLESUBTEXT }   

FEEDBACKUI_MOBSDIFFICULTYTABLE = { [1] = { ["index"] = FEEDBACKUI_STRDIFFICULTY1, ["summary"] = { ["type"] = "difficulty", ["value"] = 1, ["text"] = "FEEDBACKUI_DIFFICULTY1" }, ["link"] = "FEEDBACKUI_MOBSREWARDTABLE" },
[2] = { ["index"] = FEEDBACKUI_STRDIFFICULTY2, ["summary"] = { ["type"] = "difficulty", ["value"] = 2, ["text"] = "FEEDBACKUI_DIFFICULTY2" }, ["link"] = "FEEDBACKUI_MOBSREWARDTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRDIFFICULTY3, ["summary"] = { ["type"] = "difficulty", ["value"] = 3, ["text"] = "FEEDBACKUI_DIFFICULTY3" }, ["link"] = "FEEDBACKUI_MOBSREWARDTABLE" },
[4] = { ["index"] = FEEDBACKUI_STRDIFFICULTY4, ["summary"] = { ["type"] = "difficulty", ["value"] = 4, ["text"] = "FEEDBACKUI_DIFFICULTY4" }, ["link"] = "FEEDBACKUI_MOBSREWARDTABLE" },
[5] = { ["index"] = FEEDBACKUI_STRDIFFICULTY5, ["summary"] = { ["type"] = "difficulty", ["value"] = 5, ["text"] = "FEEDBACKUI_DIFFICULTY5" }, ["link"] = "FEEDBACKUI_MOBSREWARDTABLE" },

["header"] = FEEDBACKUI_MOBSDIFFICULTYTABLEHEADER,
["subtext"] = FEEDBACKUI_MOBSDIFFICULTYTABLESUBTEXT }

FEEDBACKUI_MOBSREWARDTABLE = { [1] = { ["index"] = FEEDBACKUI_STRREWARD1, ["summary"] = { ["type"] = "reward", ["value"] = 1, ["text"] = "FEEDBACKUI_REWARD1" }, ["link"] = "FEEDBACKUI_MOBSFUNTABLE" },
[2] = { ["index"] = FEEDBACKUI_STRREWARD2, ["summary"] = { ["type"] = "reward", ["value"] = 2, ["text"] = "FEEDBACKUI_REWARD2" }, ["link"] = "FEEDBACKUI_MOBSFUNTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRREWARD3, ["summary"] = { ["type"] = "reward", ["value"] = 3, ["text"] = "FEEDBACKUI_REWARD3" }, ["link"] = "FEEDBACKUI_MOBSFUNTABLE" },
[4] = { ["index"] = FEEDBACKUI_STRREWARD4, ["summary"] = { ["type"] = "reward", ["value"] = 4, ["text"] = "FEEDBACKUI_REWARD4" }, ["link"] = "FEEDBACKUI_MOBSFUNTABLE" },
[5] = { ["index"] = FEEDBACKUI_STRREWARD5, ["summary"] = { ["type"] = "reward", ["value"] = 5, ["text"] = "FEEDBACKUI_REWARD5" }, ["link"] = "FEEDBACKUI_MOBSFUNTABLE" },

["header"] = FEEDBACKUI_MOBSREWARDTABLEHEADER,
["subtext"] = FEEDBACKUI_MOBSREWARDTABLESUBTEXT }

FEEDBACKUI_MOBSFUNTABLE = { [1] = { ["index"] = FEEDBACKUI_STRFUN1, ["summary"] = { ["type"] = "fun", ["value"] = 1, ["text"] = "FEEDBACKUI_FUN1" }, ["link"] = "FEEDBACKUI_MOBSAPPEARANCETABLE" },
[2] = { ["index"] = FEEDBACKUI_STRFUN2, ["summary"] = { ["type"] = "fun", ["value"] = 2, ["text"] = "FEEDBACKUI_FUN2" }, ["link"] = "FEEDBACKUI_MOBSAPPEARANCETABLE" },
[3] = { ["index"] = FEEDBACKUI_STRFUN3, ["summary"] = { ["type"] = "fun", ["value"] = 3, ["text"] = "FEEDBACKUI_FUN3" }, ["link"] = "FEEDBACKUI_MOBSAPPEARANCETABLE" },
[4] = { ["index"] = FEEDBACKUI_STRFUN4, ["summary"] = { ["type"] = "fun", ["value"] = 4, ["text"] = "FEEDBACKUI_FUN4" }, ["link"] = "FEEDBACKUI_MOBSAPPEARANCETABLE" },
["header"] = FEEDBACKUI_MOBSFUNTABLEHEADER,
["subtext"] = FEEDBACKUI_MOBSFUNTABLESUBTEXT }   

FEEDBACKUI_MOBSAPPEARANCETABLE = { [1] = { ["index"] = FEEDBACKUI_STRAPPEARANCE1, ["summary"] = { ["type"] = "appearance", ["value"] = 1, ["text"] = "FEEDBACKUI_APPEARANCE1" }, ["link"] = "edit" },
[2] = { ["index"] = FEEDBACKUI_STRAPPEARANCE2, ["summary"] = { ["type"] = "appearance", ["value"] = 2, ["text"] = "FEEDBACKUI_APPEARANCE2" }, ["link"] = "edit" },
[3] = { ["index"] = FEEDBACKUI_STRAPPEARANCE3, ["summary"] = { ["type"] = "appearance", ["value"] = 3, ["text"] = "FEEDBACKUI_APPEARANCE3" }, ["link"] = "edit" },
[4] = { ["index"] = FEEDBACKUI_STRAPPEARANCE4, ["summary"] = { ["type"] = "appearance", ["value"] = 4, ["text"] = "FEEDBACKUI_APPEARANCE4" }, ["link"] = "edit" },
["header"] = FEEDBACKUI_MOBSAPPEARANCETABLEHEADER,
["subtext"] = FEEDBACKUI_MOBSAPPEARANCETABLESUBTEXT }   

FEEDBACKUI_ITEMSDIFFICULTYTABLE = { [1] = { ["index"] = FEEDBACKUI_STRDIFFICULTY1, ["summary"] = { ["type"] = "difficulty", ["value"] = 1, ["text"] = "FEEDBACKUI_DIFFICULTY1" }, ["link"] = "FEEDBACKUI_ITEMSUTILITYTABLE" },
[2] = { ["index"] = FEEDBACKUI_STRDIFFICULTY2, ["summary"] = { ["type"] = "difficulty", ["value"] = 2, ["text"] = "FEEDBACKUI_DIFFICULTY2" }, ["link"] = "FEEDBACKUI_ITEMSUTILITYTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRDIFFICULTY3, ["summary"] = { ["type"] = "difficulty", ["value"] = 3, ["text"] = "FEEDBACKUI_DIFFICULTY3" }, ["link"] = "FEEDBACKUI_ITEMSUTILITYTABLE" },
[4] = { ["index"] = FEEDBACKUI_STRDIFFICULTY4, ["summary"] = { ["type"] = "difficulty", ["value"] = 4, ["text"] = "FEEDBACKUI_DIFFICULTY4" }, ["link"] = "FEEDBACKUI_ITEMSUTILITYTABLE" },
["header"] = FEEDBACKUI_ITEMSDIFFICULTYTABLEHEADER,
["subtext"] = FEEDBACKUI_ITEMSDIFFICULTYTABLESUBTEXT }   

FEEDBACKUI_ITEMSUTILITYTABLE = { [1] = { ["index"] = FEEDBACKUI_STRUTILITY1, ["summary"] = { ["type"] = "utility", ["value"] = 1, ["text"] = "FEEDBACKUI_UTILITY1" }, ["link"] = "FEEDBACKUI_ITEMSAPPEARANCETABLE" },
[2] = { ["index"] = FEEDBACKUI_STRUTILITY2, ["summary"] = { ["type"] = "utility", ["value"] = 2, ["text"] = "FEEDBACKUI_UTILITY2" }, ["link"] = "FEEDBACKUI_ITEMSAPPEARANCETABLE" },
[3] = { ["index"] = FEEDBACKUI_STRUTILITY3, ["summary"] = { ["type"] = "utility", ["value"] = 3, ["text"] = "FEEDBACKUI_UTILITY3" }, ["link"] = "FEEDBACKUI_ITEMSAPPEARANCETABLE" },
[4] = { ["index"] = FEEDBACKUI_STRUTILITY4, ["summary"] = { ["type"] = "utility", ["value"] = 4, ["text"] = "FEEDBACKUI_UTILITY4" }, ["link"] = "FEEDBACKUI_ITEMSAPPEARANCETABLE" },
["header"] = FEEDBACKUI_ITEMSUTILITYHEADER,
["subtext"] = FEEDBACKUI_ITEMSUTILITYSUBTEXT }

FEEDBACKUI_ITEMSAPPEARANCETABLE = { [1] = { ["index"] = FEEDBACKUI_STRAPPEARANCE1, ["summary"] = { ["type"] = "appearance", ["value"] = 1, ["text"] = "FEEDBACKUI_APPEARANCE1" }, ["link"] = "edit" },
[2] = { ["index"] = FEEDBACKUI_STRAPPEARANCE2, ["summary"] = { ["type"] = "appearance", ["value"] = 2, ["text"] = "FEEDBACKUI_APPEARANCE2" }, ["link"] = "edit" },
[3] = { ["index"] = FEEDBACKUI_STRAPPEARANCE3, ["summary"] = { ["type"] = "appearance", ["value"] = 3, ["text"] = "FEEDBACKUI_APPEARANCE3" }, ["link"] = "edit" },
[4] = { ["index"] = FEEDBACKUI_STRAPPEARANCE4, ["summary"] = { ["type"] = "appearance", ["value"] = 4, ["text"] = "FEEDBACKUI_APPEARANCE4" }, ["link"] = "edit" },
["header"] = FEEDBACKUI_ITEMSAPPEARANCETABLEHEADER,
["subtext"] = FEEDBACKUI_ITEMSAPPEARANCETABLESUBTEXT } 

FEEDBACKUI_SPELLSPOWERTABLE = { [1] = { ["index"] = FEEDBACKUI_STRPOWER1, ["summary"] = { ["type"] = "power", ["value"] = 1, ["text"] = "FEEDBACKUI_STRPOWER1" }, ["link"] = "FEEDBACKUI_SPELLSFREQUENCYTABLE" },
[2] = { ["index"] = FEEDBACKUI_STRPOWER2, ["summary"] = { ["type"] = "power", ["value"] = 2, ["text"] = "FEEDBACKUI_STRPOWER2" }, ["link"] = "FEEDBACKUI_SPELLSFREQUENCYTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRPOWER3, ["summary"] = { ["type"] = "power", ["value"] = 3, ["text"] = "FEEDBACKUI_STRPOWER3" }, ["link"] = "FEEDBACKUI_SPELLSFREQUENCYTABLE" },
[4] = { ["index"] = FEEDBACKUI_STRPOWER4, ["summary"] = { ["type"] = "power", ["value"] = 4, ["text"] = "FEEDBACKUI_STRPOWER4" }, ["link"] = "FEEDBACKUI_SPELLSFREQUENCYTABLE" },
["header"] = FEEDBACKUI_SPELLSPOWERTABLEHEADER,
["subtext"] = FEEDBACKUI_SPELLSPOWERTABLESUBTEXT } 

FEEDBACKUI_SPELLSFREQUENCYTABLE = { [1] = { ["index"] = FEEDBACKUI_STRFREQUENCY1, ["summary"] = { ["type"] = "frequency", ["value"] = 1, ["text"] = "FEEDBACKUI_STRFREQUENCY1" }, ["link"] = "FEEDBACKUI_SPELLSAPPROPRIATETABLE" },
[2] = { ["index"] = FEEDBACKUI_STRFREQUENCY2, ["summary"] = { ["type"] = "frequency", ["value"] = 2, ["text"] = "FEEDBACKUI_STRFREQUENCY2" }, ["link"] = "FEEDBACKUI_SPELLSAPPROPRIATETABLE" },
[3] = { ["index"] = FEEDBACKUI_STRFREQUENCY3, ["summary"] = { ["type"] = "frequency", ["value"] = 3, ["text"] = "FEEDBACKUI_STRFREQUENCY3" }, ["link"] = "FEEDBACKUI_SPELLSAPPROPRIATETABLE" },
[4] = { ["index"] = FEEDBACKUI_STRFREQUENCY4, ["summary"] = { ["type"] = "frequency", ["value"] = 4, ["text"] = "FEEDBACKUI_STRFREQUENCY4" }, ["link"] = "FEEDBACKUI_SPELLSAPPROPRIATETABLE" },
["header"] = FEEDBACKUI_SPELLSFREQUENCYTABLEHEADER,
["subtext"] = FEEDBACKUI_SPELLSFREQUENCYTABLESUBTEXT } 

FEEDBACKUI_SPELLSAPPROPRIATETABLE = { [1] = { ["index"] = FEEDBACKUI_STRAPPROPRIATE1, ["summary"] = { ["type"] = "appropriateness", ["value"] = 1, ["text"] = "FEEDBACKUI_STRAPPROPRIATE1" }, ["link"] = "FEEDBACKUI_SPELLSSFUNTABLE" },
[2] = { ["index"] = FEEDBACKUI_STRAPPROPRIATE2, ["summary"] = { ["type"] = "appropriateness", ["value"] = 2, ["text"] = "FEEDBACKUI_STRAPPROPRIATE2" }, ["link"] = "FEEDBACKUI_SPELLSSFUNTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRAPPROPRIATE3, ["summary"] = { ["type"] = "appropriateness", ["value"] = 3, ["text"] = "FEEDBACKUI_STRAPPROPRIATE3" }, ["link"] = "FEEDBACKUI_SPELLSSFUNTABLE" },
[4] = { ["index"] = FEEDBACKUI_STRAPPROPRIATE4, ["summary"] = { ["type"] = "appropriateness", ["value"] = 4, ["text"] = "FEEDBACKUI_STRAPPROPRIATE4" }, ["link"] = "FEEDBACKUI_SPELLSSFUNTABLE" },
["header"] = FEEDBACKUI_SPELLSAPPROPRIATETABLEHEADER,
["subtext"] = FEEDBACKUI_SPELLSAPPROPRIATETABLESUBTEXT } 

FEEDBACKUI_SPELLSSFUNTABLE = { [1] = { ["index"] = FEEDBACKUI_STRFUN1, ["summary"] = { ["type"] = "fun", ["value"] = 1, ["text"] = "FEEDBACKUI_FUN1" }, ["link"] = "edit" },
[2] = { ["index"] = FEEDBACKUI_STRFUN2, ["summary"] = { ["type"] = "fun", ["value"] = 2, ["text"] = "FEEDBACKUI_FUN2" }, ["link"] = "edit" },
[3] = { ["index"] = FEEDBACKUI_STRFUN3, ["summary"] = { ["type"] = "fun", ["value"] = 3, ["text"] = "FEEDBACKUI_FUN3" }, ["link"] = "edit" },
[4] = { ["index"] = FEEDBACKUI_STRFUN4, ["summary"] = { ["type"] = "fun", ["value"] = 4, ["text"] = "FEEDBACKUI_FUN4" }, ["link"] = "edit" },
["header"] = FEEDBACKUI_SPELLSFUNTABLEHEADER,
["subtext"] = FEEDBACKUI_SPELLSFUNTABLESUBTEXT }       

FEEDBACKUI_QUESTHEADER = { ["header"] = true, ["name"] = FEEDBACKUI_QUESTHEADERTEXT }
FEEDBACKUI_ITEMHEADER = { ["header"] = true, ["name"] = FEEDBACKUI_ITEMHEADERTEXT }
FEEDBACKUI_MOBHEADER = { ["header"] = true, ["name"] = FEEDBACKUI_MOBHEADERTEXT }
FEEDBACKUI_AREAHEADER = { ["header"] = true, ["name"] = FEEDBACKUI_AREAHEADERTEXT }
FEEDBACKUI_SPELLHEADER = { ["header"] = true, ["name"] = FEEDBACKUI_SPELLHEADERTEXT }

FEEDBACKUI_MOUSEBUTTONS = { { ["value"] = "BUTTON1", ["text"] = FEEDBACKUI_MOUSE1 }, 
{ ["value"] = "BUTTON2", ["text"] = FEEDBACKUI_MOUSE2 } }

if ( IsMacClient() ) then
	FEEDBACKUI_MODIFIERKEYS = { { ["value"] = "LALT", ["text"] = FEEDBACKUI_LALT }, 
	{ ["value"] = "LCTRL", ["text"] = FEEDBACKUI_LCTRL },
	{ ["value"] = "LSHIFT", ["text"] = FEEDBACKUI_LSHIFT } }
else
	FEEDBACKUI_MODIFIERKEYS = { { ["value"] = "LALT", ["text"] = FEEDBACKUI_LALT }, 
	{ ["value"] = "RALT", ["text"] = FEEDBACKUI_RALT },
	{ ["value"] = "LCTRL", ["text"] = FEEDBACKUI_LCTRL },
	{ ["value"] = "RCTRL", ["text"] = FEEDBACKUI_RCTRL },
	{ ["value"] = "LSHIFT", ["text"] = FEEDBACKUI_LSHIFT },
	{ ["value"] = "RSHIFT", ["text"] = FEEDBACKUI_RSHIFT } }
end

FEEDBACKUI_SURVEYCATEGORIES = { { ["value"] = "All", ["text"] = FEEDBACKUI_ALLHEADERTEXT }, 
{ ["value"] = "Areas", ["text"] = FEEDBACKUI_AREAHEADERTEXT },
{ ["value"] = "Items", ["text"] = FEEDBACKUI_ITEMHEADERTEXT },
{ ["value"] = "Mobs", ["text"] = FEEDBACKUI_MOBHEADERTEXT },
{ ["value"] = "Quests", ["text"] = FEEDBACKUI_QUESTHEADERTEXT },
{ ["value"] = "Spells", ["text"] = FEEDBACKUI_SPELLHEADERTEXT }, }

FEEDBACKUI_OPTIONSBUTTONS = { { ["text"] = FEEDBACKUILBLSURVEYALERTSCHECK_TEXT },
{ ["text"] = FEEDBACKUISHOWCUES_TEXT } };


FEEDBACKUI_SURVEYSTATUS = { { ["value"] = "All", ["text"] = FEEDBACKUI_STATUSALLTEXT, ["r"] = 1, ["g"] = 1, ["b"] = 1 }, 
{ ["value"] = "Available", ["text"] = FEEDBACKUI_STATUSAVAILABLETEXT, ["r"] = 1, ["g"] = 1, ["b"] = 0 },
{ ["value"] = "Skipped", ["text"] = FEEDBACKUI_STATUSSKIPPEDTEXT, ["r"] = .25, ["g"] = .75, ["b"] = .25 },
{ ["value"] = "Completed", ["text"] = FEEDBACKUI_STATUSCOMPLETEDTEXT, ["r"] = .5, ["g"] = .5, ["b"] = .5 } } 

FEEDBACKUI_SURVEYSTATUSES = { ["All"] = 1, ["Available"] = 2, ["Skipped"] = 3, ["Completed"] = 4 }              

FEEDBACKUI_SURVEYWELCOMETABLE = { [1] = { ["prompt"] = string.gsub(FEEDBACKUI_WELCOME, "\n", "", 1), ["link"] = "POINTLESS_NONEXISTANTLINK" }, ["header"] = FEEDBACKUI_WELCOMETABLESURVEYHEADER, ["subtext"] = FEEDBACKUI_WELCOMETABLESURVEYSUBTEXT }

FEEDBACKUI_SPAWNSTYPETABLE = { [1] = { ["index"] = FEEDBACKUI_STRUISPAWNS, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_UISPAWNS", ["value"] = 3 }, ["link"] = "FEEDBACKUI_WHENTABLE" },  
[2] = { ["index"] = FEEDBACKUI_STRGRAPHICSPAWNS, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_GRAPHICSPAWNS", ["value"] = 9 }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRFUNCSPAWNS, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_FUNCSPAWNS", ["value"] = 14 }, ["link"] = "FEEDBACKUI_WHENTABLE" },
["header"] = "",
["subtext"] = FEEDBACKUI_TYPETABLESUBTEXT }

FEEDBACKUI_ITEMSTYPETABLE = {  [1] = { ["index"] = FEEDBACKUI_STRUIITEMS, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_UIITEMS", ["value"] = 2 }, ["link"] = "FEEDBACKUI_WHENTABLE" },  
[2] = { ["index"] = FEEDBACKUI_STRGRAPHICITEMS, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_GRAPHICITEMS", ["value"] = 8 }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRFUNCITEMS, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_FUNCITEMS", ["value"] = 13 }, ["link"] = "FEEDBACKUI_WHENTABLE" },
["header"] = "",
["subtext"] = FEEDBACKUI_TYPETABLESUBTEXT }

FEEDBACKUI_QUESTSTYPETABLE = { [1] = { ["index"] = FEEDBACKUI_STRUIQUESTS, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_UIQUESTS", ["value"] = 4 }, ["link"] = "FEEDBACKUI_WHENTABLE" },  
[2] = { ["index"] = FEEDBACKUI_STRFUNCQUESTS, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_FUNCQUESTS", ["value"] = 15 }, ["link"] = "FEEDBACKUI_WHENTABLE" },
["header"] = "",
["subtext"] = FEEDBACKUI_TYPETABLESUBTEXT } 

FEEDBACKUI_SPELLSTYPETABLE = { [1] = { ["index"] = FEEDBACKUI_STRUISPELLS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 5, ["text"] = "FEEDBACKUI_UISPELLS" }, ["link"] = "FEEDBACKUI_WHENTABLE" }, 
[2] = { ["index"] = FEEDBACKUI_STRGRAPHICSPELLS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 10, ["text"] = "FEEDBACKUI_GRAPHICSPELLS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
[3] = { ["index"] = FEEDBACKUI_STRFUNCSPELLS, ["offset"] = 1, ["summary"] = { ["type"] = "type", ["value"] = 16, ["text"] = "FEEDBACKUI_FUNCSPELLS" }, ["link"] = "FEEDBACKUI_WHENTABLE" },
["header"] = "",
["subtext"] = FEEDBACKUI_TYPETABLESUBTEXT }

FEEDBACKUI_AREASTYPETABLE = FEEDBACKUI_WHENTABLE;

FEEDBACKUI_VOICECHATTABLE = {  [1] = { ["index"] = FEEDBACKUI_STRUSBHEADSET, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_USBHEADSET", ["value"] = 23 }, ["link"] = "edit" }, 
[2] = { ["index"] = FEEDBACKUI_STRANALOGHEADSET, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_ANALOGHEADSET", ["value"] = 24 }, ["link"] = "edit" },
[3] = { ["index"] = FEEDBACKUI_STRHARDWIREDMIC, ["summary"] = { ["type"] = "type", ["text"] = "FEEDBACKUI_HARDWIREDMIC", ["value"] = 25 }, ["link"] = "edit" },
["header"] = "",
["subtext"] = FEEDBACKUI_HEADSETTYPE }

for _, val in next, FEEDBACKUI_EXCEPTIONZONES do
	FEEDBACKUI_NONINSTANCEZONES[val] = true;
end



