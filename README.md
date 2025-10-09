# Case Study 1: Visualizing the Impact of Vaccination Programs on Infectious Diseases in the U.S.

This project visualizes the powerful impact of vaccination programs or herd immunization on reducing infectious disease rates across the United States.

**Background**:- In the 19th century, before herd immunization was achieved, diseases such as Measles , Smallpox and Polio caused widespread deaths. Although vaccines have since saved millions of lives, vaccine hesitancy and misinformation continue to pose public health risks. The retracted 1988 study falsely linking the MMR vaccine to autism contributed significantly to public distrust — despite overwhelming scientific evidence disproving the claim.
Using data from the Tycho Project, which includes weekly reported counts of seven major diseases from 1928–2011 across all 50 states, this project reconstructs a data visualization inspired by the Wall Street Journal. The analysis focuses on Measles incidence rates per 100,000 population, visualizing trends in Measles cases observed before and after the introduction of the Measles vaccine in 1963.

**Key highlights:**
1.	Cleaned and aggregated historical data using R by utilizing filter() and mutate() .
2.	Applied ggplot2 and RColorBrewer to design sequential colour palettes for effective communication and creating a tile plot by utilizing geom_tile(). Here the brightness of colour is used to display the change in rate/year.
3.	Demonstrated how clear visualizations can combat misinformation by showing the dramatic decline in disease rates post-vaccination and creating a vertical line for year = 1963 using xintercept = 1963 argument for geom_vline() i.e. the year when vaccination was introduced. This clearly shows how each state showed decline in measles cases drastically after introduction of the vaccine.

This visualization serves as a data-driven argument for the effectiveness of vaccination programs and the importance of communicating public health data transparently. This repository contains data visualization using R and it’s libraries. The ggplot2 library has been extensively used for plotting data using tile plot.

