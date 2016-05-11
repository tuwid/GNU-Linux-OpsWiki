Extending monitors with `xrandr`

Happens often that we need to change our display on the fly and the easiest way is by using the XRandR (X Resize and Rotate) command which allows dynamic control over our outputs, resolutions, orientation and adding new displays on-the-fly without reseting the X server.

Firstly we query our hardware:

$ xrandr -q

After checking the output, let's suppose that you have a laptop which panel is LVDS and an external VGA port which we will regard as VGA, we execute:

$ xrandr --output VGA --mode 1280x1024 --right-of LVDS

