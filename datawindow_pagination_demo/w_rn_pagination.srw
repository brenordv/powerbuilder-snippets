$PBExportHeader$w_rn_pagination.srw
forward
global type w_rn_pagination from window
end type
type st_2 from statictext within w_rn_pagination
end type
type em_lines from editmask within w_rn_pagination
end type
type cb_loaddw from commandbutton within w_rn_pagination
end type
type cb_next from commandbutton within w_rn_pagination
end type
type cb_prev from commandbutton within w_rn_pagination
end type
type cb_last from commandbutton within w_rn_pagination
end type
type cb_first from commandbutton within w_rn_pagination
end type
type dw_1 from datawindow within w_rn_pagination
end type
type shl_1 from statichyperlink within w_rn_pagination
end type
type st_1 from statictext within w_rn_pagination
end type
end forward

global type w_rn_pagination from window
integer width = 2693
integer height = 2040
boolean titlebar = true
string title = "Datawindow Pagination Demo"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "CreateLibrary5!"
boolean center = true
st_2 st_2
em_lines em_lines
cb_loaddw cb_loaddw
cb_next cb_next
cb_prev cb_prev
cb_last cb_last
cb_first cb_first
dw_1 dw_1
shl_1 shl_1
st_1 st_1
end type
global w_rn_pagination w_rn_pagination

type variables
long il_width, il_height
end variables
forward prototypes
private subroutine wf_load_dw (long al_qty_rows)
end prototypes

private subroutine wf_load_dw (long al_qty_rows);long i


for i = 1 to al_qty_rows
	dw_1.InsertRow(0)
	dw_1.SetItem(i, "id", i)
	dw_1.SetItem(i, "text", "Sample text... " + string(i))	
next

dw_1.AcceptText()
end subroutine

on w_rn_pagination.create
this.st_2=create st_2
this.em_lines=create em_lines
this.cb_loaddw=create cb_loaddw
this.cb_next=create cb_next
this.cb_prev=create cb_prev
this.cb_last=create cb_last
this.cb_first=create cb_first
this.dw_1=create dw_1
this.shl_1=create shl_1
this.st_1=create st_1
this.Control[]={this.st_2,&
this.em_lines,&
this.cb_loaddw,&
this.cb_next,&
this.cb_prev,&
this.cb_last,&
this.cb_first,&
this.dw_1,&
this.shl_1,&
this.st_1}
end on

on w_rn_pagination.destroy
destroy(this.st_2)
destroy(this.em_lines)
destroy(this.cb_loaddw)
destroy(this.cb_next)
destroy(this.cb_prev)
destroy(this.cb_last)
destroy(this.cb_first)
destroy(this.dw_1)
destroy(this.shl_1)
destroy(this.st_1)
end on

type st_2 from statictext within w_rn_pagination
integer x = 1157
integer y = 244
integer width = 517
integer height = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Fixedsys"
long textcolor = 33554432
long backcolor = 67108864
string text = "Lines to Add:"
boolean focusrectangle = false
end type

type em_lines from editmask within w_rn_pagination
integer x = 1673
integer y = 220
integer width = 517
integer height = 104
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Fixedsys"
long textcolor = 33554432
string text = "1000"
borderstyle borderstyle = stylelowered!
string mask = "#########"
string minmax = "20~~"
end type

type cb_loaddw from commandbutton within w_rn_pagination
integer x = 73
integer y = 220
integer width = 1042
integer height = 104
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Fixedsys"
string text = "Load DataWindow"
end type

event clicked;MessageBox("Hey, listen...", "Adding " + em_lines.text + " to the DataWindow...~r~nPlease, wait.", Information!)

//Adds 10000 lines to the DataWindow...
wf_load_dw(long(em_lines.text))

//Shows which row is selected...
dw_1.SetRowFocusIndicator(Hand!)

MessageBox("Hey, listen...", "Done!", Information!)
end event

type cb_next from commandbutton within w_rn_pagination
integer x = 1554
integer y = 460
integer width = 517
integer height = 104
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Fixedsys"
string text = "Next >"
end type

event clicked;dw_1.scrollNextPage()
end event

type cb_prev from commandbutton within w_rn_pagination
integer x = 603
integer y = 460
integer width = 517
integer height = 104
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Fixedsys"
string text = "< Previous"
end type

event clicked;dw_1.ScrollPriorPage()
end event

type cb_last from commandbutton within w_rn_pagination
integer x = 2085
integer y = 460
integer width = 517
integer height = 104
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Fixedsys"
string text = "Last >>"
end type

event clicked;dw_1.ScrollToRow(dw_1.rowcount())
end event

type cb_first from commandbutton within w_rn_pagination
integer x = 73
integer y = 460
integer width = 517
integer height = 104
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Fixedsys"
string text = "<< First"
end type

event clicked;dw_1.ScrollToRow(1)
end event

type dw_1 from datawindow within w_rn_pagination
integer x = 73
integer y = 580
integer width = 2528
integer height = 1208
integer taborder = 10
string title = "none"
string dataobject = "dw_ext_test"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type shl_1 from statichyperlink within w_rn_pagination
integer x = 1815
integer y = 1828
integer width = 786
integer height = 92
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Fixedsys"
boolean underline = true
string pointer = "HyperLink!"
long textcolor = 134217856
long backcolor = 67108864
string text = "http://raccoon.ninja"
boolean focusrectangle = false
string url = "http://raccoon.ninja"
end type

type st_1 from statictext within w_rn_pagination
integer x = 73
integer y = 28
integer width = 2030
integer height = 144
integer textsize = -18
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Fixedsys"
long textcolor = 33554432
long backcolor = 67108864
string text = "Datawindow Pagination Demo"
boolean focusrectangle = false
end type

