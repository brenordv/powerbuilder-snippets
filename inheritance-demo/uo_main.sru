$PBExportHeader$uo_main.sru
forward
global type uo_main from nonvisualobject
end type
end forward

global type uo_main from nonvisualobject
event ue_event ( )
end type
global uo_main uo_main

type variables
public protectedwrite string is_msgs[]
end variables

forward prototypes
public subroutine uf_function ()
public subroutine uf_function2 ()
public subroutine uf_function3 ()
public subroutine uf_function4 ()
end prototypes

event ue_event();this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_main~t- ue_event"
end event

public subroutine uf_function ();this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_main~t- uf_function"
end subroutine

public subroutine uf_function2 ();this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_main~t- uf_function2"
end subroutine

public subroutine uf_function3 ();this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_main~t- uf_function3"
end subroutine

public subroutine uf_function4 ();this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_main~t- uf_function4"
end subroutine

on uo_main.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_main.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;this.is_msgs[upperbound(this.is_msgs)+1] = string(UpperBound(this.is_msgs)) + " uo_main~t- constructor"
end event

