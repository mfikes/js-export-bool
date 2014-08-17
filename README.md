js-export-bool
==============

Illustrates a problem with exporting BOOL properties to 32-bit JavaScriptCore

If you run this on a 32-bit simulator or device you will see that BOOL properties are exported as JavaScript number objects.
On the other hand, if you run it on a 64-bit simulator or device, the BOOL properties are exported as JavaScript boolean objects.

When you launch the app, it will log output to the console like this when 32-bit:

    2014-08-17 12:23:28.692 JSExportBOOL[23099:60b] JSC: 1
    2014-08-17 12:23:28.694 JSExportBOOL[23099:60b] JSC: number
    2014-08-17 12:23:28.694 JSExportBOOL[23099:60b] JSC: 0
    2014-08-17 12:23:28.694 JSExportBOOL[23099:60b] JSC: number
    2014-08-17 12:23:28.695 JSExportBOOL[23099:60b] JSC: true
    2014-08-17 12:23:28.695 JSExportBOOL[23099:60b] JSC: boolean
    2014-08-17 12:23:28.696 JSExportBOOL[23099:60b] JSC: false
    2014-08-17 12:23:28.696 JSExportBOOL[23099:60b] JSC: boolean

The first 4 lines show the results of accessing a true and false BOOL property (logging the value and its type). The subsequent 4 lines show similar results of accessing a JSValue property that is explicitly created using `valueWithBool`.

The header documentation for `JSExport.h` (http://opensource.apple.com/source/JavaScriptCore/JavaScriptCore-7537.65/API/JSExport.h) indicates:

    BOOL: values are converted consistently with valueWithBool/toBool.
    
So this appears to be a defect in the 32-bit JavaScriptCore iOS integration.
