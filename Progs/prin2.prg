* anula la barra de menues
set sysmenu off
_screen.WindowState = 2
_SCREEN.caption = "Sicei - Sistema Computarizado Eclesi?stico Integral ** Centro Cristiano Misionero Internacional El Olivar "
DEACTIVATE WINDOW "Project Manager"
DEACTIVATE WINDOW "Est?ndar"
LOCAL lcMainClassLib
LOCAL lcLastSetTalk,lcLastSetPath,lcLastSetClassLib,lcOnShutdown
lcOnShutdown="ShutDown()"
ON SHUTDOWN &lcOnShutdown
*-- Todas las variables p?blicas se liberar?n en cuanto se cree
*-- el objeto aplicaci?n.

IF SET('TALK') = 'ON'
  SET TALK OFF
  PUBLIC gcOldTalk
  gcOldTalk = 'ON'
ELSE
  PUBLIC gcOldTalk
  gcOldTalk = 'OFF'
ENDIF

PUBLIC gcOldDir, gcOldPath, gcOldClassLib, gcOldEscape, gTTrade, grut
gcOldEscape   = SET('ESCAPE')
gcOldDir      = FULLPATH(CURDIR())
gcOldPath     = SET('PATH')
gcOldClassLib = SET('CLASSLIB')

*-- Establecer la ruta de acceso de modo que podamos instanciar el objeto aplicaci?n
IF SetPath()
*close databases all
public gcuenta, gnumcta, gentidad, gmiembro, gpartida, gtipo, gpresup, gok, ;
       goperacion, gverif1, gbanco, gmovim, gentrada, gsalida, gfecha1, ;
       gtipoconcepto, gconcepto, gregistro, gmonto, gano, gmes, gmes2, gi, ;
       gregistros, gchequeo1, gopcion1, gsaldo, gingreso, gegreso, gnivel, ;
       ggrupo, gclase, gsexo, gnacion, gcargo, gdir1, gdir2, gtele, gapellido, ;
       gtrimestre, gedad, gedad2, gcondi, gcondi2, gtipoca, gcivil, ggrado, gfecha2, ;
       gpastorarea, gpastordistrito, gsupervisorg, gsupervisora, glider, ;
       glinea1, glinea2, gnombres, gopcion2, gencabezado1, gopcion3, gsem, ;
       gencabezado2, gfecha3, gmonto2, gescuela, ggrafico, gtitulo, gcontrol, ;
       gmescon, ganocon, gmesbau1, ganobau1, gmesbau2, ganobau2, ;
       gpdesde, gphasta, gclases, gtescuela, gcodigousu, gclave, gsede, gfoto, ;
       gencabezado3, gagregar, gtxn, gfirma, gchequeo2, gfotodir

public gmatcheque(1,2), gnmes(6), gniveles(4), gdias(13), gnombre(13), ;
       gmatriz(30,14)

*-- Configure application object.

wtope = 500
wfondo="images\fondo_efecto.png"
With _Screen
.AddObject("Imagen","Image")
.Imagen.Picture = wfondo
.Imagen.top = 20
.Imagen.left = 10
.Imagen.Visible = .T.
.AddObject("texto1","label")
.texto1.caption = "Desarrollado por:"
.texto1.top = wtope
.texto1.left = 50
.texto1.BackColor = RGB(255,255,255)
.texto1.AutoSize = .t.
.texto1.Visible = .T.
.AddObject("texto2","label")
.texto2.caption = "Miguel Seijas Software"
.texto2.top = wtope + 20
.texto2.left = 50
.texto2.BackColor = RGB(255,255,255)
.texto2.AutoSize = .t.
.texto2.Visible = .T.
.AddObject("texto3","label")
.texto3.caption = "Tlf: 0246-431.2352 0424-339.4188"
.texto3.top = wtope + 40
.texto3.left = 50
.texto3.BackColor = RGB(255,255,255)
.texto3.AutoSize = .t.
.texto3.Visible = .T.
.AddObject("texto4","label")
.texto4.caption = "e-mail: miguelseijas@gmail.com"
.texto4.top = wtope + 60
.texto4.left = 50
.texto4.BackColor = RGB(255,255,255)
.texto4.AutoSize = .t.
.texto4.Visible = .T.
ENDWITH

gfirma = "images\firma.jpg"
SET ENGINEBEHAVIOR 70 
SET STATUS BAR OFF
SET DELETE ON
SET EXCLUSIVE ON
set date to british
set century on
set decimals to 2
set point to ','
set separator to '.'
close databases all
open database datos1 
use tabla01 
use tabla02 
use tabla03 
use tabla04 
use tabla06 
use tabla07
use tabla08 
use tabla09
use tabla10
use tabla11
use tabla12
use tabla13
use tabla14
use tabla15
use tabla16
use tabla20
use tabla21
use tabla22
use tabla23
use tabla24
use tabla25
use tabla26
use tabla27
use tabla28
use tabla29
use tabla30
use tablausu
use tablafor
use tablave01
use tablave02
use tablave03
use tablave04
use tempo01
use tempo02
use tempo03
use tempo04
use tablaesta
use tablagraf

SET OLEOBJECT ON

do form login
With login
.AddObject("Imagen","Image")
.Imagen.Picture = wfondo
.Imagen.top = 20
.Imagen.left = 10
.Imagen.Visible = .T.
.AddObject("texto1","label")
.texto1.caption = "Desarrollado por:"
.texto1.top = wtope
.texto1.left = 50
.texto1.BackColor = RGB(255,255,255)
.texto1.AutoSize = .t.
.texto1.Visible = .T.
.AddObject("texto2","label")
.texto2.caption = "Miguel Seijas Software"
.texto2.top = wtope + 20
.texto2.left = 50
.texto2.BackColor = RGB(255,255,255)
.texto2.AutoSize = .t.
.texto2.Visible = .T.
.AddObject("texto3","label")
.texto3.caption = "Tlf: 0246-431.2352 0424-339.4188"
.texto3.top = wtope + 40
.texto3.left = 50
.texto3.BackColor = RGB(255,255,255)
.texto3.AutoSize = .t.
.texto3.Visible = .T.
.AddObject("texto4","label")
.texto4.caption = "e-mail: miguelseijas@gmail.com"
.texto4.top = wtope + 60
.texto4.left = 50
.texto4.BackColor = RGB(255,255,255)
.texto4.AutoSize = .t.
.texto4.Visible = .T.
ENDWITH
gfotodir = "\fotos\"
read events

if gok = 1
   do menuprin.mpr
   read events
   RELEASE gcOldDir, gcOldPath, gcOldClassLib, gcOldTalk, gcOldEscape
ENDIF
ENDIF

CLEAR DLLS
RELEASE ALL EXTENDED
CLEAR ALL

FUNCTION SetPath()
set path to ;data;forms;progs;reports;menus;fotos
ENDFUNC

FUNCTION ShutDown
Cleanup()
QUIT
ENDFUNC

FUNCTION Cleanup
ON ERROR
ON SHUTDOWN
SET CLASSLIB TO
SET PATH TO
CLEAR ALL
CLOSE ALL
RETURN
