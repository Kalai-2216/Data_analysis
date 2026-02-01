# IPL Analytics Dashboard (Power BI)

## Project Overview
This project presents an interactive **IPL (Indian Premier League) Analytics Dashboard** built using **Power BI**.  
The dashboard provides insights into **team performance, batting trends, bowling analysis, and match outcomes** across IPL seasons.

The goal of this project is to demonstrate **data modeling, DAX calculations, visual storytelling, and dashboard design** using real-world sports data.

---

## Objectives
- Analyze overall IPL match performance  
- Identify top-performing teams, batsmen, and bowlers  
- Understand scoring and wicket patterns across overs  
- Explore dismissal types and bowling effectiveness  
- Create an interactive, user-friendly analytics dashboard  

---

## Dataset
**Source:** Kaggle – IPL Dataset  
- `matches.csv` – <a href="https://github.com/Kalai-2216/Data_analysis/blob/be42bca528335f15fde28467b74185dbb1dc9eb8/IPL%20%20Analysis/Assets/matches.csv">Dataset</a>  
- `deliveries.csv` – <a href="https://github.com/Kalai-2216/Data_analysis/blob/be42bca528335f15fde28467b74185dbb1dc9eb8/IPL%20%20Analysis/Assets/deliveries.csv">Dataset</a>

**Key Features:**
- Match results and teams  
- Ball-wise runs and wickets  
- Player performance details  
- Venue and season information  

---

## Data Cleaning & Preparation
Data cleaning was performed using **Power Query**:
- Removed unnecessary columns  
- Corrected data types  
- Handled null values  
- Standardized team and player names  
- Created a separate Date table for time-based analysis  

---

## Data Modeling
- Built a **star schema** model  
- One-to-many relationship between `matches` and `deliveries`  
- Created a separate **Teams** table for accurate aggregations  
- Single-direction filtering for optimized performance  

---

## DAX Measures
Some of the key DAX measures created:
- Total Matches  
- Total Runs  
- Total Wickets  
- Total 4s and 6s  
- Strike Rate  
- Economy Rate  
- Wins and Losses by Team  

All measures were organized in a dedicated **Measures table**.

---

## Dashboard Pages

### Page 1 – IPL Overview
- KPI cards (Matches, Runs, Wickets, Boundaries)  
- Matches won by each team  
- Toss decision analysis  
- Venue-wise match distribution  
- Team result analysis (Win/Loss)  

### Page 2 – Batting Analysis
- Top batsmen by total runs  
- Strike rate comparison  
- Boundaries (4s vs 6s) analysis  
- Runs scored by over  
- Season-wise batting trends  
- Dismissal type distribution  

### Page 3 – Bowling Analysis
- Top wicket-taking bowlers  
- Economy rate comparison  
- Wickets by over  
- Dismissal types by bowler  
- Season-wise bowling performance  

---

## Dashboard Design
- Theme inspired by **ICC Men’s Cricket World Cup 2023** colors  
- Consistent color palette across visuals  
- Clear typography and spacing  
- Interactive slicers and navigation buttons  
- Optimized number formatting and readability  

---

## Key Insights
- Powerplay and death overs contribute the highest runs and wickets  
- Certain teams show consistent dominance across seasons  
- Few batsmen and bowlers significantly outperform others  
- Caught and bowled are the most common dismissal types  
- Bowling economy plays a major role in match outcomes  

---

## Tools & Technologies
- **Power BI Desktop**  
- **Power Query**  
- **DAX**  
- **Microsoft Excel / CSV**  
- **GitHub**  

---

