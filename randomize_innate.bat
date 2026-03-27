set characters=char.bin
set dream=char20.bin
set elements=pgdat.bin
set bosses=monster.bin
setlocal enabledelayedexpansion

REM Innate Reference
REM =============
REM GREEN  = 0x04
REM WHITE  = 0x08
REM BLACK  = 0x10
REM RED    = 0x20
REM YELLOW = 0x40
REM BLUE   = 0x80

REM Innate Values
REM =============
set innate[0]=0x04
set innate[1]=0x08
set innate[2]=0x10
set innate[3]=0x20
set innate[4]=0x40
set innate[5]=0x80

REM Character Byte Positions
REM ========================
set SERGE=0x01
set KID=0xB1
set GUILE=0x161
set NORRIS=0x211
set NIKKI=0x2C1
set VIPER=0x371
set RIDDEL=0x421
set KARSH=0x4D1
set ZOAH=0x581
set MARCY=0x631
set KORCHA=0x6E1
set LUCCIA=0x791
set POSHUL=0x841
set RAZZLY=0x8F1
set ZAPPA=0x9A1
set ORCHA=0xA51
set RADIUS=0xB01
set FARGO=0xBB1
set MACHA=0xC61
set GLENN=0xD11
set LEENA=0xDC1
set MIKI=0xE71
set HARLE=0xF21
set JANICE=0xFD1
set DRAGGY=0x1081
set STARKY=0x1131
set SPRIGG=0x11E1
set MOJO=0x1291
set TURNIP=0x1341
set NEOFIO=0x13F1
set GRECO=0x14A1
set SKELLY=0x1551
set FUNGUY=0x1601
set IRENES=0x16B1
set MEL=0x1761
set LEAH=0x1811
set VAN=0x18C1
set SNEFF=0x1971
set STEENA=0x1A21
set DOC=0x1AD1
set GROBYC=0x1B81
set PIERRE=0x1C31
set ORLHA=0x1CE1

REM PIP Byte Position
REM =================
set PIP=0x1D91

REM Character Byte Positions (Dream Sequence)
REM =========================================
set SERGE_20=0x01
set KID_20=0xB1
set GUILE_20=0x161
set NORRIS_20=0x211
set NIKKI_20=0x2C1
set VIPER_20=0x371
set RIDDEL_20=0x421
set KARSH_20=0x4D1
set ZOAH_20=0x581
set MARCY_20=0x631
set KORCHA_20=0x6E1
set LUCCIA_20=0x791
set POSHUL_20=0x841
set RAZZLY_20=0x8F1
set ZAPPA_20=0x9A1
set ORCHA_20=0xA51
set RADIUS_20=0xB01
set FARGO_20=0xBB1
set MACHA_20=0xC61
set GLENN_20=0xD11
set LEENA_20=0xDC1
set MIKI_20=0xE71
set HARLE_20=0xF21
set JANICE_20=0xFD1
set DRAGGY_20=0x1081
set STARKY_20=0x1131
set SPRIGG_20=0x11E1
set MOJO_20=0x1291
set TURNIP_20=0x1341
set NEOFIO_20=0x13F1
set GRECO_20=0x14A1
set SKELLY_20=0x1551
set FUNGUY_20=0x1601
set IRENES_20=0x16B1
set MEL_20=0x1761
set LEAH_20=0x1811
set VAN_20=0x18C1
set SNEFF_20=0x1971
set STEENA_20=0x1A21
set DOC_20=0x1AD1
set GROBYC_20=0x1B81
set PIERRE_20=0x1C31
set ORLHA_20=0x1CE1

REM Boss Battle Byte Positions
REM ==========================
set RADIUS_B1=0x01
set RADIUS_B2=0x4151
set NIKKI_B1=0x8511
set KARSH_B1=0x421
set KARSH_B2=0x32C1
set ZOAH_B1=0xB01
set ZOAH_B2=0x3381
set MARCY_B1=0x1EF1
set MARCY_B2=0x3401
set LYNX_B1=0x1F41
set LYNX_B2=0x3E91
set HARLE_B1=0x2871
set FARGO_B1=0x2901
set VIPER_B1=0x3DE1
set GROBYC_B1=0x5A21
set ORLHA_B1=0x5B11
set STARKY_B1=0x6CB1
set ORCHA_B1=0x5801
set DSERGE_B1=0x8D81

REM PIP Byte Position (Dream Sequence
REM =================================
set PIP_20=0x1D91

REM Innate Randomization
REM ====================
set /a _unused_rand=(%RANDOM% * 6 / 32768) 
set /a _serge_rand=(%RANDOM% * 6 / 32768) 
set /a _kid_rand=(%RANDOM% * 6 / 32768)
set /a _guile_rand=(%RANDOM% * 6 / 32768)
set /a _norris_rand=(%RANDOM% * 6 / 32768)
set /a _nikki_rand=(%RANDOM% * 6 / 32768)
set /a _viper_rand=(%RANDOM% * 6 / 32768)
set /a _riddel_rand=(%RANDOM% * 6 / 32768)
set /a _karsh_rand=(%RANDOM% * 6 / 32768)
set /a _zoah_rand=(%RANDOM% * 6 / 32768)
set /a _marcy_rand=(%RANDOM% * 6 / 32768)
set /a _korcha_rand=(%RANDOM% * 6 / 32768)
set /a _luccia_rand=(%RANDOM% * 6 / 32768)
set /a _poshul_rand=(%RANDOM% * 6 / 32768)
set /a _razzly_rand=(%RANDOM% * 6 / 32768)
set /a _zappa_rand=(%RANDOM% * 6 / 32768)
set /a _orcha_rand=(%RANDOM% * 6 / 32768)
set /a _radius_rand=(%RANDOM% * 6 / 32768)
set /a _fargo_rand=(%RANDOM% * 6 / 32768)
set /a _macha_rand=(%RANDOM% * 6 / 32768)
set /a _glenn_rand=(%RANDOM% * 6 / 32768)
set /a _leena_rand=(%RANDOM% * 6 / 32768)
set /a _miki_rand=(%RANDOM% * 6 / 32768)
set /a _harle_rand=(%RANDOM% * 6 / 32768)
set /a _janice_rand=(%RANDOM% * 6 / 32768)
set /a _draggy_rand=(%RANDOM% * 6 / 32768)
set /a _starky_rand=(%RANDOM% * 6 / 32768)
set /a _sprigg_rand=(%RANDOM% * 6 / 32768)
set /a _mojo_rand=(%RANDOM% * 6 / 32768)
set /a _turnip_rand=(%RANDOM% * 6 / 32768)
set /a _neofio_rand=(%RANDOM% * 6 / 32768)
set /a _greco_rand=(%RANDOM% * 6 / 32768)
set /a _skelly_rand=(%RANDOM% * 6 / 32768)
set /a _funguy_rand=(%RANDOM% * 6 / 32768)
set /a _irenes_rand=(%RANDOM% * 6 / 32768)
set /a _mel_rand=(%RANDOM% * 6 / 32768)
set /a _leah_rand=(%RANDOM% * 6 / 32768)
set /a _van_rand=(%RANDOM% * 6 / 32768)
set /a _sneff_rand=(%RANDOM% * 6 / 32768)
set /a _steena_rand=(%RANDOM% * 6 / 32768)
set /a _doc_rand=(%RANDOM% * 6 / 32768)
set /a _grobyc_rand=(%RANDOM% * 6 / 32768)
set /a _pierre_rand=(%RANDOM% * 6 / 32768)
set /a _orlha_rand=(%RANDOM% * 6 / 32768)

REM Innate Determination
REM ====================
set _serge=!innate[%_serge_rand%]!
set _kid=!innate[%_kid_rand%]!
set _guile=!innate[%_guile_rand%]!
set _norris=!innate[%_norris_rand%]!
set _nikki=!innate[%_nikki_rand%]!
set _viper=!innate[%_viper_rand%]!
set _riddel=!innate[%_riddel_rand%]!
set _karsh=!innate[%_karsh_rand%]!
set _zoah=!innate[%_zoah_rand%]!
set _marcy=!innate[%_marcy_rand%]!
set _korcha=!innate[%_korcha_rand%]!
set _luccia=!innate[%_luccia_rand%]!
set _poshul=!innate[%_poshul_rand%]!
set _razzly=!innate[%_razzly_rand%]!
set _zappa=!innate[%_zappa_rand%]!
set _orcha=!innate[%_orcha_rand%]!
set _radius=!innate[%_radius_rand%]!
set _fargo=!innate[%_fargo_rand%]!
set _macha=!innate[%_macha_rand%]!
set _glenn=!innate[%_glenn_rand%]!
set _leena=!innate[%_leena_rand%]!
set _miki=!innate[%_miki_rand%]!
set _harle=!innate[%_harle_rand%]!
set _janice=!innate[%_janice_rand%]!
set _draggy=!innate[%_draggy_rand%]!
set _starky=!innate[%_starky_rand%]!
set _sprigg=!innate[%_sprigg_rand%]!
set _mojo=!innate[%_mojo_rand%]!
set _turnip=!innate[%_turnip_rand%]!
set _neofio=!innate[%_neofio_rand%]!
set _greco=!innate[%_greco_rand%]!
set _skelly=!innate[%_skelly_rand%]!
set _funguy=!innate[%_funguy_rand%]!
set _irenes=!innate[%_irenes_rand%]!
set _mel=!innate[%_mel_rand%]!
set _leah=!innate[%_leah_rand%]!
set _van=!innate[%_van_rand%]!
set _sneff=!innate[%_sneff_rand%]!
set _steena=!innate[%_steena_rand%]!
set _doc=!innate[%_doc_rand%]!
set _grobyc=!innate[%_grobyc_rand%]!
set _pierre=!innate[%_pierre_rand%]!
set _orlha=!innate[%_orlha_rand%]!

REM Lynx Determination
REM ==================
if %_serge%==0x08 set _serge_reverse=0x10
if %_serge%==0x10 set _serge_reverse=0x08
if %_serge%==0x20 set _serge_reverse=0x80
if %_serge%==0x80 set _serge_reverse=0x20
if %_serge%==0x04 set _serge_reverse=0x40
if %_serge%==0x40 set _serge_reverse=0x04
set _lynx=%_serge_reverse%

REM Boss Battle Determination
REM =========================
set _dserge_b1=%_lynx%

REM Innate Modification
REM ===================
powershell -Command ^
"$f='%characters%'; $b=[System.IO.File]::ReadAllBytes($f); ^
$b[%SERGE%]=%_serge%; ^
$b[%KID%]=%_kid%; ^
$b[%GUILE%]=%_guile%; ^
$b[%NORRIS%]=%_norris%; ^
$b[%NIKKI%]=%_nikki%; ^
$b[%VIPER%]=%_viper%; ^
$b[%RIDDEL%]=%_riddel%; ^
$b[%KARSH%]=%_karsh%; ^
$b[%ZOAH%]=%_zoah%; ^
$b[%MARCY%]=%_marcy%; ^
$b[%KORCHA%]=%_korcha%; ^
$b[%LUCCIA%]=%_luccia%; ^
$b[%POSHUL%]=%_poshul%; ^
$b[%RAZZLY%]=%_razzly%; ^
$b[%ZAPPA%]=%_zappa%; ^
$b[%ORCHA%]=%_orcha%; ^
$b[%RADIUS%]=%_radius%; ^
$b[%FARGO%]=%_fargo%; ^
$b[%MACHA%]=%_macha%; ^
$b[%GLENN%]=%_glenn%; ^
$b[%LEENA%]=%_leena%; ^
$b[%MIKI%]=%_miki%; ^
$b[%HARLE%]=%_harle%; ^
$b[%JANICE%]=%_janice%; ^
$b[%DRAGGY%]=%_draggy%; ^
$b[%STARKY%]=%_starky%; ^
$b[%SPRIGG%]=%_sprigg%; ^
$b[%MOJO%]=%_mojo%; ^
$b[%TURNIP%]=%_turnip%; ^
$b[%NEOFIO%]=%_neofio%; ^
$b[%GRECO%]=%_greco%; ^
$b[%SKELLY%]=%_skelly%; ^
$b[%FUNGUY%]=%_funguy%; ^
$b[%IRENES%]=%_irenes%; ^
$b[%MEL%]=%_mel%; ^
$b[%LEAH%]=%_leah%; ^
$b[%VAN%]=%_van%; ^
$b[%SNEFF%]=%_sneff%; ^
$b[%STEENA%]=%_steena%; ^
$b[%DOC%]=%_doc%; ^
$b[%GROBYC%]=%_grobyc%; ^
$b[%PIERRE%]=%_pierre%; ^
$b[%ORLHA%]=%_orlha%; ^
[System.IO.File]::WriteAllBytes($f,$b)"

REM Innate Modification (Dream Sequence)
REM ====================================
powershell -Command ^
"$f='%dream%'; $b=[System.IO.File]::ReadAllBytes($f); ^
$b[%SERGE_20%]=%_serge%; ^
$b[%KID_20%]=%_kid%; ^
$b[%GUILE_20%]=%_guile%; ^
$b[%NORRIS_20%]=%_norris%; ^
$b[%NIKKI_20%]=%_nikki%; ^
$b[%VIPER_20%]=%_viper%; ^
$b[%RIDDEL_20%]=%_riddel%; ^
$b[%KARSH_20%]=%_karsh%; ^
$b[%ZOAH_20%]=%_zoah%; ^
$b[%MARCY_20%]=%_marcy%; ^
$b[%KORCHA_20%]=%_korcha%; ^
$b[%LUCCIA_20%]=%_luccia%; ^
$b[%POSHUL_20%]=%_poshul%; ^
$b[%RAZZLY_20%]=%_razzly%; ^
$b[%ZAPPA_20%]=%_zappa%; ^
$b[%ORCHA_20%]=%_orcha%; ^
$b[%RADIUS_20%]=%_radius%; ^
$b[%FARGO_20%]=%_fargo%; ^
$b[%MACHA_20%]=%_macha%; ^
$b[%GLENN_20%]=%_glenn%; ^
$b[%LEENA_20%]=%_leena%; ^
$b[%MIKI_20%]=%_miki%; ^
$b[%HARLE_20%]=%_harle%; ^
$b[%JANICE_20%]=%_janice%; ^
$b[%DRAGGY_20%]=%_draggy%; ^
$b[%STARKY_20%]=%_starky%; ^
$b[%SPRIGG_20%]=%_sprigg%; ^
$b[%MOJO_20%]=%_mojo%; ^
$b[%TURNIP_20%]=%_turnip%; ^
$b[%NEOFIO_20%]=%_neofio%; ^
$b[%GRECO_20%]=%_greco%; ^
$b[%SKELLY_20%]=%_skelly%; ^
$b[%FUNGUY_20%]=%_funguy%; ^
$b[%IRENES_20%]=%_irenes%; ^
$b[%MEL_20%]=%_mel%; ^
$b[%LEAH_20%]=%_leah%; ^
$b[%VAN_20%]=%_van%; ^
$b[%SNEFF_20%]=%_sneff%; ^
$b[%STEENA_20%]=%_steena%; ^
$b[%DOC_20%]=%_doc%; ^
$b[%GROBYC_20%]=%_grobyc%; ^
$b[%PIERRE_20%]=%_pierre%; ^
$b[%ORLHA_20%]=%_orlha%; ^
[System.IO.File]::WriteAllBytes($f,$b)"

REM Boss Innate Modification)
REM =========================
powershell -Command ^
"$f='%bosses%'; $b=[System.IO.File]::ReadAllBytes($f); ^
$b[%RADIUS_B1%]=%_radius%; ^
$b[%RADIUS_B2%]=%_radius%; ^
$b[%NIKKI_B1%]=%_nikki%; ^
$b[%KARSH_B1%]=%_karsh%; ^
$b[%KARSH_B2%]=%_karsh%; ^
$b[%ZOAH_B1%]=%_zoah%; ^
$b[%ZOAH_B2%]=%_zoah%; ^
$b[%MARCY_B1%]=%_marcy%; ^
$b[%MARCY_B2%]=%_marcy%; ^
$b[%LYNX_B1%]=%_lynx%; ^
$b[%LYNX_B2%]=%_lynx%; ^
$b[%HARLE_B1%]=%_harle%; ^
$b[%FARGO_B1%]=%_fargo%; ^
$b[%VIPER_B1%]=%_viper%; ^
$b[%GROBYC_B1%]=%_grobyc%; ^
$b[%ORLHA_B1%]=%_orlha%; ^
$b[%STARKY_B1%]=%_starky%; ^
$b[%ORCHA_B1%]=%_orcha%; ^
$b[%DSERGE_B1%]=%_lynx%; ^
[System.IO.File]::WriteAllBytes($f,$b)"

REM Element Byte Positions
REM ======================
set SER3=0x1B85
set SER5=0x1BB1
set SER7=0x1BDD
set KID3=0x1C09
set KID5=0x1C35
set KID7=0x1C61
set GUI3=0x1C8D
set GUI5=0x1CB9
set GUI7=0x1CE5
set NOR3=0x1D11
set NOR5=0x1D3D
set NOR7=0x1D69
set NIK3=0x1D95
set NIK5=0x1DC1
set NIK7=0x1DED
set VIP3=0x1E19
set VIP5=0x1E45
set VIP7=0x1E71
set RID3=0x1E9D
set RID5=0x1EC9
set RID7=0x1EF5
set KAR3=0x1F21
set KAR5=0x1F4D
set KAR7=0x1F79
set ZOA3=0x1FA5
set ZOA5=0x1FD1
set ZOA7=0x1FFD
set MAR3=0x2029
set MAR5=0x2055
set MAR7=0x2081
set KOR3=0x20AD
set KOR5=0x20D9
set KOR7=0x2105
set LUC3=0x2131
set LUC5=0x215D
set LUC7=0x2189
set POS3=0x21B5
set POS5=0x21E1
set POS7=0x220D
set RAZ3=0x2239
set RAZ5=0x2265
set RAZ7=0x2291
set ZAP3=0x22BD
set ZAP5=0x22E9
set ZAP7=0x2315
set ORC3=0x2341
set ORC5=0x236D
set ORC7=0x2399
set RAD3=0x23C5
set RAD5=0x23F1
set RAD7=0x241D
set FAR3=0x2449
set FAR5=0x2475
set FAR7=0x24A1
set MAC3=0x24CD
set MAC5=0x24F9
set MAC7=0x2525
set GLE3=0x2551
set GLE5=0x257D
set GLE7=0x25A9
set GLE5_DH=0x1B05
set GLE7_DH=0x1B31
set LEE3=0x25D5
set LEE5=0x2601
set LEE7=0x262D
set MIK3=0x2659
set MIK5=0x2685
set MIK7=0x26B1
set HAR3=0x26DD
set HAR5=0x2709
set HAR7=0x2735
set JAN3=0x2761
set JAN5=0x278D
set JAN7=0x27B9
set DRA3=0x27E5
set DRA5=0x2811
set DRA7=0x283D
set STA3=0x2869
set STA5=0x2895
set STA7=0x28C1
set SPR5=0x28ED
set MOJ3=0x2919
set MOJ5=0x2945
set MOJ7=0x2971
set TUR3=0x299D
set TUR5=0x29C9
set TUR7=0x29F5
set NEO3=0x2A21
set NEO5=0x2A4D
set NEO7=0x2A79
set GRE3=0x2AA5
set GRE5=0x2AD1
set GRE7=0x2AFD
set SKE3=0x2B29
set SKE5=0x2B55
set SKE7=0x2B81
set FUN3=0x2BAD
set FUN5=0x2BD9
set FUN7=0x2C05
set IRE3=0x2C31
set IRE5=0x2C5D
set IRE7=0x2C89
set MEL3=0x2CB5
set MEL5=0x2CE1
set MEL7=0x2D0D
set LEA3=0x2D39
set LEA5=0x2D65
set LEA7=0x2D91
set VAN3=0x2DBD
set VAN5=0x2DE9
set VAN7=0x2E15
set SNE3=0x2E41
set SNE5=0x2E6D
set SNE7=0x2E99
set STE3=0x2EC5
set STE5=0x2EF1
set STE7=0x2F1D
set DOC3=0x2F49
set DOC5=0x2F75
set DOC7=0x2FA1
set GRO3=0x2FCD
set GRO5=0x2FF9
set GRO7=0x3025
set PIE3=0x3051
set PIE5=0x307D
set PIE7=0x30A9
set ORL3=0x30D5
set ORL5=0x3101
set ORL7=0x312D

REM Lynx Byte Positions
REM ===================
set GLIDEHOOKBATTLE=0x19E8
set FERALCATSBATTLE=0x1A14
set FOREVERZEROBATTLE=0x1A40
set DASHSLASHBATTLE=0x1A6C
set GLIDEHOOK=0x1AD0
set FERALCATS=0x1AFC
set FOREVERZERO=0x1B28

REM Double Tech Byte Positions
REM ==========================
set DOUBLETAKE=0x1888
set DRAGGYRIDER=0x17D8
set DRAGONSPIKE=0x18FC
set FLAMENCO=0x185C
set PITCHBLACK=0x18B4
set SWORDSTORM=0x18E0
set TOSSEDSALAD=0x1830
set VITALFORCE=0x1804
set XSTRIKE=0x1B14

REM Triple Tech Byte Positions
REM ==========================
set DELTAFORCE=0x17AC
set ZSLASH=0x1780

REM Element Synchronization
REM =======================
set _ser3=%_serge%
set _ser5=%_serge%
set _ser7=%_serge%
set _kid3=%_kid%
set _kid5=%_kid%
set _kid7=%_kid%
set _gui3=%_guile%
set _gui5=%_guile%
set _gui7=%_guile%
set _nor3=%_norris%
set _nor5=%_norris%
set _nor7=%_norris%
set _nik3=%_nikki%
set _nik5=%_nikki%
set _nik7=%_nikki%
set _vip3=%_viper%
set _vip5=%_viper%
set _vip7=%_viper%
set _rid3=%_riddel%
set _rid5=%_riddel%
set _rid7=%_riddel%
set _kar3=%_karsh%
set _kar5=%_karsh%
set _kar7=%_karsh%
set _zoa3=%_zoah%
set _zoa5=%_zoah%
set _zoa7=%_zoah%
set _mar3=%_marcy%
set _mar5=%_marcy%
set _mar7=%_marcy%
set _kor3=%_korcha%
set _kor5=%_korcha%
set _kor7=%_korcha%
set _luc3=%_luccia%
set _luc5=%_luccia%
set _luc7=%_luccia%
set _pos3=%_poshul%
set _pos5=%_poshul%
set _pos7=%_poshul%
set _raz3=%_razzly%
set _raz5=%_razzly%
set _raz7=%_razzly%
set _zap3=%_zappa%
set _zap5=%_zappa%
set _zap7=%_zappa%
set _orc3=%_orcha%
set _orc5=%_orcha%
set _orc7=%_orcha%
set _rad3=%_radius%
set _rad5=%_radius%
set _rad7=%_radius%
set _far3=%_fargo%
set _far5=%_fargo%
set _far7=%_fargo%
set _mac3=%_macha%
set _mac5=%_macha%
set _mac7=%_macha%
set _gle3=%_glenn%
set _gle5=%_glenn%
set _gle7=%_glenn%
set _gle5_dh=%_glenn%
set _gle7_dh=%_glenn%
set _lee3=%_leena%
set _lee5=%_leena%
set _lee7=%_leena%
set _mik3=%_miki%
set _mik5=%_miki%
set _mik7=%_miki%
set _har3=%_harle%
set _har5=%_harle%
set _har7=%_harle%
set _jan3=%_janice%
set _jan5=%_janice%
set _jan7=%_janice%
set _dra3=%_draggy%
set _dra5=%_draggy%
set _dra7=%_draggy%
set _sta3=%_starky%
set _sta5=%_starky%
set _sta7=%_starky%
set _spr5=%_sprigg%
set _moj3=%_mojo%
set _moj5=%_mojo%
set _moj7=%_mojo%
set _tur3=%_turnip%
set _tur5=%_turnip%
set _tur7=%_turnip%
set _neo3=%_neofio%
set _neo5=%_neofio%
set _neo7=%_neofio%
set _gre3=%_greco%
set _gre5=%_greco%
set _gre7=%_greco%
set _ske3=%_skelly%
set _ske5=%_skelly%
set _ske7=%_skelly%
set _fun3=%_funguy%
set _fun5=%_funguy%
set _fun7=%_funguy%
set _ire3=%_irenes%
set _ire5=%_irenes%
set _ire7=%_irenes%
set _mel3=%_mel%
set _mel5=%_mel%
set _mel7=%_mel%
set _lea3=%_leah%
set _lea5=%_leah%
set _lea7=%_leah%
set _van3=%_van%
set _van5=%_van%
set _van7=%_van%
set _sne3=%_sneff%
set _sne5=%_sneff%
set _sne7=%_sneff%
set _ste3=%_steena%
set _ste5=%_steena%
set _ste7=%_steena%
set _doc3=%_doc%
set _doc5=%_doc%
set _doc7=%_doc%
set _gro3=%_grobyc%
set _gro5=%_grobyc%
set _gro7=%_grobyc%
set _pie3=%_pierre%
set _pie5=%_pierre%
set _pie7=%_pierre%
set _orl3=%_orlha%
set _orl5=%_orlha%
set _orl7=%_orlha%

REM Lynx Tech Synchronization
REM =========================
set _glidehookbattle=%_serge_reverse%
set _feralcatsbattle=%_serge_reverse%
set _foreverzerobattle=%_serge_reverse%
set _dashslashbattle=%_serge_reverse%
set _glidehook=%_serge_reverse%
set _feralcats=%_serge_reverse%
set _foreverzero=%_serge_reverse%

REM Double Tech Synchronization
REM ===========================
set _doubletake=%_kid%
set _draggyrider=%_leah%
set _dragonspike=%_karsh%
set _flamenco=%_miki%
set _pitchblack=%_grobyc%
set _swordstorm=%_guile%	
set _tossedsalad=%_turnip%
set _vitalforce=%_serge%
set _xstrike=%_kid%

REM Triple Tech Synchronization
REM ===========================
set _deltaforce=%_serge%
set _zslash=%_pierre%

REM Element Modification
REM ====================
REM
powershell -Command ^
"$f='%elements%'; $b=[System.IO.File]::ReadAllBytes($f); ^
$b[%SER3%]=%_ser3%; ^
$b[%SER5%]=%_ser5%; ^
$b[%SER7%]=%_ser7%; ^
$b[%KID3%]=%_kid3%; ^
$b[%KID5%]=%_kid5%; ^
$b[%KID7%]=%_kid7%; ^
$b[%GUI3%]=%_gui3%; ^
$b[%GUI5%]=%_gui5%; ^
$b[%GUI7%]=%_gui7%; ^
$b[%NOR3%]=%_nor3%; ^
$b[%NOR5%]=%_nor5%; ^
$b[%NOR7%]=%_nor7%; ^
$b[%NIK3%]=%_nik3%; ^
$b[%NIK5%]=%_nik5%; ^
$b[%NIK7%]=%_nik7%; ^
$b[%VIP3%]=%_vip3%; ^
$b[%VIP5%]=%_vip5%; ^
$b[%VIP7%]=%_vip7%; ^
$b[%RID3%]=%_rid3%; ^
$b[%RID5%]=%_rid5%; ^
$b[%RID7%]=%_rid7%; ^
$b[%KAR3%]=%_kar3%; ^
$b[%KAR5%]=%_kar5%; ^
$b[%KAR7%]=%_kar7%; ^
$b[%ZOA3%]=%_zoa3%; ^
$b[%ZOA5%]=%_zoa5%; ^
$b[%ZOA7%]=%_zoa7%; ^
$b[%MAR3%]=%_mar3%; ^
$b[%MAR5%]=%_mar5%; ^
$b[%MAR7%]=%_mar7%; ^
$b[%KOR3%]=%_kor3%; ^
$b[%KOR5%]=%_kor5%; ^
$b[%KOR7%]=%_kor7%; ^
$b[%LUC3%]=%_luc3%; ^
$b[%LUC5%]=%_luc5%; ^
$b[%LUC7%]=%_luc7%; ^
$b[%POS3%]=%_pos3%; ^
$b[%POS5%]=%_pos5%; ^
$b[%POS7%]=%_pos7%; ^
$b[%RAZ3%]=%_raz3%; ^
$b[%RAZ5%]=%_raz5%; ^
$b[%RAZ7%]=%_raz7%; ^
$b[%ZAP3%]=%_zap3%; ^
$b[%ZAP5%]=%_zap5%; ^
$b[%ZAP7%]=%_zap7%; ^
$b[%ORC3%]=%_orc3%; ^
$b[%ORC5%]=%_orc5%; ^
$b[%ORC7%]=%_orc7%; ^
$b[%RAD3%]=%_rad3%; ^
$b[%RAD5%]=%_rad5%; ^
$b[%RAD7%]=%_rad7%; ^
$b[%FAR3%]=%_far3%; ^
$b[%FAR5%]=%_far5%; ^
$b[%FAR7%]=%_far7%; ^
$b[%MAC3%]=%_mac3%; ^
$b[%MAC5%]=%_mac5%; ^
$b[%MAC7%]=%_mac7%; ^
$b[%GLE3%]=%_gle3%; ^
$b[%GLE5%]=%_gle5%; ^
$b[%GLE7%]=%_gle7%; ^
$b[%GLE5_DH%]=%_gle5_dh%; ^
$b[%GLE7_DH%]=%_gle7_dh%; ^
$b[%LEE3%]=%_lee3%; ^
$b[%LEE5%]=%_lee5%; ^
$b[%LEE7%]=%_lee7%; ^
$b[%MIK3%]=%_mik3%; ^
$b[%MIK5%]=%_mik5%; ^
$b[%MIK7%]=%_mik7%; ^
$b[%HAR3%]=%_har3%; ^
$b[%HAR5%]=%_har5%; ^
$b[%HAR7%]=%_har7%; ^
$b[%JAN3%]=%_jan3%; ^
$b[%JAN5%]=%_jan5%; ^
$b[%JAN7%]=%_jan7%; ^
$b[%DRA3%]=%_dra3%; ^
$b[%DRA5%]=%_dra5%; ^
$b[%DRA7%]=%_dra7%; ^
$b[%STA3%]=%_sta3%; ^
$b[%STA5%]=%_sta5%; ^
$b[%STA7%]=%_sta7%; ^
$b[%SPR5%]=%_spr5%; ^
$b[%MOJ3%]=%_moj3%; ^
$b[%MOJ5%]=%_moj5%; ^
$b[%MOJ7%]=%_moj7%; ^
$b[%TUR3%]=%_tur3%; ^
$b[%TUR5%]=%_tur5%; ^
$b[%TUR7%]=%_tur7%; ^
$b[%NEO3%]=%_neo3%; ^
$b[%NEO5%]=%_neo5%; ^
$b[%NEO7%]=%_neo7%; ^
$b[%GRE3%]=%_gre3%; ^
$b[%GRE5%]=%_gre5%; ^
$b[%GRE7%]=%_gre7%; ^
$b[%SKE3%]=%_ske3%; ^
$b[%SKE5%]=%_ske5%; ^
$b[%SKE7%]=%_ske7%; ^
$b[%FUN3%]=%_fun3%; ^
$b[%FUN5%]=%_fun5%; ^
$b[%FUN7%]=%_fun7%; ^
$b[%IRE3%]=%_ire3%; ^
$b[%IRE5%]=%_ire5%; ^
$b[%IRE7%]=%_ire7%; ^
$b[%MEL3%]=%_mel3%; ^
$b[%MEL5%]=%_mel5%; ^
$b[%MEL7%]=%_mel7%; ^
$b[%LEA3%]=%_lea3%; ^
$b[%LEA5%]=%_lea5%; ^
$b[%LEA7%]=%_lea7%; ^
$b[%VAN3%]=%_van3%; ^
$b[%VAN5%]=%_van5%; ^
$b[%VAN7%]=%_van7%; ^
$b[%SNE3%]=%_sne3%; ^
$b[%SNE5%]=%_sne5%; ^
$b[%SNE7%]=%_sne7%; ^
$b[%STE3%]=%_ste3%; ^
$b[%STE5%]=%_ste5%; ^
$b[%STE7%]=%_ste7%; ^
$b[%DOC3%]=%_doc3%; ^
$b[%DOC5%]=%_doc5%; ^
$b[%DOC7%]=%_doc7%; ^
$b[%GRO3%]=%_gro3%; ^
$b[%GRO5%]=%_gro5%; ^
$b[%GRO7%]=%_gro7%; ^
$b[%PIE3%]=%_pie3%; ^
$b[%PIE5%]=%_pie5%; ^
$b[%PIE7%]=%_pie7%; ^
$b[%ORL3%]=%_orl3%; ^
$b[%ORL5%]=%_orl5%; ^
$b[%ORL7%]=%_orl7%; ^
$b[%GLIDEHOOKBATTLE%]=%_glidehookbattle%; ^
$b[%FERALCATSBATTLE%]=%_feralcatsbattle%; ^
$b[%FOREVERZEROBATTLE%]=%_foreverzerobattle%; ^
$b[%DASHSLASHBATTLE%]=%_dashslashbattle%; ^
$b[%GLIDEHOOK%]=%_glidehook%; ^
$b[%FERALCATS%]=%_feralcats%; ^
$b[%FOREVERZERO%]=%_foreverzero%; ^
$b[%DOUBLETAKE%]=%_doubletake%; ^
$b[%DRAGGYRIDER%]=%_draggyrider%; ^
$b[%DRAGONSPIKE%]=%_dragonspike%; ^
$b[%FLAMENCO%]=%_flamenco%; ^
$b[%PITCHBLACK%]=%_pitchblack%; ^
$b[%SWORDSTORM%]=%_swordstorm%; ^
$b[%TOSSEDSALAD%]=%_tossedsalad%; ^
$b[%VITALFORCE%]=%_vitalforce%; ^
$b[%XSTRIKE%]=%_xstrike%; ^
$b[%DELTAFORCE%]=%_deltaforce%; ^
$b[%ZSLASH%]=%_zslash%; ^
[System.IO.File]::WriteAllBytes($f,$b)"

REM Innate Cheatsheet
REM =================
echo Chrono Cross Innate Randomizer (By Zhadn): %time% >> cheatsheet.txt
echo ====================================================== >> cheatsheet.txt
echo. >> cheatsheet.txt
echo ===== Character Innates ===== >> cheatsheet.txt
echo Serge: White → %_serge% >> cheatsheet.txt
echo Kid: Red → %_kid% >> cheatsheet.txt
echo Guile: Black → %_guile% >> cheatsheet.txt
echo Norris: Yellow → %_norris% >> cheatsheet.txt
echo Nikki: Blue → %_nikki% >> cheatsheet.txt
echo Viper: Yellow → %_viper% >> cheatsheet.txt
echo Riddel: White → %_riddel% >> cheatsheet.txt
echo Karsh: Green → %_karsh% >> cheatsheet.txt
echo Zoah: Yellow → %_zoah% >> cheatsheet.txt
echo Marcy: Blue → %_marcy% >> cheatsheet.txt
echo Korcha: Blue → %_korcha% >> cheatsheet.txt
echo Luccia: Black → %_luccia% >> cheatsheet.txt
echo Poshul: Yellow → %_poshul% >> cheatsheet.txt
echo Razzly: Green → %_razzly% >> cheatsheet.txt
echo Zappa: Red → %_zappa% >> cheatsheet.txt
echo Orcha: Red → %_orcha% >> cheatsheet.txt
echo Radius: Green → %_radius% >> cheatsheet.txt
echo Fargo: Blue → %_fargo% >> cheatsheet.txt
echo Macha: Red → %_macha% >> cheatsheet.txt
echo Glenn: Green → %_glenn% >> cheatsheet.txt
echo Leena: Blue → %_leena% >> cheatsheet.txt
echo Miki: Red → %_miki% >> cheatsheet.txt
echo Harle: Black → %_harle% >> cheatsheet.txt
echo Janice: Red → %_janice% >> cheatsheet.txt
echo Draggy: Red → %_draggy% >> cheatsheet.txt
echo Starky: White → %_starky% >> cheatsheet.txt
echo Sprigg: Green → %_sprigg% >> cheatsheet.txt
echo Mojo: Black → %_mojo% >> cheatsheet.txt
echo Turnip: Green → %_turnip% >> cheatsheet.txt
echo NeoFio: Green → %_neofio% >> cheatsheet.txt
echo Greco: Red → %_greco% >> cheatsheet.txt
echo Skelly: Black → %_skelly% >> cheatsheet.txt
echo Funguy: Yellow → %_funguy% >> cheatsheet.txt
echo Irenes: Blue → %_irenes% >> cheatsheet.txt
echo Mel: Yellow → %_mel% >> cheatsheet.txt
echo Leah: Yellow → %_leah% >> cheatsheet.txt
echo Van: Green → %_van% >> cheatsheet.txt
echo Sneff: Yellow → %_sneff% >> cheatsheet.txt
echo Steena: White → %_steena% >> cheatsheet.txt
echo Doc: White → %_doc% >> cheatsheet.txt
echo Grobyc: Black → %_grobyc% >> cheatsheet.txt
echo Pierre: Blue → %_pierre% >> cheatsheet.txt
echo Orlha: Blue → %_orlha% >> cheatsheet.txt
echo Lynx: Black → %_lynx% >> cheatsheet.txt
echo. >> cheatsheet.txt
echo ===== Double Techs ===== >> cheatsheet.txt
echo DoubleTake: Red → %_doubletake% >> cheatsheet.txt
echo DraggyRider: Yellow → %_draggyrider% >> cheatsheet.txt
echo DragonSpike: Green → %_dragonspike% >> cheatsheet.txt
echo Flamenco: Red → %_flamenco% >> cheatsheet.txt
echo PitchBlack: Black → %_pitchblack% >> cheatsheet.txt
echo SwordStorm: Black → %_swordstorm% >> cheatsheet.txt
echo TossedSalad: Green → %_tossedsalad% >> cheatsheet.txt
echo VitalForce: White → %_vitalforce% >> cheatsheet.txt
echo X-Strike: Red → %_xstrike% >> cheatsheet.txt
echo. >> cheatsheet.txt
echo ===== Triple Techs ===== >> cheatsheet.txt
echo DeltaForce: White → %_deltaforce% >> cheatsheet.txt
echo Z-Slash: Blue → %_zslash% >> cheatsheet.txt
echo. >> cheatsheet.txt
echo ====================================================== >> cheatsheet.txt

REM Pretty Printing ^.^
REM ===================
powershell -Command "$txt = Get-Content 'cheatsheet.txt'; $txt -replace '0x04','Green' -replace '0x08','White' -replace '0x10','Black' -replace '0x20','Red' -replace '0x40','Yellow' -replace '0x80','Blue' | Set-Content 'cheatsheet.txt'"