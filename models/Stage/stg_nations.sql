{{ config(materialized='table') }}

with nation as (
select
        n_nationkey as nation_id,
        n_regionkey as region_id,
        n_name as name,
        n_comment as comment
from SOURCEDB.MK_MALL.nations )
 
select * from nation