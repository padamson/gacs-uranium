#!/bin/csh -x

set EXEC=/apps/nwchem/scripts/nwchem_run6.3
set SCR = $WORK_DIR

cd $SCR

set i = 1
while ($i <= 10)
  cp /home/padamson/Research/u3o8/cluster_$i.nw $SCR/.

  $EXEC cluster_$i.nw cluster_$i.out 16

  @ i++
end
