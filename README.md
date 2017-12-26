# fmmlib3d

Fork of the fmmlib3d v1.2 fast multipole method library from NYU

https://cims.nyu.edu/cmcl/fmm3dlib/fmm3dlib.html

## Installation on Mac OS X using gfortran and MATLAB

After following instructions on [Alec's Web
Log](http://www.alecjacobson.com/weblog/?p=4749) to install gfortran.

Issue:

    cd matlab/
    compile

## Original README

This is the first public release of the particle FMM library in R^3.
Date: April 13, 2012

Version 1.2 - First external release.

%% Copyright (C) 2009-2012: Leslie Greengard and Zydrunas Gimbutas
%% Contact: greengard@cims.nyu.edu
%% 
%% This program is free software; you can redistribute it and/or modify 
%% it under the terms of the GNU General Public License as published by 
%% the Free Software Foundation; either version 2 of the License, or 
%% (at your option) any later version.  This program is distributed in 
%% the hope that it will be useful, but WITHOUT ANY WARRANTY; without 
%% even the implied warranty of MERCHANTABILITY or FITNESS FOR A 
%% PARTICULAR PURPOSE.  See the GNU General Public License for more 
%% details. You should have received a copy of the GNU General Public 
%% License along with this program; 
%% if not, see <http://www.gnu.org/licenses/>.


src/ - Fortran source code
examples/ - Fortran testing drivers and makefiles
matlab/ - matlab scripts and mex files 
contrib/mwrap-0.33.3/ - mwrap source code

To test the library, please type 'make test'. 


Fortran
=======

Particle FMM routines.

hfmm3dpartself - Helmholtz particle FMM in R^3.
lfmm3dpartself - Laplace particle FMM in R^3.

hfmm3dparttarg - Helmholtz particle target FMM in R^3.
lfmm3dparttarg - Laplace particle target FMM in R^3.


Triangle FMM routines (constant densities on flat triangles).

hfmm3dtriaself - Helmholtz particle FMM in R^3.
lfmm3dtriaself - Laplace particle FMM in R^3.

hfmm3dtriatarg - Helmholtz particle target FMM in R^3.
lfmm3dtriatarg - Laplace particle target FMM in R^3.

Direct evaluation routines (constant densities on flat triangles).

h2dtriadirect - Helmholtz triangle interactions in R^3.
l2dtriadirect - Laplace triangle interactions in R^3.

Direct evaluation routines.

h2dpartdirect - Helmholtz particle interactions in R^3.
l2dpartdirect - Laplace particle interactions in R^3.



Matlab
======

% Helmholtz and Laplace FMMs in R^3.
%
% Triangle FMM routines (constant densities on flat triangles).
%   hfmm3dtria      - Helmholtz triangle FMM in R^3. 
%   lfmm3dtria      - Laplace triangle FMM in R^3.
%
% Particle FMM routines.
%   hfmm3dpart      - Helmholtz particle FMM in R^3.
%   lfmm3dpart      - Laplace particle FMM in R^3.
%
% Direct evaluation routines (constant densities on flat triangles).
%   h3dtriadirect  - Helmholtz triangle interactions in R^3.
%   l3dtriadirect  - Laplace triangle interactions in R^3.
%
% Direct evaluation routines (particles).
%   h3dpartdirect  - Helmholtz particle interactions in R^3.
%   l3dpartdirect  - Laplace particle interactions in R^3.
%
% Triangulations.
%   atriread - Retrieve Cart3d triangulation from a file. (flat)
%   atriwrite - Store Cart3d triangulation to a file. (flat)
%   atriproc - Process triangulations in Cart3d format. (flat)
%   atrirefine - Refine Cart3d triangulation. (flat)
%   atriplot - Plot Cart3d triangulation. (flat)
%
% Triangle FMM postprocessing routines (constant densities on flat triangles).
%   hfmm3dtriampf    - Helmholtz triangle FMM in R^3, targets only.
%
% Tree generation routines.
%   d3tstrcr - construct the logical structure for a fully adaptive FMM in R^3.
%   d3tstrcrem  - include empty boxes, min and max level restriction.
%   d3tgetb     - retrieve box information.
%   d3tgetl     - retrieve list information.
%
% Testing and debugging routines.
%   test_lfmm3dpart_direct - test Laplace particle FMM and direct routines.
%   test_hfmm3dpart_direct - test Helmholtz particle FMM and direct routines.
%   test_lfmm3dtria_direct - test Laplace triangle FMM and direct routines.
%   test_hfmm3dtria_direct - test Helmholtz triangle FMM and direct routines.
%
% Internal utility functions.
%   fmm3dprini   - initialize simple printing routines.
%

