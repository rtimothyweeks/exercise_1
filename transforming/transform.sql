CREATE TABLE survey_fact
as
select
provider_number,
hospital_name,
address,
city,
state,
zip_code,
county_name,
int(substr(communication_with_nurses_dimension_score,1,1)) as nurse_com,
int(substr(communication_with_doctors_dimension_score,1,1)) as doc_com,
int(substr(responsiveness_of_hospital_staff_dimension_score,1,1)) as staff_resp,
int(substr(pain_management_dimension_score,1,1)) as pain_mgmt,
int(substr(communication_about_medicines_dimension_score,1,1)) as med_com,
int(substr(cleanliness_and_quietness_of_hospital_environment_dimension_score,1,1)) as clean,
int(substr(discharge_information_dimension_score,1,1)) as dis_inform,
int(substr(overall_rating_of_hospital_dimension_score,1,1)) as overall,
hcahps_base_score,
hcahps_consistency_score
from surveys
;
