
##
## COVID-19 Cruise Ship Network Model
## Model Parameters
##
## Authors: Samuel M. Jenness
## Date: February 2020
##

# Mortality Rates ---------------------------------------------------------

# Rates per 100,000 for age groups: <1, 1-4, 5-9, 10-14, 15-19, 20-24, 25-29,
#                                   30-34, 35-39, 40-44, 45-49, 50-54, 55-59,
#                                   60-64, 65-69, 70-74, 75-79, 80-84, 85+
# source: https://www.statista.com/statistics/241572/death-rate-by-age-and-sex-in-the-us/
mortality_rate <- c(588.45, 24.8, 11.7, 14.55, 47.85, 88.2, 105.65, 127.2,
                    154.3, 206.5, 309.3, 495.1, 736.85, 1051.15, 1483.45,
                    2294.15, 3642.95, 6139.4, 13938.3)
# rate per person, per day
mr_pp_pd <- mortality_rate / 1e5 / 365

# Build out a mortality rate vector
age_spans <- c(1, 4, rep(5, 16), 1)
mr_vec <- rep(mr_pp_pd, times = age_spans)
