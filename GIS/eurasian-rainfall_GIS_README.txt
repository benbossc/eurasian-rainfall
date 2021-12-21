README: Last updated 2021-09-19

Folders
Maps: Contains maps and various drafts.
Legends: Contain legends and various drafts.
ne_50m_ocean: Derives from 10m ocean coastlines. Ocean polygon is the same as Bathymetry 0 (sea level). (see https://www.naturalearthdata.com/).
RussiaOblastBoundaries: Russian oblast SHP/GIS. See http://mydata.biz/ for download source.
World_Countries__Generalized_-shp: World Countries (generalized) represents generalized boundaries for the countries of the world. From Esri. See https://www.arcgis.com/home/item.html?id=170b5e6529064b8d9275168687880359
kaz_adm_2019_shp: Kazakhstan (KAZ) Administrative Boundary Common Operational Database (COD-AB) 
ukr_admbnda_adm1_q2_sspe_20171221: Ukrain Boundaries.

Files
eurasian-rainfall.qgz: Project file for QGIS
colormap.txt: Color code for REGEN data.
grid_prcp_1900-current.dat: TEST precipitation data.
grid_prcp_1900-current.gz: Test precipitation data.
kazakhstan-oblast.csv: Weather stations within Kazak oblasts of interest.
kz_stations.csv: All of Kazak weather stations.
rsm_stations.csv: All of Russian weather stations.
russia-oblast.csv: Weather stations within Russian oblasts of interest.
upm_stations.csv: All of Ukraine weather stations.
ukraine-oblast.csv: Weather stations within Ukraine oblasts of interest.
REGEN_AllStns_V1-2019_1950-2016_QualityMask.nc: A quality mask where the masked grids are of lower quality. According to Contractor et al. (2020), a "grid cell was left unmasked if it either contained at least 60 % of the days in every decade from 1950 to 2016 (7 in total) with at least one station, or both the grid cell coefficient of variation and kriging error were under the 95th percentile threshold of the 1950–2016 average coefficient of variation and 1950–2016 average kriging error respectively."

Due to size constraints, REGEN NetCDF (.nc) data not available in this folder (except for "REGEN_AllStns_V1-2019_1950-2016_QualityMask.nc"). 
REGEN data (1971-2016) can be extracted from the following:
https://researchdata.edu.au/rainfall-estimates-gridded-v1-2019/1408744 (DOI: 10.25914/5ca4c380b0d44)

Reference
Contractor, S., Donat, M. G., Alexander, L. V., Ziese, M., Meyer-Christoffer, A., Schneider, U., Rustemeier, E., Becker, A., Durre, I., and Vose, R. S.: Rainfall Estimates on a Gridded Network (REGEN) – a global land-based gridded dataset of daily precipitation from 1950 to 2016, Hydrol. Earth Syst. Sci., 24, 919–943, https://doi.org/10.5194/hess-24-919-2020, 2020.
