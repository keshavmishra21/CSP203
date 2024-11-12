This project visualizes sales data for various products using GNUplot and shell scripts. We generate multiple plots to analyze product sales trends over time.

a) Plot Total Profit Over Months
    Generates a line plot showing total profit for each month. plot_a.pdf shows the plot.

    data.dat: Consists of data
    plot_a.p: GNUplot script
        Run: gnuplot plot_a.p

b) Plot Monthly Sales for Each Product
    Creates a line plot for each product, showing monthly sales with lines and points. plot_b.pdf shows the plot.

    data.dat: Consists of data
    plot_b.p: GNUplot script
        Run: gnuplot plot_b.p

c) Plot Facecream Sales with a Histogram
    Generates a red histogram to show monthly sales for Facecream. plot_c.pdf shows the plot.

    data.dat: Consists of data
    plot_c.p: GNUplot script
        Run: gnuplot plot_c.b

d) Plot Monthly Sales for the Top-Selling Product
    Generates a line plot for bathing soap. plot_d.pdf shows the plot.

    data.dat: Consists of data
    find_top_product.sh: Shell Script, to find out product that has the highest number of sales in a year
        Give executable permissions by: chmod +x find_top_product.sh
        Run: ./find_top_product.sh
    plot_d.p: GNUplot script
        Run: gnuplot plot_d.p

e) Show Yearly Total Sales for Each Product (Pie Chart)
    Displays total yearly sales for each product in a pie chart. plot_e.pdf shows the plot.

    data.dat: Consists of data
    plot_e.p: GNUplot script
        Run: gnuplot plot_e.p

f) Monthly Sales Stacked Plot for All Products
    Creates a stacked plot showing monthly sales for all products with a cumulative view. plot_f.pdf shows the plot.

    data.dat: Consists of data
    plot_f.p: GNUplot script
        Run: gnuplot plot_f.p

g) Compare Shampoo and Moisturizer Sales (Histogram)
    Plots a histogram comparing monthly sales for Shampoo and Moisturizer. plot_g.pdf shows the plot.

    data.dat: Consists of data
    plot_g.p: GNUplot script
        Run: gnuplot plot_g.p

h) Plot Top 3 Products with the Highest Sales
    Identifies the top 3 products by yearly sales and generates a line plot for each product over months. plot_h.p shows the plot.

    data.dat: Consists of data
    script.sh: Shell Script to find out the top three products that have the highest sales
        Give executable permissions by: chmod +x script.sh
        Run: ./script.sh
    top_3_products.dat: Data file that consists of the top 3 products
    plot_h.p: GNUplot script
        Run: gnuplot plot_h.p

i) Show June Sales for Each Product (Pie Chart)
    Creates a pie chart showing sales for each product in June. plot_i.pdf shows the plot.

    data.dat: Consists of data
    plot_i.p: GNUplot script
        Run: gnuplot plot_i.p
