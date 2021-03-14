# big_data_ETL
Created DataFrames using PySpark to match production-ready tables from two big Amazon(AWS) customer review datasets, for home entertainment and video game reviews.  ETL on the two datasets was done in two separate Colab notebooks ('colab_notebooks' folder).  The DataFrames were transformed to fit the tables in the schema below, then pushed to an AWS Relational Database.  Sample verification and analysis queries performed in pgAdmin using SQL.
<img src="https://github.com/stuhunter4/big_data_ETL/blob/main/images/schema_ERD.png" alt="erd">
<hr>
<img src="https://github.com/stuhunter4/big_data_ETL/blob/main/images/pgAdmin_review_id_table.JPG" alt="review">
<p>Verification for home entertainment reviews in our RDS instance (SQL/verify.sql).  Other similar images in the 'images' folder.</p>
<img src="https://github.com/stuhunter4/big_data_ETL/blob/main/images/pgAdmin_vine_table.JPG" alt="vine">
<hr>
<img src="https://github.com/stuhunter4/big_data_ETL/blob/main/images/sql_helpful_v_total.JPG" alt="sql">
<p>One of the sample queries looking at the highest helpful votes against total votes for customer reviews, for the most recent year (SQL/query_bias.sql).</p>