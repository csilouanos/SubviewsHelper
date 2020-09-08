# SubviewHelper

## What library contains
The current library contains the ```NibView``` that helps the programmer to create fast and easy subviews.

The current library is a subject to change. 

## How to use it
- Create a new swift class that inherits from the NibView
- Create a new xib view and put it preferably in the same folder of the source code
- Launch the new xib view (just created) and git the File's Owner element under Placeholder
- Under custom class paste the name of your swift source code file
- Important: Both files should have the same name
- Use regularly the subview such as the table view cells are used

## Important notes
In case there is a need to inherit from the implemented view (inherits from the NibView) without creating a new nib view you should override the ```prefferedXibFile``` method and pass the class of the initial subview.


