rem SET OSGEO4W_ROOT=C:\Program Files\QGIS 2.18
SET OSGEO4W_ROOT=C:\Program Files (x86)\QGIS 2.18
SET QGIS_PREFIX=%OSGEO4W_ROOT%\apps\qgis
call "%OSGEO4W_ROOT%"\apps\grass\grass-7.2.2\etc\env.bat
SET PATH=%QGIS_PREFIX%\bin;%OSGEO4W_ROOT%\bin;%PATH%
SET PYTHONPATH=%QGIS_PREFIX%\python;%OSGEO4W_ROOT%\apps\Python27;%PYTHONPATH%
SET PYTHONHOME=%OSGEO4W_ROOT%\apps\Python27
python trayekDishub.py

pause