#!/bin/bash

     	for fl in *.tex; do
     		cp $fl $fl.old
     		#
     		sed  -i 's/fianles/finales/g'  $fl
     		sed  -i 's/longitudes/costos/g'  $fl
     		sed  -i "s/las\ costos/los\ costos/g"  $fl
     		
     		sed  -i 's/longitud/costo/g'  $fl

     		sed  -i "s/la\ costo/el\ costo/g"  $fl
     		
     		sed  -i 's/priemro/primero/g'  $fl
     		
     		## tener en mente las dobles ""
     		sed  -i "s/simultaneamente/simult\\\'aneamente/g"  $fl
     		sed  -i "s/multiple/m\\\'ultiple/g"  $fl
     		sed  -i "s/parametro/par\\\'ametro/g"  $fl
     		sed  -i "s/v'ia/v\\\'ia/g"  $fl
     		sed  -i "s/biogeograf'ia/biogeograf\\\'ia/g"  $fl
     		sed  -i "s/calculo/c\\\'alculo/g"  $fl
     		sed  -i "s/c'alculo/c\\\'alculo/g"  $fl
     		sed  -i "s/capitulo/cap\\\'itulo/g"  $fl
     		sed  -i "s/'odigo/\\\'odigo/g"  $fl
     		sed  -i "s/crit'erio/crit\\\'erio/g"  $fl
     		sed  -i "s/indice/\\\'indice/g"  $fl
     		sed  -i "s/informaci'on/informaci\\\'on/g"  $fl
     		sed  -i "s/interfase/interfaz/g"  $fl
     		sed  -i "s/interface/interfaz/g"  $fl
     		sed  -i "s/interfazs/interfaz/g"  $fl
     		sed  -i "s/las\ interfaz/la\ interfaz/g"  $fl
     		sed  -i "s/jerarquico/jer\\\'arquico/g"  $fl
     		sed  -i "s/l'inea/l\\\'inea/g"  $fl
     		sed  -i "s/linea/l\\\'inea/g"  $fl
     		sed  -i "s/linux/Linux/g"  $fl
     		sed  -i "s/mas/m\\\'as/g"  $fl
     		sed  -i "s/m'as/m\\\'as/g"  $fl
     		sed  -i "s/multiples/m\\\'ultiples/g"  $fl
     		sed  -i "s/pagina/p\\\'agina/g"  $fl
     		sed  -i "s/arametro/ar\\\'ametro/g"  $fl
     		sed  -i "s/ar'ametro/ar\\\'ametro/g"  $fl
     		sed  -i "s/parentesis/par\\\'entesis/g"  $fl
     		sed  -i "s/par'entesis/par\\\'entesis/g"  $fl
     		sed  -i "s/par\\'entesis/par\\\'entesis/g"  $fl
     		sed  -i "s/peque~na/peque\\\~na/g"  $fl
     		sed  -i "s/m'orfismo/m\'orfismo/g"  $fl
     		sed  -i "s/morfismo/m\'orfismo/g"  $fl
     		sed  -i "s/politomico/polit\\\''omico/g"  $fl
     		sed  -i "s/prote\'ina/prote\\\'ina/g"  $fl
     		sed  -i "s/proteina/prote\\\'ina/g"  $fl
     		sed  -i "s/puedne/pueden/g"  $fl
     		sed  -i "s/rat\'on/rat\\\'on/g"  $fl
     		sed  -i "s/raton/rat\\\'on/g"  $fl
     		sed  -i "s/replica/r\\\'eplica/g"  $fl
     		sed  -i "s/suboptimo/sub\\\'optimo/g"  $fl
     		sed  -i "s/sub\'optimo/sub\\\'optimo/g"  $fl
     		sed  -i "s/tama\~no/tama\\\~no/g"  $fl
     		sed  -i "s/transformaci\'on/transformaci\\\'on/g"  $fl
     		sed  -i "s/versi\'on/versi\\\'on/g"  $fl
     		sed  -i "s/men\'u/men\\\'u/g"  $fl
     		sed  -i "s/menu/men\\\'u/g"  $fl
     		sed  -i "s/analisis/an\\\'alisis/g"  $fl
     		sed  -i "s/ingl\'es/ingl\\\'es/g"  $fl
     		sed  -i "s/untiples/ultiples/g"  $fl
     		sed  -i "s/replica/r\\\'eplica/g"  $fl
     		sed  -i "s/caracter/car\\\'acter/g"  $fl
     		sed  -i "s/Caracter/Car\\\'acter/g"  $fl
     		sed  -i "s/dialogo/di\\\'alogo/g"  $fl

     		ls  -s $fl
     	done
