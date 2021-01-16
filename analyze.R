### tratar os missings... colocar os empty stings como missings e não valid!
osa_simulated_523 <- read.csv(file = 'osa_simulated_523.csv', stringsAsFactors = TRUE)
head(osa_simulated_523)
str(osa_simulated_523)
osa_simulated_523
as.data.frame(osa_simulated_523)
install.packages("summarytools") ##only 1st time
install.packages("pander") ##only 1st time
install.packages("devtools") ##only 1st time
library(summarytools)
st_options(option = NULL,
           value = NULL,
           style = "simple",
           plain.ascii = FALSE, ###alterado de TRUE para FALSE for rmarkdown
           round.digits = 2,
           headings = TRUE,
           footnote = "default",
           display.labels = TRUE,
           bootstrap.css = TRUE,
           custom.css = NA,
           escape.pipe = FALSE,
           char.split = 12,
           freq.cumul = TRUE,
           freq.totals = TRUE,
           freq.report.nas = TRUE,
           freq.ignore.threshold = 25,
           freq.silent = FALSE,
           ctable.prop = "r",
           ctable.totals = TRUE,
           descr.stats = "all",
           descr.transpose = FALSE,
           descr.silent = FALSE,
           dfSummary.style = "multiline",
           dfSummary.varnumbers = TRUE,
           dfSummary.labels.col = TRUE,
           dfSummary.valid.col = TRUE,
           dfSummary.na.col = TRUE,
           dfSummary.graph.col = TRUE,
           dfSummary.graph.magnif = 1,
           dfSummary.silent = FALSE,
           tmp.img.dir = ".", ###st_options(tmp.img.dir = "."),
           subtitle.emphasis = TRUE,
           lang = "en",use.x11 = TRUE)
dfSummary(osa_simulated_523) ## ou o abaixo
## dfSummary(osa_simulated_523,
#round.digits = 1,
#varnumbers = st_options("dfSummary.varnumbers"),
#labels.col = st_options("dfSummary.labels.col"),
#valid.col = st_options("dfSummary.valid.col"),
#na.col = st_options("dfSummary.na.col"),
#graph.col = st_options("dfSummary.graph.col"),
#graph.magnif = st_options("dfSummary.graph.magnif"),
#style = st_options("dfSummary.style"),
#plain.ascii = st_options("plain.ascii"),
#justify = "l",
#col.widths = NA,
#headings = st_options("headings"),
#display.labels = st_options("display.labels"),
#max.distinct.values = 10,
#trim.strings = FALSE,
#max.string.width = 25,
#split.cells = 40,
#split.tables = Inf,
#tmp.img.dir = st_options("tmp.img.dir"),
#silent = st_options("dfSummary.silent"),
#)
## o acima dá o erro Error in "file" %in% names(dotArgs) :
## argument is missing, with no default
view(dfSummary(osa_simulated_523))

jmv::descriptives(
  formula = Gender + Depression + Headaches + Decreased.Libido + Smoking + Alcohol + Sedatives + Humor + Age.Cat + MI + Hypothyroidism + Coffee + Race + Dyslipidemia + Diabetes + CFA + CHF + Wit.Apneas + AF + Daytime.Sleepiness + Stroke + Renal.Failure + Genetics + GE.Reflux + Hypertension + AC.Cat + Driver + Snore + Chocking + ESS.Cat + Conc.decrease + NC.Cat + VehicleCrashes + Nocturia + RestlessSleep + PHT + RefreshingSleep + BMI.Cat ~ OSA,
  data = osa_simulated_523,
  bar = TRUE,
  mean = FALSE,
  median = FALSE,
  sd = FALSE,
  min = FALSE,
  max = FALSE)


library(knitr)
pandoc('input.md', format = 'latex') ##não sei o que deve substituir o input.md

##install.packages("tinytex")##only 1st time
##tinytex:::install_prebuilt() ## or
## tinytex::install_tinytex() ##only 1st time
##library(tinytex)
##latexmk(engine = xelatex, emulation = TRUE)
###latexmk(
  #file,
  #engine = c("pdflatex", "xelatex", "lualatex", "latex"),
  #bib_engine = c("bibtex", "biber"),
  #engine_args = NULL,
  #emulation = TRUE,
  #min_times = 1,
  #max_times = 10,
  #install_packages = emulation && tlmgr_writable(),
  #pdf_file = gsub("tex$", "pdf", file),
  #clean = TRUE
#)

## pdflatex(...)

## xelatex(...)

## lualatex(...)
