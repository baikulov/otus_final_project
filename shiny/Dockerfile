FROM rocker/shiny
USER root
RUN sudo apt-get update
RUN sudo apt-get install -y libpq-dev 
COPY ./shinyapps/shiny_bigquery_monitoring/ /srv/shiny-server/
RUN chmod a+rwx /srv/shiny-server/a
# RUN mkdir /srv/shiny-server/keys
# RUN sudo chown shiny:shiny /srv/shiny-server/keys

# install renv & restore packages
RUN Rscript -e 'install.packages(c("bs4Dash", "httr", "DBI", "bigrquery", "dplyr", "echarts4r", "RPostgreSQL", "readr"))'