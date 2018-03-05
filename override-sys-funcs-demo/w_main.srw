$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_4 from statictext within w_main
end type
type sle_url from singlelineedit within w_main
end type
type mle_message from multilineedit within w_main
end type
type ddplb_icon from dropdownpicturelistbox within w_main
end type
type sle_title from singlelineedit within w_main
end type
type st_3 from statictext within w_main
end type
type st_2 from statictext within w_main
end type
type st_1 from statictext within w_main
end type
type cb_go from commandbutton within w_main
end type
end forward

global type w_main from window
string tag = "Body of the Messagebox"
integer width = 2907
integer height = 1264
boolean titlebar = true
string title = "Alt. MessageBox Demo"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_4 st_4
sle_url sle_url
mle_message mle_message
ddplb_icon ddplb_icon
sle_title sle_title
st_3 st_3
st_2 st_2
st_1 st_1
cb_go cb_go
end type
global w_main w_main

type variables
Icon iic_icon
end variables

on w_main.create
this.st_4=create st_4
this.sle_url=create sle_url
this.mle_message=create mle_message
this.ddplb_icon=create ddplb_icon
this.sle_title=create sle_title
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.cb_go=create cb_go
this.Control[]={this.st_4,&
this.sle_url,&
this.mle_message,&
this.ddplb_icon,&
this.sle_title,&
this.st_3,&
this.st_2,&
this.st_1,&
this.cb_go}
end on

on w_main.destroy
destroy(this.st_4)
destroy(this.sle_url)
destroy(this.mle_message)
destroy(this.ddplb_icon)
destroy(this.sle_title)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_go)
end on

event open;ddplb_icon.SelectItem(1)
ddplb_icon.event SelectionChanged(1)

end event

type st_4 from statictext within w_main
integer x = 41
integer y = 800
integer width = 430
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "~"More Info~" URL"
boolean focusrectangle = false
end type

type sle_url from singlelineedit within w_main
string tag = "Url to be presented as ~"More Information~""
integer x = 41
integer y = 864
integer width = 2798
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "http://raccoon.ninja"
borderstyle borderstyle = stylelowered!
end type

type mle_message from multilineedit within w_main
integer x = 41
integer y = 356
integer width = 2798
integer height = 400
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "Default Message"
borderstyle borderstyle = stylelowered!
end type

type ddplb_icon from dropdownpicturelistbox within w_main
string tag = "Icon shown on the Messagebox"
integer x = 1701
integer y = 96
integer width = 1143
integer height = 400
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean sorted = false
boolean vscrollbar = true
string item[] = {"Information! (Default)","StopSign!","Exclamation!","Question!","None!"}
borderstyle borderstyle = stylelowered!
integer itempictureindex[] = {1,2,3,4,0}
string picturename[] = {"Information!","StopSign!","Exclamation!","Question!","None!"}
long picturemaskcolor = 536870912
end type

event selectionchanged;choose case index
	case 1
		iic_icon = Information!
		
	case 2
		iic_icon = StopSign!
		
	case 3
		iic_icon = Exclamation!
		
	case 4
		iic_icon = Question!
		
	case 5
		iic_icon = None!
		
end choose
end event

type sle_title from singlelineedit within w_main
string tag = "Title of the Messagebox"
integer x = 37
integer y = 96
integer width = 1294
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "Raccoon Ninja"
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_main
integer x = 1701
integer y = 20
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Icon"
boolean focusrectangle = false
end type

type st_2 from statictext within w_main
integer x = 41
integer y = 272
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Message"
boolean focusrectangle = false
end type

type st_1 from statictext within w_main
integer x = 37
integer y = 20
integer width = 402
integer height = 64
integer textsize = -10
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

type cb_go from commandbutton within w_main
integer x = 2514
integer y = 1020
integer width = 315
integer height = 92
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Show"
end type

event clicked;//Calls the MessageBox function...
MessageBox(sle_title.text, mle_message.text + "#" + sle_url.text, iic_icon)
end event

