use tabla02 
delete for codigo_ent = space(3)
pack

use tabla03 
delete for codigo_ent+codigo_mie = space(11)
pack

use tabla04 
delete for numero_cpto = space(4)
pack

use tabla06 
delete for codigo_ban = space(3)
pack

use tabla07
delete for cuenta_ban = space(20)
pack

use tabla08 
delete for num+STR(numero_dep,8) = space(11)
pack

use tabla09
delete for num+STR(numero_che,8) = space(11)
pack

use tabla10
delete for codigo_ent+codigo_mie+numero_cpto = space(15)
pack

use tabla11
delete for numero_sal = 0
pack

use tabla12
delete for num_pre+codigo_par = space(12)
pack

use tabla14
delete for codigo_mov = space(3)
pack

use tabla15
delete for num+codigo_mov = space(6)
pack

use tabla16
delete for num_pre = space(2)
pack

use tablausu
delete for codigo_usu = space(6)
pack

use tempo01
dele all
pack

use tempo02
dele all
pack

use tempo03
dele all
pack

use tempo04
dele all
pack