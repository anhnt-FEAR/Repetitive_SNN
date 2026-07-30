syn:
	genus -legacy_ui -no_gui -execute "source ./script/snpc.tcl; exit" 2>&1 | \
	tee run_syn.snpc.`date +%Y-%m-%d-%H%M%S`.log
power:
	genus -legacy_ui -no_gui -execute "source ./script/snpc_pw.tcl; exit" 2>&1 | \
	tee run_pw.snpc.`date +%Y-%m-%d-%H%M%S`.log
clean:
	rm -rf genus* reports output_files fv *~ *.log output_files_pw reports_pw
.PHONY: clean
