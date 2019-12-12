FROM r-base:3.6.1

RUN apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    wget

RUN R -e "install.packages(c('shiny'), repos='http://cran.rstudio.com/')"

# Copy configuration files into the Docker image
ADD app.R /etc/shiny-server/
WORKDIR /srv/shiny-server/

EXPOSE 80

CMD ["R", "-e", "options('shiny.port'=80,shiny.host='0.0.0.0');shiny::runApp('app.R')"]
