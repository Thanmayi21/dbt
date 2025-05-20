{{ config(materialized='table') }}

with region as (
select
	r_regionkey as region_id,
	r_name as name,
	r_comment as comment
from SOURCEDB.MK_MALL.regions
)
 
select * from region