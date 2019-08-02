#' demo.R
#' this is to get working and generally demo the 'big data' capabilities of
#' datastorr, as part of the CMEE MRES

#' #' Check to see if its empty as it should be on release
bigDataTest::mydata_versions()
#' it is, so move on to getting the first version out there
updateVersion()
bigDataTest::mydata_release('Test release', 'IUCN_Spatial.csv')


df <- read.csv('IUCN_Spatial.csv', header = T)
