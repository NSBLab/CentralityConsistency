% This script will generate all the figures present in the paper that were
% generated based are the data obtained. Other figures were created
% manually in powerpoint using an excessive amount of autoshapes

% This script also uses colormaps from cbrewer

MAINPATH = 'C:\Users\Stuart\Dropbox\PhD\Centrality_code';

addpath(MAINPATH)

% Set the clusters to select for the clustering pictures

use_clusters = [4 3 5 10 8 6 6 3 6 5 7 8 3 3 4];

%% Initial setup of variable required
lines_colormap = lines(7);
netcolor{1} = lines_colormap(1,:);
netcolor{2} = lines_colormap(1,:);
netcolor{3} = lines_colormap(1,:);
netcolor{4} = lines_colormap(2,:);
netcolor{5} = lines_colormap(3,:);
netcolor{6} = lines_colormap(1,:);
netcolor{7} = lines_colormap(4,:);
netcolor{8} = lines_colormap(2,:);
netcolor{9} = lines_colormap(2,:);
netcolor{10} = lines_colormap(2,:);
netcolor{11} = lines_colormap(1,:);
netcolor{12} = lines_colormap(2,:);
netcolor{13} = lines_colormap(2,:);
netcolor{14} = lines_colormap(4,:);
netcolor{15} = lines_colormap(4,:);

%% Figure 2

MakeFigure2_top

MakeFigure2_bottom

%% Figure 3

MakeFigure3

%% Figure 4

MakeFigure4

%% Figure 5

MakeFigure5

%% Figure 6

MakeFigure6

%% Figure 7-8, S3-S15

MakeClusterFigures

%% Figure S1

MakeFigureS1