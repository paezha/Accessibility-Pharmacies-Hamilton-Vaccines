#' vaccHamilton
#'
#' vaccHamilton is a companion package for the paper "An examination of accessibility to pilot COVID-19 vaccination sites in Hamilton, Ontario".
#'
#' The package includes the data used in the analysis.
#'
#' Contains information licensed under the Open Government Licence – Canada (https://open.canada.ca/en/open-government-licence-canada).
#'
#' Contains public sector Data made available under the City of Hamilton’s Open Data Licence (https://www.hamilton.ca/city-initiatives/strategies-actions/open-data-licence-terms-and-conditions).
#'
#' @author Antonio Paez, \email{paezha@@mcmaster.ca}
#' @docType package
#' @name vaccHamilton
NULL

#' Hamilton CMA Dissemination Areas with Selected Census Information.
#'
#' Boundaries of the Dissemination Areas in Hamilton CMA.
#'
#' @format A simple features data frame with 1,199 rows and 25 variables:
#' \describe{
#'   \item{Population}{Population in the DA}
#'   \item{Households}{Number of households in DA}
#'   \item{GeoUID}{Unique identifier of the DA}
#'   \item{Type}{Geography type}
#'   \item{Shape Area}{Area of the shape}
#'   \item{Dwellings}{Number of dwellings in DA}
#'   \item{CSD_UID}{Census Subdivision (CSD) unique identifier}
#'   \item{CT_UID}{Census Tract (CT) unique identifier}
#'   \item{CMA_UID}{Census Metropolitan Area (CMA) unique identifier}
#'   \item{Region Name}{Name of the region within the CMA}
#'   \item{Area (sq km)}{Area of the DA in square kilometers}
#'   \item{v_CA16_190: 50 to 54 years}{Population age 50-54 in the DA}
#'   \item{v_CA16_208: 55 to 59 years}{Population age 55-59 in the DA}
#'   \item{v_CA16_226: 60 to 64 years}{Population age 60-64 in the DA}
#'   \item{v_CA16_247: 65 to 69 years}{Population age 65-69 in the DA}
#'   \item{v_CA16_265: 70 to 74 years}{Population age 70-74 in the DA}
#'   \item{v_CA16_283: 75 to 79 years}{Population age 75-79 in the DA}
#'   \item{v_CA16_301: 80 to 84 years}{Population age 80-84 in the DA}
#'   \item{v_CA16_319: 85 years and over}{Population 85 years and older in the DA}
#'   \item{v_CA16_2397: Median total income of households in 2015 ($)}{Median income of households in the DA}
#'   \item{v_CA16_5795: Car, truck, van - as a driver}{Number of people whose main mode of transportation to work in the DA is as drivers}
#'   \item{v_CA16_5801: Public transit}{Number of people whose main mode of transportation to work in the DA is transit}
#'   \item{v_CA16_5804: Walked}{Number of people whose main mode of transportation to work in the DA is walking}
#'   \item{geometry}{Geometry of boundaries}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @keywords Census
#' @keywords Canada
#' @name data_da_2016
#' @usage data(data_da_2016)
#' @source Statistics Canada
"data_da_2016"

#' Hamilton Residential Parcels.
#'
#' Residential parcels in the City of Hamilton have been approximated to the nearest point on the road network for travel time calculations.
#'
#' @format A simple features data frame with 139,444 rows and 4 variables:
#' \describe{
#'   \item{ID}{Unique identifier of parcel}
#'   \item{DAUID}{Unique identifier of the DA of the parcel}
#'   \item{TAZUID}{Unique identifier of the traffic analysis zone of the parcel, according to the GTA06 zoning system of the Transportation Tomorrow Survey}
#'   \item{Dwellings}{Number of dwellings (distinct residential unit) in parcel}
#'   \item{geometry}{Geometry of points}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords land use
#' @keywords Canada
#' @name dwelling_network_points_2016
#' @usage data(dwelling_network_points_2016)
#' @source Statistics Canada
"dwelling_network_points_2016"

#' Hamilton CMA.
#'
#' Boundary of the Hamilton CMA, in Ontario, Canada.
#'
#' @docType data
#' @keywords datasets
#' @keywords Census
#' @keywords Canada
#' @name hamilton_cma
#' @usage data(hamilton_cma)
#' @source Statistics Canada
"hamilton_cma"

#' Transportation for population in the age group 55 to 69 years old.
#'
#' Modes of transportation by traffic analysis zones for population in the age group 55 to 69 years old. The source data is a cross-tabulation of primary mode of travel by age by traffic analysis zone of the household.
#'
#' @format A simple features data frame with 234 rows and 5 variables:
#' \describe{
#'   \item{TAZUID}{Unique identifier of traffic analysis zone, according to the GTA06 zoning system of the Transportation Tomorrow Survey}
#'   \item{Driver}{Number of people whose mode of transportation was Auto driver}
#'   \item{Transit}{Number of people whose mode of transportation was Transit (excluding GO rail)}
#'   \item{Walk}{Number of people whose mode of transportation was walking}
#'   \item{geometry}{Geometry of points}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @keywords land use
#' @name modes_55to69
#' @usage data(modes_55to69)
#' @source Transportation Tomorrow Survey (http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction)
"modes_55to69"

#' Transportation for population in the age group 70 years and older.
#'
#' Modes of transportation by traffic analysis zones for population in the age group 70 years and older. The source data is a cross-tabulation of primary mode of travel by age by traffic analysis zone of the household.
#'
#' @format A simple features data frame with 234 rows and 5 variables:
#' \describe{
#'   \item{TAZUID}{Unique identifier of traffic analysis zone, according to the GTA06 zoning system of the Transportation Tomorrow Survey}
#'   \item{Driver}{Number of people whose mode of transportation was Auto driver}
#'   \item{Transit}{Number of people whose mode of transportation was Transit (excluding GO rail)}
#'   \item{Walk}{Number of people whose mode of transportation was walking}
#'   \item{geometry}{Geometry of points}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @keywords land use
#' @name modes_70plus
#' @usage data(modes_70plus)
#' @source Transportation Tomorrow Survey (http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction)
"modes_70plus"

#' Location of pharmacies offering COVID-19 vaccinations.
#'
#' Location of pharmacies offering COVID-19 vaccinations in the City of Hamilton.
#'
#' @format A simple features data frame with 20 rows and 3 variables:
#' \describe{
#'   \item{ID}{Unique identifier of pharmacy}
#'   \item{Location}{Address of pharmacy}
#'   \item{Type}{Type of location; "Pilot": those in the provincial pilot program; "Candidate": additional candidate location; "Existing for 70+": other vaccination sites available for people 70 y.o. and older}
#'   \item{geometry}{Geometry of points}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @keywords land use
#' @name pharmacy_locations
#' @usage data(pharmacy_locations)
#' @source Statistics Canada
"pharmacy_locations"

#' Travel Time Matrix Car
#'
#' Travel time matrix by car to pharmacies from nearest points on the network corresponding to residential parcels in Hamilton. This matrix was calculated using package \code{r5r} and a cutoff time of 180 minutes.
#'
#' @format A data frame with 3,913,784 rows and 3 variables:
#' \describe{
#'   \item{UID}{Unique identifier of parcel}
#'   \item{OBJECTID}{Unique identifier of pharmacy}
#'   \item{travel_time}{Travel time by car from parcel to pharmacy in minutes}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name ttm_car
#' @usage data(ttm_car)
"ttm_car"

#' Travel Time Matrix Transit
#'
#' Travel time matrix by transit to pharmacies from nearest points on the network corresponding to residential parcels in Hamilton. This matrix was calculated using package \code{r5r} and a cutoff time of 180 minutes.
#'
#'#' @format A data frame with 3,253,472 rows and 3 variables:
#' \describe{
#'   \item{UID}{Unique identifier of parcel}
#'   \item{OBJECTID}{Unique identifier of pharmacy}
#'   \item{travel_time}{Travel time by transit from parcel to pharmacy in minutes}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name ttm_transit
#' @usage data(ttm_transit)
"ttm_transit"

#' Travel Time Matrix Walking
#'
#' Travel time matrix by walking to pharmacies from nearest points on the network corresponding to residential parcels in Hamilton. This matrix was calculated using package \code{r5r} and a cutoff time of 180 minutes.
#'
#'#' @format A data frame with 1,945,374 rows and 3 variables:
#' \describe{
#'   \item{UID}{Unique identifier of parcel}
#'   \item{OBJECTID}{Unique identifier of pharmacy}
#'   \item{travel_time}{Travel time by transit from parcel to pharmacy in minutes}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name ttm_walk
#' @usage data(ttm_walk)
"ttm_walk"

#' Urban types
#'
#' Classification of regions by type: urban, suburban, and rural. This is based on the rural boundaries of the city, and the planning regions.
#'
#'#' @format A simple features data frame with 2 rows and 2 variables:
#' \describe{
#'   \item{Type}{Classification of the region: "Urban", "Suburban", "Rural"}
#'   \item{geometry}{Geometry of polygons}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name urban_types
#' @usage data(urban_types)
"urban_types"

