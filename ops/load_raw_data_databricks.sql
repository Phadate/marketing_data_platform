-- FACEBOOK TABLES
CREATE OR REPLACE TABLE bronze_production.marketing_raw.facebook_ad_stats
AS SELECT *, _metadata.file_name AS _source_file, current_timestamp() AS _loaded_at
FROM read_files('/Volumes/bronze_production/marketing_raw/landing/facebook/ads_stats.csv',
                format => 'csv',
                header => true,
                inferColumnTypes => false);

CREATE OR REPLACE TABLE bronze_production.marketing_raw.facebook_ads
AS SELECT *, _metadata.file_name AS _source_file, current_timestamp() AS _loaded_at
FROM read_files('/Volumes/bronze_production/marketing_raw/landing/facebook/new_ads_de_randomized.csv',
                format => 'csv',
                header => true,
                inferColumnTypes => false);

CREATE OR REPLACE TABLE bronze_production.marketing_raw.facebook_ad_groups
AS SELECT *, _metadata.file_name AS _source_file, current_timestamp() AS _loaded_at
FROM read_files('/Volumes/bronze_production/marketing_raw/landing/facebook/new_adgroup_de_randomized.csv',
                format => 'csv',
                header => true,
                inferColumnTypes => false);

CREATE OR REPLACE TABLE bronze_production.marketing_raw.facebook_campaigns
AS SELECT *, _metadata.file_name AS _source_file, current_timestamp() AS _loaded_at
FROM read_files('/Volumes/bronze_production/marketing_raw/landing/facebook/new_campaign_de_randomized.csv',
                format => 'csv',
                header => true,
                inferColumnTypes => false);

CREATE OR REPLACE TABLE bronze_production.marketing_raw.facebook_accounts
AS SELECT *, _metadata.file_name AS _source_file, current_timestamp() AS _loaded_at
FROM read_files('/Volumes/bronze_production/marketing_raw/landing/facebook/new_acccount_de_randomized.csv',
                format => 'csv',
                header => true,
                inferColumnTypes => false);

-- SNAPCHAT TABLES
CREATE OR REPLACE TABLE bronze_production.marketing_raw.snapchat_ad_stats
AS SELECT *, _metadata.file_name AS _source_file, current_timestamp() AS _loaded_at
FROM read_files('/Volumes/bronze_production/marketing_raw/landing/snapchat/snapchat_ads_stats.csv',
                format => 'csv',
                header => true,
                inferColumnTypes => false);

CREATE OR REPLACE TABLE bronze_production.marketing_raw.snapchat_ads
AS SELECT *, _metadata.file_name AS _source_file, current_timestamp() AS _loaded_at
FROM read_files('/Volumes/bronze_production/marketing_raw/landing/snapchat/snapchat_ads_ad_history_new_ad_names.csv',
                format => 'csv',
                header => true,
                inferColumnTypes => false);

CREATE OR REPLACE TABLE bronze_production.marketing_raw.snapchat_ad_groups
AS SELECT *, _metadata.file_name AS _source_file, current_timestamp() AS _loaded_at
FROM read_files('/Volumes/bronze_production/marketing_raw/landing/snapchat/snapchat_ads_adgroup_history_new_ad_group_names.csv',
                format => 'csv',
                header => true,
                inferColumnTypes => false);

CREATE OR REPLACE TABLE bronze_production.marketing_raw.snapchat_campaigns
AS SELECT *, _metadata.file_name AS _source_file, current_timestamp() AS _loaded_at
FROM read_files('/Volumes/bronze_production/marketing_raw/landing/snapchat/snapchat_ads_campaign_history_new_campaign_names.csv',
                format => 'csv',
                header => true,
                inferColumnTypes => false);
