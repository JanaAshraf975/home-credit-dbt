SELECT
    a.SK_ID_CURR,
    s.TARGET,
    s.AMT_INCOME_TOTAL,
    s.AMT_CREDIT,
    s.AMT_ANNUITY,
    s.AMT_GOODS_PRICE,
    s.EXT_SOURCE_1,
    s.EXT_SOURCE_2,
    s.EXT_SOURCE_3,
    s.OBS_30_CNT_SOCIAL_CIRCLE,
    s.DEF_30_CNT_SOCIAL_CIRCLE,
    s.OBS_60_CNT_SOCIAL_CIRCLE,
    s.DEF_60_CNT_SOCIAL_CIRCLE,
    s.DAYS_LAST_PHONE_CHANGE,
    s.AMT_REQ_CREDIT_BUREAU_HOUR,
    s.AMT_REQ_CREDIT_BUREAU_DAY,
    s.AMT_REQ_CREDIT_BUREAU_WEEK,
    s.AMT_REQ_CREDIT_BUREAU_MON,
    s.AMT_REQ_CREDIT_BUREAU_QRT,
    s.AMT_REQ_CREDIT_BUREAU_YEAR
FROM {{ ref('stg_home_credit') }} s

LEFT JOIN {{ ref('dim_applicant') }} a
    ON s.SK_ID_CURR = a.SK_ID_CURR

LEFT JOIN {{ ref('dim_employment') }} e
    ON s.SK_ID_CURR = e.SK_ID_CURR

LEFT JOIN {{ ref('dim_location') }} l
    ON s.SK_ID_CURR = l.SK_ID_CURR

LEFT JOIN {{ ref('dim_document') }} d
    ON s.SK_ID_CURR = d.SK_ID_CURR

LEFT JOIN {{ ref('dim_application') }} ap
    ON s.SK_ID_CURR = ap.SK_ID_CURR