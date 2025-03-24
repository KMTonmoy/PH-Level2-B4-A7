1. What is PostgreSQL?
PostgreSQL একটি ওপেন সোর্স রিলেশনাল ডেটাবেস ম্যানেজমেন্ট সিস্টেম (RDBMS) যা ডেটা নিরাপদভাবে সংরক্ষণ, পরিচালনা এবং অনুসন্ধান করার জন্য SQL ব্যবহার করে।

2. What is the purpose of a database schema in PostgreSQL?
ডেটাবেস স্কিমার উদ্দেশ্য হল ডেটাবেসের কাঠামো নির্ধারণ করা। এটি টেবিল, ভিউ, ফাংশন এবং অন্যান্য অবজেক্টের সংগঠন সংজ্ঞায়িত করে।

3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Primary Key: এটি টেবিলের একটি ইউনিক কলাম যা প্রতিটি রেকর্ডকে একে অপর থেকে আলাদা করে।

Foreign Key: এটি একটি টেবিলের কলাম যা অন্য টেবিলের Primary Key এর সাথে সম্পর্কিত।

4. What is the difference between the VARCHAR and CHAR data types?
VARCHAR: এটি পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং। অর্থাৎ, এটি যতটুকু জায়গা প্রয়োজন ততটুকুই ব্যবহার করে।

CHAR: এটি স্থির দৈর্ঘ্যের স্ট্রিং। এটি নির্দিষ্ট দৈর্ঘ্যের জন্য জায়গা বরাদ্দ করে।

5. Explain the purpose of the WHERE clause in a SELECT statement.
WHERE ক্লজটি SQL কোয়েরি থেকে নির্দিষ্ট শর্ত পূর্ণ করা রেকর্ডগুলো সিলেক্ট করতে ব্যবহার করা হয়।

6. What are the LIMIT and OFFSET clauses used for?
LIMIT: এটি কোয়েরির ফলাফলে কতগুলি রেকর্ড চাই তা নির্ধারণ করে।

OFFSET: এটি ফলাফলের শুরুর পয়েন্ট পরিবর্তন করে এবং নির্দিষ্ট সংখ্যক রেকর্ড এড়িয়ে চলে।

7. How can you modify data using UPDATE statements?
UPDATE স্টেটমেন্ট দিয়ে আপনি টেবিলের ডেটা পরিবর্তন করতে পারেন, যেমন একটি নির্দিষ্ট শর্ত পূরণ করা রেকর্ডের মান পরিবর্তন করা।

8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
JOIN অপারেশন দুটি বা ততোধিক টেবিলের ডেটা একসাথে নিয়ে আসে। এটি সম্পর্কিত ডেটা প্রদর্শন করতে ব্যবহৃত হয়।

9. Explain the GROUP BY clause and its role in aggregation operations.
GROUP BY ক্লজটি ডেটাকে নির্দিষ্ট ফিল্ডের ভিত্তিতে গ্রুপ করে এবং গ্রুপগুলোর উপর অগ্রিগেট ফাংশন (যেমন SUM, COUNT) প্রয়োগ করতে সহায়তা করে।

10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
এগ্রিগেট ফাংশনগুলি (যেমন COUNT(), SUM(), AVG()) ডেটার উপর গণনা, যোগফল বা গড় বের করতে ব্যবহৃত হয়। এগুলি GROUP BY ক্লজের সাথে ব্যবহার করা হয়।