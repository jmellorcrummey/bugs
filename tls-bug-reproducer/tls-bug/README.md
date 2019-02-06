The command "make debug" will start laghos with mpi and hpcrun's debugging mode.  The program will be started by attaching gdb to an already launched process.  When gdb is attached, the program will be spinning inside hpctoolkit waiting for the attach. To clear the flag in hpcrun to terminate the spin, use the gdb command

	call hpcrun_continue()

Next, you can set breakpoints in gdb, e.g.

	b _dl_allocate_tls_init

Then, you can continue the program and debug as normal. The program will die inside the fourth call to  _dl_allocate_tls_init
