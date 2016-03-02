select hospitals.hospital_name, nat_compare.measure_performance
from hospitals
left join
(
select provider_id,
sum(
case compared_to_national
when 'Worse than the National Rate'
then -1
when 'Better than the National Rate'
then 1
else 0
end) as measure_performance
from readmits
where compared_to_national <> 'Number of Cases Too Small'
and compared_to_national <> 'Not Available'
group by provider_id
) nat_compare
on (hospitals.provider_id = nat_compare.provider_id)
order by nat_compare.measure_performance desc
limit 10
;