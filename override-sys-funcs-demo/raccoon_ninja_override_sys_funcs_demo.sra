$PBExportHeader$raccoon_ninja_override_sys_funcs_demo.sra
$PBExportComments$Generated Application Object
forward
global type raccoon_ninja_override_sys_funcs_demo from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables

end variables
global type raccoon_ninja_override_sys_funcs_demo from application
string appname = "raccoon_ninja_override_sys_funcs_demo"
end type
global raccoon_ninja_override_sys_funcs_demo raccoon_ninja_override_sys_funcs_demo

on raccoon_ninja_override_sys_funcs_demo.create
appname="raccoon_ninja_override_sys_funcs_demo"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on raccoon_ninja_override_sys_funcs_demo.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_main)
end event

