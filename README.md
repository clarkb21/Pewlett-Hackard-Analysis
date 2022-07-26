# Pewlett-Hackard-Analysis

## Purpose
- The large company has thousands of employees and the baby boomer generation is nearing retirement age. 
- The purpose of the project is to determine how many employees will be retiring soon to make sure the company can handle a lot of position vacancies. 

## Project Overview
- Using PostgreSQL and pgAdmin 4, I created and filtered tables to determine how many employees are eligible for retirement benefits.
- The results were categorized by department as well as title


### Challenge Overview
- An additional task was to determine employees that were eligible for the company mentorship program instead of going straight into retirement. 
- The data needed to be grouped by title of position, and then filtered for the appropriate age range. 


## Resources
- Data Source: Six Employee Data CSV files
- Software: pgAdmin 4 Version 6.8, PostgreSQL Version 11.16
- MSU Bootcamp Spot Module 7: https://courses.bootcampspot.com/courses/2508/pages/7-dot-0-1-exploring-databases-with-sql?module_item_id=635439

## Results

### Number of Retiring Employees by Title
- The company will have to prepare to fill many Senior Engineer and Senior Staff roles in the near future.
- They will not have to focus too much on filling positions at the Manager level or the Assistant Engineer level.

![image](https://user-images.githubusercontent.com/104038813/180308062-c7dfd420-d92d-46d5-b0c1-6b06967c482b.png)

### Employees Eligible for the Mentorship Program
- Based on the data, there is an abundance of eligible employees for the mentorship program for almost every leadership level.
- The mentorship program is designed for employees close to retirement age to take on less of a role while training the incoming leadership employees. 

![image](https://user-images.githubusercontent.com/104038813/180309365-fa7fd882-a28d-44ff-8dca-96a4e8318960.png)
![image](https://user-images.githubusercontent.com/104038813/180309420-4cda2647-ac5d-4bd2-b51b-0bca5816c8f7.png)
![image](https://user-images.githubusercontent.com/104038813/180309490-34cf3697-090d-4bb2-9579-fd276d305375.png)
![image](https://user-images.githubusercontent.com/104038813/180309549-701ccedb-71f8-4751-ac22-731f6c5cafbf.png)
![image](https://user-images.githubusercontent.com/104038813/180309632-96b8331e-6a8a-4550-adc1-cb1d2421f2d2.png)
![image](https://user-images.githubusercontent.com/104038813/180309676-a4c1fc0a-e9b3-49c5-b32e-487950456255.png)


## Summary
### How many roles will need to be filled as the "silver tsunami" begins to make an impact? 
-Using a query to count the unique titles from all employees in the specified range for nearing retirement(born between 1952 and 1955) it is calculated that 72,458 different roles will need to be filled within the company. 

![image](https://user-images.githubusercontent.com/104038813/180312027-4b02c0c0-eb95-4463-b7ae-8e78a9ea9e43.png)


### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 
- All 9 departments have qualified, retirement-ready employees with multiple different titles.
- The Development and Production departments have hundreds of potential engineer mentors, and several Senior Engineers as well.
- Customer Service, Production, Development, and Research departments also have positions with only a few potential mentors.
 
 ![image](https://user-images.githubusercontent.com/104038813/180316540-68380f15-65a1-4f88-a4fd-74f3e104c9df.png)
 
 
 - The total number of employees retiring by department is shown in the following table: 
 
 ![image](https://user-images.githubusercontent.com/104038813/180340299-c8e46484-64ff-42e4-acca-1b37e41d115a.png)
 
 - The total number of qualified mentors by department is shown in the following table: 
   1.  We can see that each department has plenty of potential mentors, with Development and Production having the most.
   2.  This data matches up with the total retirees table, which also has Prodcution and Devlopment with the majority.
 
 ![image](https://user-images.githubusercontent.com/104038813/180340935-945ff2ed-d72f-4c6f-bc66-52df03fd1b6c.png)


 
- The PostgreSQL query that delivered the above tables is included in the image below:

![image](https://user-images.githubusercontent.com/104038813/180317373-1bd2c5aa-3c3e-419e-ab78-ada826c3c057.png)

![image](https://user-images.githubusercontent.com/104038813/180341062-40ebc849-55e3-4c48-8831-829556632b2a.png)


