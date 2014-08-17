js-export-bool
==============

Illustrates a problem with exporting BOOL properties to 32-bit JavaScriptCore

If you run this on a 32-bit simulator or device you will see that BOOL properties are exported as JavaScript number objects.
On the other hand, if you run it on a 64-bit simulator or device, the BOOL properties are exported as JavaScript boolean objects.
