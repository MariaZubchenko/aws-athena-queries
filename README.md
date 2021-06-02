# About

*AWS CloudTrail* is a service that records AWS API calls and events for Amazon Web Services accounts.
CloudTrail logs include details about any API calls made to your AWS services, including the console. CloudTrail generates encrypted log files and stores them in Amazon S3.

Using *Athena* with *CloudTrail logs* is a powerful way to enhance your analysis of AWS service activity.

For more information about Querying AWS CloudTrail Logs with Amazon Athena see https://docs.aws.amazon.com/athena/latest/ug/cloudtrail-logs.html

# How to use

`kms-queries.sql` consist four simple SQL queries for different situations in security investigationing cases *AWS KMS*.

1) If you want to know, which kms keys were in **certain period** in **certain account**;
2) If you want to know, which kms keys were in **certain period** with **certain eventname**;
3) If you want to know, which kms keys were in **certain period** with **certain eventname** in **certain account**;
4) If you want to know, which kms keys were in **certain period** with **certain eventsource** in **certain account**.

# Future

This library of queries will growing with time.
