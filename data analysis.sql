SELECT*
FROM marketing_channel_efficiency_clean;

-- Channel wise CTR
SELECT channel,
	   ROUND(SUM(clicks)/SUM(impressions)*100,2) as ctr
FROM marketing_channel_efficiency_clean
GROUP BY channel
ORDER BY ctr DESCs
 

-- Channel Performance by cpc
SELECT channel,
	   ROUND(SUM(cost_inr)/NULLIF(SUM(conversions),0),2) as cpa
FROM marketing_channel_efficiency_clean
GROUP BY channel 
ORDER BY cpa



-- Channel wise CVR

SELECT channel,
	   ROUND(SUM(conversions)/SUM(clicks)*100,2) as cvr
FROM marketing_channel_efficiency_clean
GROUP BY channel
ORDER BY cvr DESC


-- channel wise roas
SELECT channel,
	   ROUND(SUM(revenue_inr)/SUM(cost_inr)*100,2) as roas
FROM marketing_channel_efficiency_clean
GROUP BY channel
ORDER BY roas DESC



-- Are conversion focus channel fullfiling thier goals ? high conversion is the goal
SELECT channel,
	   ROUND(SUM(conversions)/SUM(clicks)*100,2) as cvr
FROM marketing_channel_efficiency_clean
WHERE audience_type = 'Retargeting'
GROUP BY channel
ORDER BY cvr  DESC


-- Are awareness focus channel fullfiling thier goals ? high impressions are the goals
SELECT channel,
	   SUM(impressions) as impressions,
	   ROUND(SUM(impressions)*100/SUM(SUM(impressions)) OVER(),2) AS impressions_share
FROM marketing_channel_efficiency_clean
WHERE audience_type = 'Prospecting'
GROUP BY channel
ORDER BY impressions DESC 



-- Awareness goals

SELECT channel,
	   ROUND(SUM(impressions)*100/SUM(SUM(impressions)) OVER(),2) AS impressions_share,
	   ROUND(SUM(clicks)/SUM(impressions)*100,2) as ctr   
	   
FROM marketing_channel_efficiency_clean
WHERE audience_type = 'Prospecting'
GROUP BY channel
ORDER BY impressions_Share DESC 



-- conversion goal
SELECT channel,
	   ROUND(SUM(revenue_inr)/SUM(cost_inr)*100,2) as roas,
	   ROUND(SUM(conversions)/SUM(clicks)*100,2) as cvr,
	   ROUND(SUM(cost_inr)/NULLIF(SUM(conversions),0),2) as cpa	 
FROM marketing_channel_efficiency_clean
WHERE audience_type = 'Retargeting'
GROUP BY channel
ORDER BY roas DESC









