run:
	pt_shell -f ./rm_pt_setup/pt.tcl | tee run-`date +%Y-%m-%d-%H%M%S`.log

.PHONY: clean
clean:
	-rm -rf reports results *.log *~ *.fsdb
