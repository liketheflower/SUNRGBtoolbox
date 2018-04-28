# SUNRGBtoolbox
it is based on the link below:
http://rgbd.cs.princeton.edu/data/SUNRGBDtoolbox.zip

# How to use it
I modified the Matlab demo code:

1. only vis the 2D bbox based on 2D image and 3D bbox based on cloud point data.
2. change the file name in the demo as it should be modified to make sure it works.

Enclosed is the vis results and also the modified toolbox.

How to use it:
1.download the toolbox attached and put the "Metadata" folder from original toolbox into this modified one. (the size of "Metadata" folder is too big, I will not attach it)

2. run demo_new.m instead of demo.m
3. change the absolute file path by changing the Line 5 of demo_new.m

abs_file_path = '/Users/jimmy/Dropbox/SUNRGBD'


% my full file path is:  

%'/Users/jimmy/Dropbox/SUNRGBD'+'/SUNRGBD/kv2/kinect2data/000037_2014-05-26_14-54-02_260595134347_rgbf000041-resize/image/0000041.jpg'


