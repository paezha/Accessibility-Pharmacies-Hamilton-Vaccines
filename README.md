
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
of COVID-19 (Pereira et al. 2021), another front in the fight against
the pandemic is the rolling out of vaccination programs. The Province of
Ontario, in Canada, announced on April 1st 2021 the expansion of a pilot
program to offer vaccines in pharmacies in the City of Hamilton. This
program is in addition to dedicated vaccination centers for people aged
70+. Twenty pharmacies in Hamilton were added to an earlier list of 325
locations in other cities across the province, and the program was
extended to people aged 55 years old and over.

Critics were quick to point out that the list of pharmacies approved for
Hamilton were mostly located in lower density parts of the city that are
not well serviced by transit and are difficult to reach by foot. Indeed,
as seen in Figure , a vast majority of the pharmacies are in suburban
Hamilton. The issue is somewhat less clear cut when we consider that
Hamilton’s suburbs tend to be older (see Figure ). The population aged
55 to 69 in Hamilton is approximately 59,095 suburban, 35,704 urban, and
only 35,704 rural. Given the target demographic for the program, it is
possible that suburban sites could be convenient for mature and older
adults. Nevertheless, the selection of sites by the province raises some
important questions. As Yu et al. (2021) note, good geographical
coverage is a key element for a successful vaccination campaign; at the
same time, siting vaccinations sites in car-oriented locations may
introduce inequities in access.

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

<img src="README_files/figure-gfm/pharmacies-map-1.png" alt="\label{fig:pharmacies-and-regions}Location of pharmacies in pilot and regions with the City of Hamilton"  />

<p class="caption">

Location of pharmacies in pilot and regions with the City of Hamilton

</p>

</div>

<div class="figure" style="text-align: center">

<img src="README_files/figure-gfm/population-map-1.png" alt="\label{fig:population-map}Distribution of population age 55+ in the City of Hamilton"  />

<p class="caption">

Distribution of population age 55+ in the City of Hamilton

</p>

</div>

## Methods and Data

This paper is a reproducible research document (see Brunsdon and Comber
2020) conducted using open source tools for transportation analysis
(Lovelace 2021). All code and data necessary to reproduce the tables and
figures are available in a public repository.

## Findings

Words.

<div class="figure" style="text-align: center">

<img src="README_files/figure-gfm/figure-results-1.png" alt="\label{fig:results}Distribution of travel time (weighted by mode) for different population groups"  />

<p class="caption">

Distribution of travel time (weighted by mode) for different population
groups

</p>

</div>

<table class="table" style="margin-left: auto; margin-right: auto;border-bottom: 0;">

<caption>

Distribution of person hours travelled (PHT) by median total household
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

# References

<div id="refs" class="references">

<div id="ref-Brunsdon2020opening">

Brunsdon, Chris, and Alexis Comber. 2020. “Opening Practice: Supporting
Reproducibility and Critical Spatial Data Science.” *Journal of
Geographical Systems*, 1–20.

</div>

<div id="ref-Lovelace2021open">

Lovelace, Robin. 2021. “Open Source Tools for Geographic Analysis in
Transport Planning.” Journal Article. *Journal of Geographical Systems*.
<https://doi.org/10.1007/s10109-020-00342-2>.

</div>

<div id="ref-Pereira2021geographic">

Pereira, Rafael H. M., Carlos Kauê Vieira Braga, Luciana Mendes Servo,
Bernardo Serra, Pedro Amaral, Nelson Gouveia, and Antonio Paez. 2021.
“Geographic Access to Covid-19 Healthcare in Brazil Using a Balanced
Float Catchment Area Approach.” Journal Article. *Social Science &
Medicine* 273: 113773.
<https://doi.org/https://doi.org/10.1016/j.socscimed.2021.113773>.

</div>

<div id="ref-Yu2021sustained">

Yu, J. H., H. J. Jeong, S. J. Kim, J. Y. Lee, Y. J. Choe, E. H. Choi,
and E. H. Cho. 2021. “Sustained Vaccination Coverage During the
Coronavirus Disease 2019 Epidemic in the Republic of Korea.” Journal
Article. *Vaccines* 9 (1): 8. <https://doi.org/10.3390/vaccines9010002>.

</div>

</div>
