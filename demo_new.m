addpath(genpath('.'))
load('./Metadata/SUNRGBDMeta.mat')
% my full file path is:
%'/Users/jimmy/Dropbox/SUNRGBD'+'/SUNRGBD/kv2/kinect2data/000037_2014-05-26_14-54-02_260595134347_rgbf000041-resize/image/0000041.jpg'      
abs_file_path = '/Users/jimmy/Dropbox/SUNRGBD'
imageId = 50;
data = SUNRGBDMeta(imageId);
[rgb,points3d,depthInpaint,imsize]=read3dPoints(data,abs_file_path);
%% draw 
figure,
rgb_path =strcat(abs_file_path,data.rgbpath(17:end))
imshow(rgb_path);
hold on; 
for kk =1:length(data.groundtruth3DBB)
    rectangle('Position', [data.groundtruth3DBB(kk).gtBb2D(1) data.groundtruth3DBB(kk).gtBb2D(2) data.groundtruth3DBB(kk).gtBb2D(3) data.groundtruth3DBB(kk).gtBb2D(4)],'edgecolor','y');
    text(data.groundtruth3DBB(kk).gtBb2D(1),data.groundtruth3DBB(kk).gtBb2D(2),data.groundtruth3DBB(kk).classname,'BackgroundColor','y')
end
%% draw 3D 
figure,
vis_point_cloud(points3d,rgb)
hold on;
for kk =1:length(data.groundtruth3DBB)
   vis_cube(data.groundtruth3DBB(kk),'r')
end

