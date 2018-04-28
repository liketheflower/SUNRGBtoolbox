function [rgb,points3d,depthInpaint,imsize]=read3dPoints(data,abs_file_path)
         depth_file_name = strcat(abs_file_path,data.depthpath(17:end))
         %depthVis = imread(data.depthpath);
         depthVis = imread(depth_file_name);
         imsize = size(depthVis);
         depthInpaint = bitor(bitshift(depthVis,-3), bitshift(depthVis,16-3));
         depthInpaint = single(depthInpaint)/1000; 
         depthInpaint(depthInpaint >8)=8;
         rgb_path =strcat(abs_file_path,data.rgbpath(17:end))
         %[rgb,points3d]=read_3d_pts_general(depthInpaint,data.K,size(depthInpaint),data.rgbpath);
         [rgb,points3d]=read_3d_pts_general(depthInpaint,data.K,size(depthInpaint),rgb_path);
         points3d = (data.Rtilt*points3d')';
end