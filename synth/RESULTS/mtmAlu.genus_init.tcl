#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 05/02/2020 20:12:59
#
#####################################################################


read_mmmc RESULTS/mtmAlu.mmmc.tcl

read_physical -lef {/cad/dk/umc180/SUS/SUSLIB_UCL_tech.lef /cad/dk/umc180/SUS/SUSLIB_UCL.lef}

read_netlist RESULTS/mtmAlu.v

init_design -skip_sdc_read
