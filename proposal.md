# Tropical Storm Reports: Classification and Author Styles


## Question/need:
### What is the framing question of your analysis, or the purpose of the model/system you plan to build?

I'm interested in using NLP to organize Tropical Storm Discussions from the National Hurricane Center into 'positive' (meaning the storm is doing well) and 'negative' (the storm is struggling).

### Who benefits from exploring this question or building this model/system?

The trained model could help a lay person determine whether a future storm report  is one to be concerned about. 

## Data Description:
### What dataset(s) do you plan to use, and how will you obtain the data?

* NASA’s [Forecast Discussions](https://ftp.nhc.noaa.gov/atcf/archive/MESSAGES/2012/dis/) for 2012-2021. The 2021 data is not on the NHC Forecast Discussion Archive yet, but can be dowloaded from [here](https://www.nhc.noaa.gov/archive/2021/).

### What is an individual sample/unit of analysis in this project? What characteristics/features do you expect to work with?

* An individual sample is a single discussion file for a storm at a specific report time. [Example here](https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.005.shtml?).

## Tools:
### How do you intend to meet the tools requirement of the project?

I plan to use scikit-learn's NLP toolset to preprocess the data and run a classifier. 

### Are you planning in advance to need or use additional tools beyond those required?

I am not currently planning to use additional tools.

## MVP Goal:
### What would a minimum viable product (MVP) look like for this project?

Discussions grouped by similarity. 
