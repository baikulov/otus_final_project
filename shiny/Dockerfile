FROM rocker/shiny

RUN sudo apt-get update
RUN sudo apt-get install -y libpq-dev

# install renv & restore packages
RUN Rscript -e 'install.packages(c("bs4Dash", "httr", "DBI", "bigrquery", "dplyr", "echarts4r", "RPostgreSQL", "readr"))'