library(shiny)
library(tidyverse)

ui <- navbarPage("Combat Simulator",
                 tabPanel("Central Composite Designs Problem Set",
                          h2('Notional Simulation'),
                          p('Note: This simulation is purely notional. Any numbers used or produced by it are not informed by anything in reality.'),
                          br(),
                          sidebarLayout(
                              sidebarPanel(
                                  fileInput("file.ccd", "Choose CSV File",
                                            accept = c(
                                                "text/csv",
                                                "text/comma-separated-values,text/plain",
                                                ".csv")
                                  ),
                                  helpText("Input file must have these columns: Gun, ATGM, Sensor, APS"),
                                  checkboxInput("header", "Header", TRUE),
                                  tags$hr(),
                                  downloadButton("downloadData.ccd", "Download Results")
                              ),
                              mainPanel(
                                  tableOutput("contents.ccd")
                              )
                          )
                 ),
                 
                 tabPanel("NOLH Problem Set",
                          h2('Notional Hyperparameter Tuning'),
                          p('Note: This simulation is purely notional. Any numbers used or produced by it are not informed by anything in reality.'),
                          br(),
                          sidebarLayout(
                              sidebarPanel(
                                  fileInput("file.nolh", "Choose CSV File",
                                            accept = c(
                                                "text/csv",
                                                "text/comma-separated-values,text/plain",
                                                ".csv")
                                  ),
                                  helpText("Input file must have these columns: alpha, beta, delta, eta, gamma"),
                                  checkboxInput("header", "Header", TRUE),
                                  tags$hr(),
                                  downloadButton("downloadData.nolh", "Download Results")
                              ),
                              mainPanel(
                                  tableOutput("contents.nolh")
                              )
                          )
                 ),
                 
                 tabPanel("Fractional Factorial Problem Set",
                          h1('Notional Simulation'),
                          p('Note: This simulation is purely notional.  Any numbers used or produced by it are not informed by anything in reality, they are simply for pedagogical purposes.'),
                          br(),
                          p('This simulation assesses the number of kils achieved by a future ground vehicle in a prescribed scenario.  You are a researcher considering the following eight design factors:'),
                          HTML(paste('<ul>',
                                     '<li>Speed: Vehicle speed in kph.  Generally 0-100 kph.</li>',
                                     '<li>Range: Vehicle range in km (i.e., on one tank of gas).  Generally 0-500km.</li>',
                                     '<li>Sensor: Choice of sensor.  May be either "Gen I" (coded as 0) or "Gen II" (coded as 1).</li>',
                                     '<li>Manned: The vehicle status as manned (coded as 0) or unmanned (coded as 1).</li>',
                                     '<li>Caliber: The vehicle main weapon caliber in mm.  Generally 0-200mm. </li>',
                                     "<li>Camoflauge: The vehicle's type of camoglauge.  It may either be standard (coded as 0) or fancy (coded as 1). </li>",
                                     "<li>Weapon Range: This is the vehicle's weapon's range in km.  Generally 0-5km. </li>",
                                     "<li>Sensor Range: This is the vehicle's sensor's range in km.  Generally 0-10km. </li>",
                                     "<li>Note: The simulation does not check to ensure you are in the above ranges.  Please check your inputs.",
                                     '</ul>',
                                     sep = ' ')
                               ),
                          sidebarLayout(
                              sidebarPanel(
                                  fileInput("file.ff", "Choose CSV File",
                                            accept = c(
                                                "text/csv",
                                                "text/comma-separated-values,text/plain",
                                                ".csv")
                                  ),
                                  helpText("Input file must have these columns in order: speed, range, sensor, manned, caliber, camoglauge, weapon.range, sensor.range"),
                                  checkboxInput("header.ff", "Header", TRUE),
                                  tags$hr(),
                                  downloadButton("downloadData.ff", "Download Results")
                              ),
                              mainPanel(
                                  tableOutput("contents.ff")
                              )
                          )
                 )
                 
)

server <- function(input, output) {
    
    ##################### CCD Problem Set ###################
    df.ccd <- reactive({
        inFile.ccd <- input$file.ccd
        if (is.null(inFile.ccd))
            return(NULL)                
        data.ccd <- read.csv(inFile.ccd$datapath, header = input$header)
        colnames(data.ccd) = tolower(colnames(data.ccd))
        data.ccd = data.ccd %>%
            mutate(
                asmin = ifelse(sensor<atgm, sensor, atgm), # if the sensor range is less than atgm range, it's the limiting facotr
                kills = 2*gun + 5*asmin + 5*aps + rnorm(nrow(data.ccd)))
        data.ccd %>% select(gun, atgm, sensor, aps, kills)
    })
    output$contents.ccd <- renderTable({
        df.ccd()
    })
    
    output$downloadData.ccd <- downloadHandler(
        filename = 'ccd_out.csv',
        content = function(file) {
            write.csv(df.ccd(), file, row.names = FALSE)
        }
    )
    
    ##################### NOLH Problem Set ###################
    df.nolh <- reactive({
        inFile.nolh <- input$file.nolh
        if (is.null(inFile.nolh))
            return(NULL)
        set.seed(0)
        coefs = runif(5, 0.1, 10)
        greek = runif(5)
        true_y = sum(coefs * greek)
        data.nolh <- read.csv(inFile.nolh$datapath, header = input$header)
        colnames(data.nolh) = tolower(colnames(data.nolh))
        data.nolh = data.nolh %>%
            mutate(error = abs(true_y - (coefs[1]*alpha + coefs[2]*beta + coefs[3]*delta + coefs[4]*eta + coefs[5]*gamma)))
        data.nolh
    })
    output$contents.nolh <- renderTable({
        df.nolh()
    })
    
    output$downloadData.nolh <- downloadHandler(
        filename = 'hyper_out.csv',
        content = function(file) {
            write.csv(df.nolh(), file, row.names = FALSE)
        }
    )
    
    ##################### Fractional Factorial Example ###################
    df.ff <- reactive({
        inFile.ff <- input$file.ff
        if (is.null(inFile.ff))
            return(NULL)                
        data.ff <- read.csv(inFile.ff$datapath, header = input$header.ff)
        ## My Model -- I want 8 total factors and five relevant factors, some 2nd order interactions, negligible first order
        # Col 1 = speed --> [0, 100] kph
        # Col 2 = range -->  [0, 500] km
        # Col 3 = sensor --> 0 (gen I), 1 (gen II) # Significant
        # Col 4 = manned --> 0 (manned), 1 (unmanned) # insignificant
        # Col 5 = caliber --> [0, 200] mm 
        # Col 6 = camoflauge --> 0 (standard), 1 (fancy) # insignificant
        # Col 7 = weapon.range --> [0, 5] km
        # Col 8 = sensor.range --> [0, 10] km
        #data.ff$Kills <- data.ff[, 1]^2 + data.ff[, 2] + rnorm(nrow(data), sd=20)
        data.ff <- data.ff %>% 
            mutate(Kills = 
                       speed*.05 + # 1 x kills for every additional 20 kph of speed
                       3*pnorm(range/500, mean = .45, sd = .1) + # roughly need about a min of 100 km range, but lose value beyond about 400 km
                       4*sensor + # 4 kills for having the gen II sensor
                       0*manned + # manned does nothing
                       3.5*pnorm(caliber/200, mean = .4, sd = .1) + # s curve on caliber
                       0*camoflauge + #camo does nothing
                       6*pmin(weapon.range, sensor.range) + # weapon range scales by 2.5, but is useless if longer than sensor range
                       4*ifelse(sensor == 1, 1, .5)*sensor.range/10  # get half the value of sensor range based on the sensor type
                       )
        error <- rnorm(nrow(data.ff), mean = 0, sd = 2.5)
        data.ff$Kills = data.ff$Kills + error
        data.ff
    })
    
    output$contents.ff <- renderTable({
        df.ff()
    })
    
    output$downloadData.ff <- downloadHandler(
        filename = 'fractional_factorial_results.csv',
        content = function(file.ff) {
            write.csv(df.ff(), file.ff, row.names = FALSE)
        }
    )
    
    
    ##################### Fractional Factorial Example ###################
    
}

# Run the application 
shinyApp(ui = ui, server = server)
