$PBExportHeader$w_new_messagebox.srw
forward
global type w_new_messagebox from window
end type
type cb_ok from commandbutton within w_new_messagebox
end type
type shl_more_info from statichyperlink within w_new_messagebox
end type
type p_icon from picture within w_new_messagebox
end type
type mle_message from multilineedit within w_new_messagebox
end type
type st_title from statictext within w_new_messagebox
end type
end forward

global type w_new_messagebox from window
integer width = 1463
integer height = 1100
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_ok cb_ok
shl_more_info shl_more_info
p_icon p_icon
mle_message mle_message
st_title st_title
end type
global w_new_messagebox w_new_messagebox

type variables
public: 
	Icon icc_icon
	string is_title
	string is_message
	string is_url

end variables

forward prototypes
public subroutine wf_set_message_parm (readonly string as_title, string as_msg, string as_url, readonly icon aic_icon)
private function string wf_get_icon_string (readonly icon aic_icon)
end prototypes

public subroutine wf_set_message_parm (readonly string as_title, string as_msg, string as_url, readonly icon aic_icon);this.title = as_title
st_title.text = as_title

mle_message.text = as_msg
shl_more_info.url = as_url

p_icon.picturename = wf_get_icon_string(aic_icon)
end subroutine

private function string wf_get_icon_string (readonly icon aic_icon);choose case aic_icon
	case Information!
		return "Information!"
		
	case StopSign!
		return "StopSign!"
		
	case Exclamation!	
		return "Exclamation!"
		
	case Question!
		return "Question!"
		
	case None!
		return "None!"		
end choose
end function

on w_new_messagebox.create
this.cb_ok=create cb_ok
this.shl_more_info=create shl_more_info
this.p_icon=create p_icon
this.mle_message=create mle_message
this.st_title=create st_title
this.Control[]={this.cb_ok,&
this.shl_more_info,&
this.p_icon,&
this.mle_message,&
this.st_title}
end on

on w_new_messagebox.destroy
destroy(this.cb_ok)
destroy(this.shl_more_info)
destroy(this.p_icon)
destroy(this.mle_message)
destroy(this.st_title)
end on

type cb_ok from commandbutton within w_new_messagebox
integer x = 549
integer y = 908
integer width = 343
integer height = 100
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "OK"
end type

event clicked;close(parent)
end event

type shl_more_info from statichyperlink within w_new_messagebox
integer x = 645
integer y = 796
integer width = 777
integer height = 56
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
string pointer = "HyperLink!"
long textcolor = 134217856
long backcolor = 67108864
string text = "Click here for more information"
boolean focusrectangle = false
end type

type p_icon from picture within w_new_messagebox
integer x = 27
integer y = 12
integer width = 101
integer height = 100
string picturename = "None!"
boolean focusrectangle = false
end type

type mle_message from multilineedit within w_new_messagebox
integer x = 32
integer y = 148
integer width = 1371
integer height = 624
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Message"
boolean border = false
boolean displayonly = true
end type

type st_title from statictext within w_new_messagebox
integer x = 142
integer y = 12
integer width = 1285
integer height = 112
integer textsize = -16
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Title"
boolean focusrectangle = false
end type

