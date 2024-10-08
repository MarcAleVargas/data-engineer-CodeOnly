----------------------------------------------------------------------------------------------------
--Create Table--
----------------------------------------------------------------------------------------------------
create or replace view view_name as 

with table_1 as (

    select   
    item_number,
    item_desc, 
        ROW_NUMBER() OVER (  
        PARTITION BY item_number ORDER BY item_number DESC  
        )AS row_number  
        
    from
        library_name.table_name
)

    select
        *
        from table_1
            where row_number = 1  
;