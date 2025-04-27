# HealthCare_Stroke_

# Healthcare Data Analysis Project

This project contains a series of Jupyter Notebooks that perform various analyses on a healthcare dataset related to stroke prediction. The analyses include data processing, exploratory data analysis (EDA), demographic analysis, risk factor analysis, trend analysis, and data aggregation.  An attempt to integrate with a SQL database is also included.

## Project Overview

The primary goal of this project is to gain insights from healthcare data to better understand stroke risk factors, demographic patterns, and trends.  Each notebook focuses on a specific aspect of the analysis.

## Notebook Descriptions

1.  **Dataset Processing.ipynb**:
    * This notebook focuses on cleaning and preprocessing the raw healthcare dataset.
    * Key steps include:
        * Handling missing values.
        * Converting categorical variables to numerical format (e.g., gender mapping, encoding work type and smoking status).
        * Ensuring all data types are appropriate for analysis.
        * Saving the cleaned dataset (`cleaned_healthcare_dataset_stroke.csv`) for use in subsequent notebooks.

2.  **Exploratory Data Analysis (EDA).ipynb**:
    * Performs exploratory data analysis to understand the characteristics of the dataset.
    * Visualizations are used to identify patterns and relationships between variables.
    * Key analyses include:
        * Distributions of key variables (e.g., age, BMI, glucose level).
        * Correlations between numerical features.
        * Pairplots to visualize relationships between numerical variables, highlighting differences between stroke and non-stroke cases.

3.  **Demographic Analysis.ipynb**:
    * Analyzes the dataset from a demographic perspective.
    * Focuses on understanding how stroke occurrence varies across different demographic groups.
    * Key analyses include:
        * Gender distribution of stroke cases.
        * Stroke occurrence across different age groups.
        * Impact of work type and marital status on stroke.

4.  **Risk Factor Analysis.ipynb**:
    * Investigates potential risk factors associated with stroke.
    * Statistical tests are used to determine the significance of various factors.
    * Key analyses include:
        * Chi-square tests to assess the association between categorical variables and stroke.
        * Mann-Whitney U test to compare BMI between stroke and non-stroke groups.

5.  **Trend Analysis.ipynb**:
    * Examines trends in the data, particularly focusing on age-related patterns and the influence of heart disease.
    * Key analyses include:
        * Creating age groups to analyze stroke incidence across different life stages.
        * Analyzing the relationship between heart disease and stroke occurrence.

6.  **Data Aggregation and Grouping.ipynb**:
    * Focuses on aggregating and grouping data to provide summarized insights.
    * Key analyses include:
        * Calculating the average age of stroke patients.
        * Analyzing stroke rates by residence type.
        * Creating pivot tables to show stroke rates by age group and gender.

7.  **SQL Database Integration.ipynb**:
    * This notebook attempts to integrate the cleaned dataset with a MySQL database.
    * It includes code to:
        * Establish a connection to a MySQL database.
        * Load the cleaned dataset into a table.
        * **Note:** This notebook may require configuration of database credentials to function correctly.  It assumes you have a MySQL database set up and running.  You will need to replace the placeholder values for `username`, `password`, `host`, and `database_name` with your actual MySQL credentials.  The notebook uses `pymysql` as the MySQL driver.  You may need to install it (`pip install pymysql`).

## Dataset

The primary dataset used in these analyses is `healthcare_dataset_stroke.csv`, which is processed and cleaned in the `Dataset Processing.ipynb` notebook, resulting in `cleaned_healthcare_dataset_stroke.csv`.

## Libraries Used

The following Python libraries are used throughout the project:

* `pandas`: For data manipulation and analysis.
* `seaborn`: For data visualization.
* `matplotlib.pyplot`: For creating plots.
* `warnings`: For handling warnings.
* `scipy.stats`: For statistical tests (in Risk Factor Analysis).
* `sqlalchemy`: For database interaction (in SQL Database Integration).  Requires a MySQL database.

## Setup and Installation

1.  **Prerequisites:**
    * **Python:** Ensure you have Python 3.x installed. You can download it from [python.org](https://www.python.org/).
    * **Jupyter Notebook/JupyterLab:** It is recommended to use Jupyter Notebook or JupyterLab to run these notebooks.  If you don't have it, you can install it via pip:
        ```bash
        pip install notebook  # or  pip install jupyterlab
        ```
    * **MySQL Database (for `SQL Database Integration.ipynb`):** If you intend to run the `SQL Database Integration.ipynb` notebook, you'll need a MySQL database.  You can download and install MySQL Community Server from [mysql.com](https://dev.mysql.com/downloads/).  You'll also need to create a database (e.g., `stroke_db`) and have the necessary credentials (username, password, host).
    * **Required Python Libraries:** Install the necessary Python libraries using pip.  It's highly recommended to use a virtual environment to manage dependencies.  Here's how you can set up a virtual environment and install the libraries:
        ```bash
        python3 -m venv venv  # Create a virtual environment named "venv"
        source venv/bin/activate  # Activate the virtual environment (Linux/macOS)
        venv\Scripts\activate  # Activate the virtual environment (Windows)
        pip install pandas seaborn matplotlib scipy sqlalchemy pymysql  # Install the libraries
        ```
        If you only want to install the basic libraries (and skip the SQL part), you can use:
        ```bash
        pip install pandas seaborn matplotlib scipy
        ```

2.  **Download the Project:**
    * Download the notebooks and the dataset (`healthcare_dataset_stroke.csv`) to your local machine.  Make sure all the notebooks and the data file are in the same directory.

## Step-by-Step Instructions

1.  **Set up your environment:**
    * Open your terminal or command prompt.
    * Navigate to the directory where you downloaded the project files (the notebooks and the CSV file).
    * Activate the virtual environment (if you created one):
        ```bash
        source venv/bin/activate  # Linux/macOS
        venv\Scripts\activate  # Windows
        ```

2.  **Run the notebooks:**
    * Launch Jupyter Notebook or JupyterLab:
        ```bash
        jupyter notebook  # or jupyter lab
        ```
    * Your web browser will open, and you'll see the file directory.
    * Open the notebooks in the following order:
        1.  **Dataset Processing.ipynb**:
            * Run all the cells in this notebook.  This will generate the `cleaned_healthcare_dataset_stroke.csv` file.  This file is crucial for the other notebooks.
        2.  **Exploratory Data Analysis (EDA).ipynb**:
            * Run all the cells to perform exploratory data analysis.
        3.  **Demographic Analysis.ipynb**:
            * Run all cells to analyze demographic factors.
        4.  **Risk Factor Analysis.ipynb**:
            * Run all cells to analyze risk factors.
        5.  **Trend Analysis.ipynb**:
             * Run all cells to analyze trends.
        6.  **Data Aggregation and Grouping.ipynb**:
            * Run all cells to aggregate and group the data.
        7.  **SQL Database Integration.ipynb** (Optional):
            * **Important:** Before running this notebook, ensure your MySQL database is running and you have the correct credentials.
            * Open the notebook and modify the `db_url` string with your database information:
                ```python
                db_url = 'mysql+pymysql://your_username:your_password@your_host/your_database_name'
                ```
                Replace:
                * `your_username` with your MySQL username.
                * `your_password` with your MySQL password.
                * `your_host` with your MySQL host (e.g., `localhost` or an IP address).
                * `your_database_name` with the name of the database you want to use (e.g., `stroke_db`).
            * Run all the cells in this notebook.  This will create a table in your MySQL database and load the cleaned data into it.

3.  **View the results:**
    * The output of each notebook (tables, plots, etc.) will be displayed within the notebook itself.


## CREATED BY
### Akash Singh Rathour
