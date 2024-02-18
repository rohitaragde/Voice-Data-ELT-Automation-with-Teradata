# SLIPSTREAM-AN AUTOMATED ELT PIPELINE FOR CUSTOMER'S VOICE AND DATA PLANS USING TERADATA BTEQ AND TPT UTILITIES

This repository contains the code and resources for the Slipstream project, which involves Extract, Load, and Transform (ELT) operations on a dataset containing both voice and data plans. The primary objective of this project is to develop a robust data model, perform data loading into Teradata tables, execute transformations to address data issues, and ultimately visualize the data using Tableau.

**Data Model**

The data model below shows the architecture of the slipsteam ELT project on the customer's voice and data plans we performed the ELT operation on using Teradata BTEQ and TPT utilities:-

![Data Model](Final_Data_Model.png)

**ELT Process**

The ELT process involves the following steps:<br>
**Extract:** Data is extracted from the Slipstream dataset.<br>
**Load:** The extracted data is loaded into Teradata tables using BTEQ and TPT scripts.<br>
**Transform:** Data transformations are performed to address any data issues and enhance the quality of the data.<br>
**Load (Final):** The transformed data is loaded into the final destination table.<br>
**Visualization:** The data is visualized using Tableau and Vertablo for comprehensive analysis and reporting.

**Scripts and Folders**

The repository includes the following folders and scripts where the several csv files gets stored as soon as the scripts gets executed and also there is a scripts folder which has the various set of scripts we have to perform the data load at landing and staging areas:-<br>

**Archived Data:** Contains archived data files.<br>
**Landing Data:** Holds the raw data files extracted from the Slipstream dataset.<br>
**Scripts:** Contains BTEQ and TPT scripts for data loading and transformations.<br>
**Reject:** Stores rejected CSV files during the transformation process.<br>
**Backup:** Stores backup files.<br>
**Logs:** Stores logs generated during the ELT process.<br>

**Tools and Technologies**
1) Teradata Tools and Utiities ( TTU)<br>
2) Teradata Studio<br>
3) VMWare<br>
4) Teradata BTEQ<br>
5) Teradata TPT<br>
6) Tableau<br>
7) Vertabelo<br>

**TestCases**

Test cases are documented in an Excel file to showcase the data before and after the transformations.<br>
These test cases serve as a reference to validate the effectiveness of the transformation process.<br>

**Contributors**

**Name:- Rohit Annasaheb Ragde**









