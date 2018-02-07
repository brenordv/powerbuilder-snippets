$PBExportHeader$uo_inherited.sru
forward
global type uo_inherited from uo_main
end type
end forward

global type uo_inherited from uo_main
end type
global uo_inherited uo_inherited

forward prototypes
public subroutine uf_function ()
public subroutine uf_function3 ()
public subroutine uf_function4 ()
end prototypes

public subroutine uf_function ();this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_inherited~t- uf_function"
end subroutine

public subroutine uf_function3 ();super::uf_function3()
this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_inherited~t- uf_function3"
end subroutine

public subroutine uf_function4 ();super::uf_function4();this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_inherited~t- uf_function4"
end subroutine

event constructor;call super::constructor;this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_inherited~t- constructor"
end event

on uo_inherited.create
call super::create
end on

on uo_inherited.destroy
call super::destroy
end on

event ue_event;call super::ue_event;this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_inherited~t- ue_event"
end event

