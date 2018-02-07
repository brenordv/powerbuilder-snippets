$PBExportHeader$uo_fileopen.sru
$PBExportComments$Opens a file with it's default application.
forward
global type uo_fileopen from nonvisualobject
end type
end forward

global type uo_fileopen from nonvisualobject
end type
global uo_fileopen uo_fileopen

type prototypes
FUNCTION long ShellExecuteW( ulong hWnd, string Operation, string lpFile, string  lpParameters, string lpDirectory, int nShowCmd ) LIBRARY "shell32.dll"
end prototypes
type variables
private:
	string is_null
	
public:
	string is_error_msg
end variables
forward prototypes
public function long uf_open (readonly string as_filename)
end prototypes

public function long uf_open (readonly string as_filename);/* uf_open
 * Opens a file (as_filename) with it's default application.
 *
 * Returns:
 * -1: Error
 * 
**/


long ll_ret

ll_ret = -1

try 
	ll_ret = ShellExecuteW(handle(THIS), "open", as_filename, is_null, is_null, 1)
catch (Exception e)
	//Saves the error message in the instance variable.
	this.is_error_msg = e.GetMessage()
end try


return ll_ret
end function

on uo_fileopen.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_fileopen.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;setNull(is_null)
end event

