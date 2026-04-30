# By Right County Dashboard

A data-driven dashboard for analyzing the relationship between employment, housing, and commuting patterns across U.S. counties. This tool helps identify housing shortages, regional job centers, and demographic trends through interactive visualizations and statistical profiles.

## 🚀 Live Application
The app is hosted on **Sevalla** and can be accessed at:
**[byrightdashboard.kevinverhoff.com](https://byrightdashboard.kevinverhoff.com)**

## 🖋️ Project Context
This is a project of the **Byright Substack**, a semi-local blog that explores housing policy, planning, and the data that shapes our communities.
*   **Author:** Kevin Verhoff
*   **Substack:** [byright.substack.com](https://byright.substack.com)

---

## 📊 Features
- **Interactive Choropleth Maps:** Visualize metrics across Indiana, Illinois, Kentucky, Michigan, and Ohio.
- **Jobs-Housing Analysis:** Track ratios like Housing Units per Job and Jobs per Working Age Adult.
- **Commuter Flows:** Analyze net commuter flows, in-commuter job shares, and resident retention.
- **Demographic Profiles:** Explore age distributions and regional averages.
- **County Comparison:** Highlight a specific county to see its ranking and how it compares to its closest statistical "peers."

## 🛠️ Data Sources
The dashboard utilizes data from the **U.S. Census Bureau**:
- **ACS (American Community Survey):** Housing units, population, and detailed age bands.
- **QWI (Quarterly Workforce Indicators):** Employment and job counts.
- **LODES (LEHD Origin-Destination Employment Statistics):** Regional commuting patterns and flows.

## 💻 Tech Stack
- **Frontend:** [Streamlit](https://streamlit.io/)
- **Visualizations:** [Plotly](https://plotly.com/python/)
- **Data Processing:** Pandas, NumPy, Scipy (KDE)
- **Data Storage:** Apache Parquet

## 📁 Repository Structure
- `app.py`: The main Streamlit application logic.
- `metric_descriptions.json`: Plain-English definitions and metadata for all metrics.
- `jobs_housing_scraper.py`: Scripts to fetch and process ACS and QWI data.
- `lodes_scraper.py`: Scripts to fetch and aggregate commuter flow data.
- `county_jobs_housing.parquet` / `lodes_commuting.parquet`: Processed datasets.

## ⚙️ Local Setup
1. **Clone the repository.**
2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```
3. **Configure API Key:**
   To fetch or update data, you need a **U.S. Census API Key**.
   - Request a key here: [api.census.gov/data/key_signup.html](https://api.census.gov/data/key_signup.html)
   - Create a `.env` file in the project root:
     ```bash
     CENSUS_API_KEY=your_key_here
     ```
4. **Fetch Data (Optional):**
   The repository includes processed `.parquet` files, but you can refresh them using the scrapers:
   ```bash
   python jobs_housing_scraper.py
   python lodes_scraper.py
   ```
5. **Run the dashboard:**
   ```bash
   streamlit run app.py
   ```
---
*Questions or Feedback? Reach out via the [Byright Substack](https://byright.substack.com).*
