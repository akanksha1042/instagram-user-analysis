# instagram-user-analysis
## Project Description  
User analysis is the process by which we track how users engage and interact with our digital product
(software or mobile application) in an attempt to derive business insights for marketing, product & 
development teams. These insights are then used by teams across the business to launch a new marketing 
campaign, decide on features to build for an app, track the success of the app by measuring user 
engagement and improve the experience altogether while helping the business grow. So I am working with 
the product team of Instagram and the product manager has asked me to provide insights on the questions 
asked by the management team. I am going to find out from this project is 1- Find the 5 oldest users of 
Instagram from the database provided.2-the users who have never posted a single photo on Instagram. 
3- Identify the winner of the contest and provide their details to the team 4-Identify and suggest the top 5 
most commonly used hashtags on the platform 6-What day of the week do most users register on? Provide 
insights on when to schedule an ad campaign
## Approach  
Firstly I identified the project and which methods should I apply to this.
The project is divided into two parts A) Marketing B) Investor metrics
For marketing there is a need FOR FINDING the most loyal users I apply limit 5, for inactive users to 
start posting I use left join. for declaring the contest winner I used users and photos table count, join, group 
by, and order by is used. for launching an AD campaign the team wants to know which day is best to 
launch ads I found that on which day most users register.
For Investor metrics, I found user engagement to test the Instagram is working properly like users are still 
active and posting on Instagram or to check bots and fake accounts by join , group by, and having clause.
## Tech-Stack Used
-MySQL Workbench versions 8.0 through 8.0.33.
-Purpose of using it-- is the most comprehensive offering of MySQL database software, services and 
support; it ensures that your business achieves the highest levels of reliability, security, and uptime.
## Result
This project aimed to enhance my SQL skills and provide hands-on practice with SQL JOIN, GROUP BY queries, and data analysis. The main objectives of this project were:

Finding the 5 Oldest Instagram Users: By utilizing the provided database, I successfully identified the five oldest users of Instagram.

Identifying Users with Zero Posts: I efficiently determined the users who had never posted a single photo on Instagram.

Contest Winner Identification: I accurately identified the winner of a contest and provided their details to the team.

Top 5 Most Commonly Used Hashtags: By analyzing Instagram data, I successfully identified and suggested the top five hashtags that were most commonly used on the platform. This was achieved through a combination of data extraction, counting, and sorting.

Ad Campaign Scheduling Insights: I provided valuable insights on when to schedule an ad campaign on Instagram. By analyzing user activity patterns, engagement rates, and peak usage times, I recommended optimal time slots for running ad campaigns.
[DataSet Link](https://drive.google.com/file/d/1adwFJ4cjhPjZ_rBcs-dyPwnO4OQUeaLo/view?usp=sharing)
