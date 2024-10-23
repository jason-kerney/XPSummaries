<!--(dl
(section-meta
    (title F.A.Q.))
)-->

<!-- (dl (# Whats the difference between Continuous Integration and Continuous Development?)) -->

The primary difference between Continuous Integration (CI) and Continuous Delivery (CD) lies in their scope and objectives. CI focuses on automating code integration and running tests to detect integration issues early. CD, on the other hand, encompasses the entire software delivery process, including automated testing, deployment, and release to production-like environments. While CI ensures that code changes can be integrated smoothly, CD ensures that software can be released to production reliably at any time. CD extends the CI process by automating the delivery pipeline and enabling frequent, incremental releases, reducing time to market and increasing business agility.

<!-- (dl (# What are the potential risks and challenges associated with implementing Continuous Delivery, and how can we mitigate them?)) -->

There is a potential risk is the increased complexity of the delivery pipeline, which may require additional effort and resources to set up and maintain. This can lead to challenges in ensuring the stability and reliability of the CD process. This can lead to the fragility of system increasing to a point that the system become un-releasable.

Another challenge is the need for cultural and organizational changes, as CD requires collaboration and shared responsibility across teams. Without these changes you lose a lot of the proposed benefits of CD, and releases can be held up in handoffs and cross communication issues.

There are security risks that can arise from the rapid and frequent deployment of code. With the focus on rapid development and release security can easily become overlooked.

Mitigating these risks involves investing in proper training and support for teams, fostering a culture of continuous improvement and learning, and gradually implementing CD practices to minimize disruption. Use of tools like automated vulnerability scanning, linting as well as regular monitoring, feedback, and iteration are crucial in identifying and addressing any issues that arise during the implementation of CD.

Overall, a well-defined strategy, proper tooling, and a focus on continuous improvement can help overcome the potential risks and challenges associated with implementing Continuous Delivery.

<!-- (dl (# What are the key metrics and indicators we should track to measure the success and effectiveness of our Continuous Delivery practices?)) -->
<!-- (dl (## Warning)) -->

Do not set targets based on these metrics. Use the metrics to ask useful questions but be careful to prevent them from being targets. Once a metric becomes a target it stops being a useful metric. This is in part that people will make decisions that are overall bad for the system based on achieving a target. This is done intentionally as our vision narrows when we focus in on achieving something specific.

<!-- (dl (## Lead Time)) -->

Lead time is the measure from the time an idea enters the system to the time the idea is delivered to the customer. A small average lead time indicates a higher agility and faster customer responsiveness.

<!-- (dl (## Cycle Time)) -->

Cycle time, which measures the time taken from code commit to production deployment. A shorter lead time indicates faster delivery and agility. Additionally, organizations should track the mean time to recover (MTTR), which measures the time taken to recover from failures or incidents. A lower MTTR indicates effective incident response and resolution.

<!-- (dl (## First Time Yield)) -->

First Time Yield is the measure of things released to production subtract the number of defects that were detected all over the total number of things released. The closer this is to 100% the better you are doing. This should be measured over a longer time period then a single incremental cycle (a.k.a. sprint) and should probably span 6 to 9 cycles or more.

<!-- (dl (## Net Promoter Score)) -->

Monitoring customer satisfaction and feedback, such as through Net Promoter Score (NPS) or customer surveys, can also provide insights into the impact of Continuous Delivery on user experience. This will give you insight on how your process is either failing or supporting the customer.

<!-- (dl (## Others)) -->

There are other useful metrics not listed here that all depend on your need. It is a worthy endeavor to research such things.