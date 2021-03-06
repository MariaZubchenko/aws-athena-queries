# If you want to know, which kms keys were in certain period (for example, in 2021 year)
# in certain account (for example, 123456789):
SELECT eventname, eventsource, resources, COUNT(*) # choice needed columns
FROM cloudtrail_logs000 # data base from S3 bucket cloudtrail_logs000
WHERE year = '2021' # period - year, month, day, time
        AND useridentity.arn LIKE '%123456789%' # account's arn
        GROUP BY eventname, eventsource, resources; # grouping objects

######

# If you want to know, which kms keys were in certain period (for example, in 2021 year)
# with certain eventname (for example, Decrypt):
SELECT eventname, eventsource, resources, COUNT(*) # choice needed columns
FROM cloudtrail_logs000  # data base from S3 bucket cloudtrail_logs000
WHERE year = '2021' # period - year, month, day, time
      AND eventname in ('Decrypt') # needed eventname
      GROUP BY eventname, eventsource, resources; # grouping objects

######

# If you want to know, which kms keys were in certain period (for example, in 2021 year and in January)
# with certain eventname (for example, Decrypt) in certain account (for example, 123456789):
SELECT eventname, eventsource, resources, COUNT(*) # choice needed columns
FROM cloudtrail_logs000 # data base from S3 bucket cloudtrail_logs000
WHERE year = '2021' # period - year, month, day, time
      AND month = '01' # period - year, month, day, time
      AND eventname in ('Decrypt') # needed eventname
      AND useridentity.accountID LIKE '%123456789%' # account's arn
      GROUP BY eventname, eventsource, resources; # grouping objects

######

# If you want to know, which kms keys were in certain period (for example, in 2021 year and in January)
# with certain eventsource (for example, kms.amazonaws.com) in certain account (for example, 123456789):
SELECT eventname, eventsource, resources, COUNT(*) # choice needed columns
FROM cloudtrail_logs000 # data base from S3 bucket cloudtrail_logs000
WHERE year = '2021' # period - year, month, day, time
      AND month = '01' # period - year, month, day, time
      AND eventsource in ('kms.amazonaws.com') # needed eventsource
      AND useridentity.accountID LIKE '%123456789%' # account's arn
      GROUP BY eventname, eventsource, resources; # grouping objects
