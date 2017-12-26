%

fortran_src_files = {'../src/lfmm3dtria.f'
'../src/hfmm3dtria.f'
'../src/hfmm3dpart.f'
'../src/lfmm3dpart.f'
'../src/lfmm3drouts.f'
'../src/hfmm3drouts.f'
'../src/d3tstrcr.f'
'../src/d3mtreeplot.f'
'../src/h3dterms.f'
'../src/helmrouts3d.f'
'../src/h3dtrans.f'
'../src/l3dterms.f'
'../src/laprouts3d.f'
'../src/l3dtrans.f'
'../src/triahquad.f'
'../src/triagauc.f'
'../src/prini.f'
'../src/prinm.f'
'../src/yrecursion.f'
'../src/projections.f'
'../src/triasymq.f'
'../src/l3dtrirouts.f'
'../src/h3dtrirouts.f'
'../src/triquadflatlib.f'
'../src/trilib.f'
'../src/rotviarecur3.f'
'../src/rotproj.f'
'../src/dfft.f'
'../src/cdjseval3d.f'
'../src/legeexps.f'};
%for i = 1:numel(fortran_src_files)
%  fortran_src_file = fortran_src_files{i};
%  mex(fortran_src_file,'-compatibleArrayDims','-c');
%end
fortran_object_files = cellfun( ...
  @(s) strrep(strrep(s,'../src/',''),'.f','.o'), ...
  fortran_src_files,'UniformOutput',false);

[~,libgfortran] = system('gfortran -print-file-name=libgfortran.dylib');
libgfortran = libgfortran(1:end-1);
%/usr/local/Cellar/gcc/7.2.0/lib/gcc/7/gcc/x86_64-apple-darwin16.7.0/7.2.0/../../../libgfortran.dylib
mex('fmm3d_r2012a.c',fortran_object_files{:},libgfortran);
