Users can take the following steps to go through QCI flow under batch mode:
   a.) Un-tar the QRC LPE package in one directory.   
   b.) Un-tar the corresponding Calibre LVS deck package in another directory.
   c.) Copy the corresponding LVS rundeck onto the directory of step-b..
   d.) Turn on the switch - RCFLOW_QCI  in the LVS rundeck , then perform LVS run. 
   e.) Make a new directory - query_output ,invoke the following command to create QCI database in the directory - query_output.
 	> calibre -query svdb < query_QCI.txt | tee query.log
   f.) Use the LVS rundeck to create the lvsfile : 
        > calibre2qrc -keep_layer_name -r new_calibre_LVSfile:lvsfile
   g.) Get the corresponding layer_setup file from ./qcimap in the directory of step-b for use in the next step.  
   h.) Before performing QRC extraction flow, please use the script, techgen_scr, to do compilation in the directory of step-b. Please be noted that the layer setup file might need to be changed.
       Users would see two new files, RCXspiceINIT and RCXdspfINIT upon completion of compilation.
       If the options, shown in the line beginning with CAPGENOPTS on the bottom of the file, RCXspiceINIT or RCXdspfINIT, don't meet your need caused by customized devices in LVS rundeck, users have to run the script to do compilation again after adjusting options.
   i.) Invoke the following command to do RC extraction. 
	> qrc -cmd QCI_qrc_cmd. The template of qrc command file - QCI_qrc_cmd can be found in ./lpecmd in the directory of step-b.

