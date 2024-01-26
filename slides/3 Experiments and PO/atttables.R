# This file generates tables for the ATE slides
# They are being generates as html and exported to pdf



library(knitr)
library(kableExtra)
library(webshot)
library(magick)
library(pdftools)

path <- "/Users/ben_elsner/github repos/causalinfUCD/slides/3 Experiments and PO/"

data <- data.frame(
  Person = 1:8,
  D = c(1, 1, 0, 1, 0, 0, 0, 1), # 1 for treated, 0 for untreated
  Treated = c(80, 75, 70, 85, 75, 80, 90, 85),
  Untreated = c(60, 70, 60, 80, 70, 80, 100, 80),
  Causal_Effect = c(20, 5, 10, 5, 5, 0, -10, 5)
)

custom_col_names <- c("Person", "D", "PO Treated \\(Y^1\\)", "PO Untreated \\(Y^0\\)", "Treatment Effect")


## blank table

html_table <- data %>%
  kable("html", escape = FALSE) %>%
  kable_styling(bootstrap_options = c("striped", "hover")) 


# Save the HTML table to a file
html_file <- paste0(path, "table.html")
writeLines(as.character(html_table), html_file)


# Convert the HTML file to an image
pdf_file <- paste0(path, "blanktable_raw.pdf")
webshot::webshot(html_file, pdf_file, zoom = 2, delay=2)# Delay to ensure any JS is finished

# Read the PDF
pdf_file <- magick::image_read_pdf(pdf_file, density=600)

# Trim the image to remove whitespace
trimmed_pdf <- magick::image_trim(pdf_file)

# Write the trimmed image back to a PDF file
trimmed_pdf_file <- paste0(path, "blanktable_trimmed.pdf") # specify your desired output path here
magick::image_write(trimmed_pdf, path = trimmed_pdf_file, format = "pdf")



#------------------------------------
## table 1


html_table <- data %>%
  kable("html", escape = FALSE) %>%
  kable_styling(bootstrap_options = c("striped", "hover")) %>%
  row_spec(which(data$D == 1), background = "lightblue")

# Save the HTML table to a file
html_file <- paste0(path, "table.html")
writeLines(as.character(html_table), html_file)

# Convert the HTML file to an image
pdf_file <- paste0(path, "table1.pdf")
webshot::webshot(html_file, pdf_file, zoom = 2, delay=2)# Delay to ensure any JS is finished

# Read the PDF
pdf_file <- magick::image_read_pdf(pdf_file, density=600)

# Trim the image to remove whitespace
trimmed_pdf <- magick::image_trim(pdf_file)

# Write the trimmed image back to a PDF file
trimmed_pdf_file <- paste0(path, "trimmed_table.pdf") # specify your desired output path here
magick::image_write(trimmed_pdf, path = trimmed_pdf_file, format = "pdf")

