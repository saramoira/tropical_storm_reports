# Topic Modeling Tropical Storm Discussions
Saramoira Shields

## Abstract
I used a Latent Dirichlet Allocation topic model to investigate and organize Tropical Storm Discussions from the National Hurricane Center into four categories: 
* Strong, dangerous landfalling storms (topic 1)
* Weaker landfalling and land-grazing storms (topic 2)
* Strong or stable storms with no landfall or land interaction (yet) (topic 3)
* Weakening or struggling storms with no landfall or land interaction (yet) (topic 4)

## Design 

I preprocessed my dataset using perl and SpaCy with a custom stopword list. I then tested multiple topic modeling algorithms, most notably NMF and LDA. I used GridSearch to initially select topics models, but found that manual inspection was more informative. Ultimately I settled on an LDA topic model with 4 topics, using tuned CountVectorizer parameters. 

## Data

* NASA’s [Forecast Discussions](https://ftp.nhc.noaa.gov/atcf/archive/MESSAGES/2012/dis/) for 2012-2021. The 2021 data is not on the NHC Forecast Discussion Archive yet, but can be dowloaded from [here](https://www.nhc.noaa.gov/archive/2021/).
* [Example discussion file](https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.005.shtml?).

## Outcome

* [LDA topic model using`CountVectorizer()` and 4 topics](https://htmlpreview.github.io/?https://github.com/saramoira/tropical_storm_reports/blob/main/lda_spacy_vis_4.html)

## Algorithms/Tools
This project used perl and SpaCy for initial preprocessing, pandas and geopandas for data cleaning and selection, as well as multiple tools from sklearn for vetorization, metric evaluations, and model selection. Matplotlib, cartopy, and pyLDAvis were used for visualization.
