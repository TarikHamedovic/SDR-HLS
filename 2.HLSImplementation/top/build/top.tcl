prj_project new -name top -impl impl -impl_dir top_impl \
    -dev LFE5U-85F-6BG381C \
    -lpf top.lpf \
    -synthesis synplify
prj_src add "ecp5pll.sv"
prj_src add top.v
prj_impl option top top
prj_src add top.sdc
# (script_project placeholder)
prj_project save
prj_run Synthesis -impl impl
prj_run Translate -impl impl
prj_run Map -impl impl
prj_run PAR -impl impl
prj_run Export -impl impl -task Bitgen
# (script_after_export placeholder)