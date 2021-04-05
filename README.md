
<!-- README.md is generated from README.Rmd. Please edit that file -->

# An examination of the accessibility implications of a pilot COVID-19 vaccination program in Hamilton, Ontario

<!-- badges: start -->

<!-- badges: end -->

Antonio Páez (McMaster University)  
Christopher D. Higgins (University of Toronto Scarborough)

Paper submitted to *Transport Findings*

## Abstract

The province of Ontario in Canada announced the pilot for a new
vaccination program, with designated pharmacies across the province now
able to offer COVID-19 vaccines. The accessibility of this program
raises questions about the cost of travel and the distribution of the
cost among the population. In our examination of the City of Hamilton we
find that selected sites do not serve well the rural and urban
population of Hamilton, and that the associated cost of travel is
expected to be disproportionally borne by lower income populations.
Modest additions to the list of pilot sites in the city can
substantially alleviate this inequity.

## Keywords

  - COVID-19  
  - Vaccination sites
  - Accessibility  
  - Hamilton  
  - Ontario
  - Reproducible research

## Research Questions and Hypotheses

Along with the provision of health care facilities to treat severe cases
of COVID-19 (Pereira, Braga, et al. 2021), another front in the fight
against the pandemic is the rolling out of vaccination programs. The
Province of Ontario, in Canada, announced on April 1st 2021 the
expansion of a pilot program to offer vaccines in pharmacies in the City
of Hamilton. This program is in addition to dedicated vaccination
centers for people aged 70+. Twenty pharmacies in Hamilton were added to
an earlier list of 325 locations in other cities across the province,
and the program was extended to people aged 55 years old and over.

Critics were swift to point out that the list of pharmacies approved for
Hamilton by the province were mostly located in lower density parts of
the city that are not well serviced by transit and are difficult to
reach by foot. Indeed, as seen in Figure , a vast majority of the
pharmacies are in suburban Hamilton. The issue is somewhat less
clear-cut when we consider that Hamilton’s population skews suburban
(see Figure ). Given the target demographic for the program, it is
possible that suburban sites could be convenient for mature adults and
young old: the population aged 55 to 69 in Hamilton is approximately
58,710 suburban, 35,490 urban, and only 8,360 rural. Nevertheless, the
selection of sites by the province raises some important questions. As
Yu et al. (2021) note, good geographical coverage is a key element for a
successful vaccination campaign; at the same time, siting vaccinations
sites in car-oriented locations may introduce inequities in access.

In this research, we investigate the accessibility implications of the
sites selected for the pilot vaccination program. Concretely, we ask:

  - What is the estimated cost of travel to reach the vaccination sites,
    assuming that every person requires a vaccine?
  - What is the distribution of this cost across the population of the
    city?
  - How does the cost and its distribution change with the addition of
    candidate sites in urban Hamilton?

We concentrate on the 55 to 69 years old population segment because the
older 70+ group have access to other dedicated facilities besides those
in the provincial pilot.

<div class="figure" style="text-align: center">

<img src="README_files/figure-gfm/pharmacies-map-1.png" alt="\label{fig:pharmacies-and-regions}Regions with the City of Hamilton; the location of pharmacies in pilot is shown (black triangles) and urban locations for scenario analysis (white circles)"  />

<p class="caption">

Regions with the City of Hamilton; the location of pharmacies in pilot
is shown (black triangles) and urban locations for scenario analysis
(white circles)

</p>

</div>

<div class="figure" style="text-align: center">

<img src="README_files/figure-gfm/population-map-1.png" alt="\label{fig:population-map}Distribution of population age 55+ in the City of Hamilton"  />

<p class="caption">

Distribution of population age 55+ in the City of Hamilton

</p>

</div>

## Methods and Data

## Data

We use data from the following sources.

### Open Hamilton

From the open data portal of the City of Hamilton we obtained boundaries
for the city’s various regions (the definition of urban, suburban, and
rural regions follows the classification of development applications).

### Statistics Canada

Population and income statistics at the level of Dissemination Areas
(DAs) were retrieved using the package `cancensus` (von Bergmann,
Shkolnik, and Jacobs 2021). Dissemination Areas are the smallest
publicly available census geography in Canada. We use data from the 2016
Population Census.

### Transportation Tomorrow Survey

Data about modal split by age by place of residence were downloaded from
the Data Retrieval System of the Transportation Tomorrow Survey (TTS).
The data are geocoded at the level of Traffic Analysis Zones (TAZ).

### Other

The locations of pharmacies in the pilot were obtained from public
records and geocoded. Three urban sites not in the program were also
identified and geocoded for comparison purposes. In addition, we
converted all recorded residential parcels in the City of Hamilton to
points on the road network. Each point includes information about the
number of residential units in the parcel.

## Methods

We used the population aged 55 to 59 y.o. in each Dissemination Area to
calculate the average number of people per dwelling. This value was then
assigned proportionally to the number of dwellings per parcel. The
median total household income of the corresponding DAs was joined to the
parcels. In addition, we calculated the proportion of trips by mode from
the total number of trips by each of the three modes retrieved from the
TTS data. These proportions were joined to the parcel data based on
their corresponding TAZ. The package `r5r` (Pereira, Saraiva, et al.
2021) was used to calculate the travel time from each parcel to all
pharmacies by three modes: car, transit, and walking. For routing
purposes we used a cutoff value of 180 min and a maximum walking
distance of 10,000 m.

Once we obtained travel time tables with population, proportion of trips
by mode, and income information, we calculated the expected travel time
![ett](https://latex.codecogs.com/png.latex?ett "ett") from each parcel
![i](https://latex.codecogs.com/png.latex?i "i") to a pharmacy
![j](https://latex.codecogs.com/png.latex?j "j") as follows:   
![&#10;ett\_i = p^c\_i \\min(tt^c\_{ij}) + p^t\_i \\min(tt^t\_{ij}) +
p^w\_i
\\min(tt^w\_{ij})&#10;](https://latex.codecogs.com/png.latex?%0Aett_i%20%3D%20p%5Ec_i%20%5Cmin%28tt%5Ec_%7Bij%7D%29%20%2B%20p%5Et_i%20%5Cmin%28tt%5Et_%7Bij%7D%29%20%2B%20p%5Ew_i%20%5Cmin%28tt%5Ew_%7Bij%7D%29%0A
"
ett_i = p^c_i \\min(tt^c_{ij}) + p^t_i \\min(tt^t_{ij}) + p^w_i \\min(tt^w_{ij})
")  
where ![p^k\_i](https://latex.codecogs.com/png.latex?p%5Ek_i "p^k_i") is
the proportion of trips by mode
![k](https://latex.codecogs.com/png.latex?k "k") in the TAZ of parcel
![i](https://latex.codecogs.com/png.latex?i "i"), and
![tt^k\_{ij}](https://latex.codecogs.com/png.latex?tt%5Ek_%7Bij%7D
"tt^k_{ij}") is the vector of travel times from parcel
![i](https://latex.codecogs.com/png.latex?i "i") to the pharmacies. In
other words, the expected travel time is the weighted sum of travel
times to the nearest pharmacy, with the weights given by the expected
modal split in the TAZ.

The expected travel time ![i](https://latex.codecogs.com/png.latex?i
"i") was multiplied by the population in parcel
![i](https://latex.codecogs.com/png.latex?i "i") to obtain a measure of
person-hours of travel (![PHT](https://latex.codecogs.com/png.latex?PHT
"PHT")) as follows:   
![&#10;PHT\_i = P\_i\\cdot
ett\_i&#10;](https://latex.codecogs.com/png.latex?%0APHT_i%20%3D%20P_i%5Ccdot%20ett_i%0A
"
PHT_i = P_i\\cdot ett_i
")  

Please note that this paper is a reproducible research document (see
Brunsdon and Comber 2020) conducted using open source tools for
transportation analysis (Lovelace 2021). The code and data necessary to
reproduce the analysis are available in a public repository.

## Findings

The top panel of Figure  shows the average expected travel time by TAZ
in Hamilton. It is apparent that travel times tend to be lower in much
of suburban Hamilton, and higher in the urban core and some rural parts
of the city, particularly to the west. This is unsurprising, given the
higher probability of travel by car and the predominantly suburban
character of the vaccination sites. However, even accounting for the
distribution of population, this leads to large disparities in the
number of person-hours of travel across the city, with a concentration
of the burden of travel in the urban core and the rural west (see bottom
panel of Figure ).

The disparities are not trivial.

As seen in Table , under the pilot program approximately 36.42% of
people live in DAs in the bottom 40% of the median household income
scale, but they account for 51.98% of the total person-hours of travel.
In contrast, 44.5% of people aged 55 to 69 in DAs in the top 40% of the
median household income scale accrue only 35.03% of the total
person-hours of travel. Where the mean travel time of residents of DAs
with high median household income is 6 minutes, residents of lower
income DAs average 12 minutes in travel time. In addition to longer
average travel time, residents in lower income DAs also see
substantially larger variations in travel times, and some may face
considerably longer travel times (see top-left panel in Figure ).

There are also important disparities by region. As shown in Table , the
urban and rural populations in Hamilton are approximately 42.75% of the
population but they bear 69.25% of the total person-hours of travel,
with also much greater variability in expected travel times (Figure ,
bottom-left panel).

For comparison purposes we consider a scenario with some modest
additions to the list of pharmacies in the provincial pilot. We repeat
the analysis, but include the three urban sites shown in white circles
in Figure . The results of this scenario appear in the last two columns
of Table  and the two right panels of Figure . We begin by noting that
all income groups benefit from the addition of these three sites with
shorter mean trip durations; the most remarkable difference is the large
reduction in the disparities between residents in DAs with different
levels of income. The top-right panel of Figure  shows that the
distribution of expected travel time is now more in line for all income
groups, even if the bottom two income quintiles still have somewhat
wider spreads. With respect to the distribution of expected travel time
and person-hours of travel by region, unsurprisingly the addition of
three urban vaccination sites in the scenario makes a difference for
urban residents but not for rural residents.

The results indicate that the locations chosen by the province for the
pilot vaccination program do not serve well urban or rural residents of
the city, and there are some important questions regarding equity of
access to the program, with a disproportionate burden in the cost of
travel falling on lower income urban populations and rural populations.
A scenario did not consider candidate sites in a systematic way.
Nonetheless, selection of three sensible urban locations does much to
alleviate disparities in the burden of transportation. On the other
hand, unlike the urban context where there are numerous candidate
locations that could be chosen for a vaccination program, there are not
many candidate locations in rural regions of the city. Increasing access
in rural Hamilton likely will involve an expansion of existing mobile
vaccination pop-up clinics.

<div class="figure" style="text-align: center">

<img src="README_files/figure-gfm/figure-maps-baseline-1.png" alt="\label{fig:maps-baseline}Average expected travel time by TAZ (in minutes) and total person-hours of travel by TAZ."  />

<p class="caption">

Average expected travel time by TAZ (in minutes) and total person-hours
of travel by TAZ.

</p>

</div>

<table class="table" style="margin-left: auto; margin-right: auto;border-bottom: 0;">

<caption>

Distribution of person-hours of travel (PHT) by median total household
income and region: pilot locations only, and scenario with three urban
locations added

</caption>

<thead>

<tr>

<th style="empty-cells: hide;border-bottom:hidden;" colspan="2">

</th>

<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Pilot Program

</div>

</th>

<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Scenario

</div>

</th>

</tr>

<tr>

<th style="text-align:left;">

Group

</th>

<th style="text-align:center;">

Population

</th>

<th style="text-align:center;">

Total PHT

</th>

<th style="text-align:center;">

Hours per person

</th>

<th style="text-align:center;">

Total PHT

</th>

<th style="text-align:center;">

Hours per person

</th>

</tr>

</thead>

<tbody>

<tr grouplength="5">

<td colspan="6" style="border-bottom: 1px solid;">

<strong>Income Quintile</strong>

</td>

</tr>

<tr>

<td style="text-align:left; padding-left:  2em;" indentlevel="1">

Top 20%

</td>

<td style="text-align:center;">

23297.315

</td>

<td style="text-align:center;">

2243.857

</td>

<td style="text-align:center;">

0.096

</td>

<td style="text-align:center;">

2146.558

</td>

<td style="text-align:center;">

0.092

</td>

</tr>

<tr>

<td style="text-align:left; padding-left:  2em;" indentlevel="1">

Second 20%

</td>

<td style="text-align:center;">

22356.413

</td>

<td style="text-align:center;">

2471.952

</td>

<td style="text-align:center;">

0.111

</td>

<td style="text-align:center;">

2351.858

</td>

<td style="text-align:center;">

0.105

</td>

</tr>

<tr>

<td style="text-align:left; padding-left:  2em;" indentlevel="1">

Third 20%

</td>

<td style="text-align:center;">

19570.061

</td>

<td style="text-align:center;">

1749.497

</td>

<td style="text-align:center;">

0.089

</td>

<td style="text-align:center;">

1563.978

</td>

<td style="text-align:center;">

0.080

</td>

</tr>

<tr>

<td style="text-align:left; padding-left:  2em;" indentlevel="1">

Fourth 20%

</td>

<td style="text-align:center;">

17729.139

</td>

<td style="text-align:center;">

2928.959

</td>

<td style="text-align:center;">

0.165

</td>

<td style="text-align:center;">

1950.312

</td>

<td style="text-align:center;">

0.110

</td>

</tr>

<tr>

<td style="text-align:left; padding-left:  2em;" indentlevel="1">

Bottom 20%

</td>

<td style="text-align:center;">

19629.952

</td>

<td style="text-align:center;">

4068.548

</td>

<td style="text-align:center;">

0.207

</td>

<td style="text-align:center;">

2388.422

</td>

<td style="text-align:center;">

0.122

</td>

</tr>

<tr grouplength="3">

<td colspan="6" style="border-bottom: 1px solid;">

<strong>Region</strong>

</td>

</tr>

<tr>

<td style="text-align:left; padding-left:  2em;" indentlevel="1">

Rural

</td>

<td style="text-align:center;">

8356.963

</td>

<td style="text-align:center;">

1730.268

</td>

<td style="text-align:center;">

0.207

</td>

<td style="text-align:center;">

1730.242

</td>

<td style="text-align:center;">

0.207

</td>

</tr>

<tr>

<td style="text-align:left; padding-left:  2em;" indentlevel="1">

Suburban

</td>

<td style="text-align:center;">

58711.629

</td>

<td style="text-align:center;">

4138.482

</td>

<td style="text-align:center;">

0.070

</td>

<td style="text-align:center;">

4138.392

</td>

<td style="text-align:center;">

0.070

</td>

</tr>

<tr>

<td style="text-align:left; padding-left:  2em;" indentlevel="1">

Urban

</td>

<td style="text-align:center;">

35491.942

</td>

<td style="text-align:center;">

7588.590

</td>

<td style="text-align:center;">

0.214

</td>

<td style="text-align:center;">

4527.021

</td>

<td style="text-align:center;">

0.128

</td>

</tr>

</tbody>

<tfoot>

<tr>

<td style="padding: 0; " colspan="100%">

<span style="font-style: italic;">Note: </span>

</td>

</tr>

<tr>

<td style="padding: 0; " colspan="100%">

<sup></sup> The population totals differ due to small differences in the
classification of the regions

</td>

</tr>

</tfoot>

</table>

<div class="figure" style="text-align: center">

<img src="README_files/figure-gfm/figure-results-1.png" alt="\label{fig:results}Distribution of expected travel time for different population groups"  />

<p class="caption">

Distribution of expected travel time for different population groups

</p>

</div>

## References

<div id="refs" class="references">

<div id="ref-Brunsdon2020opening">

Brunsdon, Chris, and Alexis Comber. 2020. “Opening Practice: Supporting
Reproducibility and Critical Spatial Data Science.” *Journal of
Geographical Systems*, 1–20.
<https://doi.org/10.1007/s10109-020-00334-2>.

</div>

<div id="ref-Lovelace2021open">

Lovelace, Robin. 2021. “Open Source Tools for Geographic Analysis in
Transport Planning.” Journal Article. *Journal of Geographical Systems*.
<https://doi.org/10.1007/s10109-020-00342-2>.

</div>

<div id="ref-Pereira2021geographic">

Pereira, Rafael H. M., Carlos K. V. S. Braga, L. Mendes and Serra, P. B.
Amaral, N. Gouveia, and A. Paez. 2021. “Geographic Access to Covid-19
Healthcare in Brazil Using a Balanced Float Catchment Area Approach.”
Journal Article. *Social Science & Medicine* 273: 113773.
<https://doi.org/https://doi.org/10.1016/j.socscimed.2021.113773>.

</div>

<div id="ref-Pereira2021r5r">

Pereira, Rafael H. M., Marcus Saraiva, Daniel Herszenhut, Carlos Kaue
Vieira Braga, and Matthew Wigginton Conway. 2021. “R5r: Rapid Realistic
Routing on Multimodal Transport Networks with R<sup>5</sup> in R.”
*Findings*, March. <https://doi.org/10.32866/001c.21262>.

</div>

<div id="ref-vonBergmann2021cancensus">

von Bergmann, Jens, Dmitry Shkolnik, and Aaron Jacobs. 2021. *Cancensus:
R Package to Access, Retrieve, and Work with Canadian Census Data and
Geography*. <https://mountainmath.github.io/cancensus/>.

</div>

<div id="ref-Yu2021sustained">

Yu, J. H., H. J. Jeong, S. J. Kim, J. Y. Lee, Y. J. Choe, E. H. Choi,
and E. H. Cho. 2021. “Sustained Vaccination Coverage During the
Coronavirus Disease 2019 Epidemic in the Republic of Korea.” Journal
Article. *Vaccines* 9 (1): 8. <https://doi.org/10.3390/vaccines9010002>.

</div>

</div>
