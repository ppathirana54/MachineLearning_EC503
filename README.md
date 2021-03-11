# MachineLearning_EC503
Algorithms written for a machine learning course 
ENG EC503
Spring 2021
Boston University
College of Engineering Prof. Francesco Orabona
ENG EC503: Introduction to Learning from Data
Course Information
Lecture Time and Place: FLR 104, Tu/Th 3:30-5:15.
https://bostonu.zoom.us/j/99253124029?pwd=djZqZmtlQTNkRWllUUg3YTB5ZW1mQT09
Discussion Sessions: PHO 117, Wed., 6:30-8:15 PM
https://bostonu.zoom.us/j/92050508668?pwd=cFVaaXNTRmV6RFhVYzRydHBBWDhCZz09
Lecturer:
Francesco Orabona, 111 Cummington Mall, Room MCS 138J
fo@bu.edu, http://francesco.orabona.com/.
Office hours: Tu/Th 11-12 (on Zoom only)
https://bostonu.zoom.us/j/92473610636?pwd=SlpGVDYwY3pLNFVGeG5xemNFV1ByQT09
Graduate Teaching Fellow:
Boran Hao, brhao@bu.edu
Office hours: Friday 5:30pm-6:30pm (on Zoom only)
https://bostonu.zoom.us/j/98489364925?pwd=d2JERWZrZFNpc01mNzRER3lmMmZOUT09
M.S. Teaching Fellow:
Yousif Khaireddin, ykh@bu.edu
Office hours: Mon 11-12 (on Zoom only)
https://bostonu.zoom.us/j/98489364925?pwd=d2JERWZrZFNpc01mNzRER3lmMmZOUT09
Vibhu Bhatia, vibs97@bu.edu
Office hours: Fri 11-12 (on Zoom only)
https://bostonu.zoom.us/j/97163408796?pwd=c2hVRVJBZXh6ckxaY2tjbFMzVjNkQT09
We would recommend to try Piazza first (see below) for getting answers to well-formulated
questions. The best way to reach us is via e-mail; we can arrange a meeting time outside regular
office hours.
Description: This is an introductory course in machine learning covering the basic theory, algorithms, and applications. The course surveys a variety of topics, covering both supervised and
unsupervised learning problems, and including classification, regression, kernels, robustness and
regularization, concepts from learning theory, clustering, dimensionality reduction, generative models, neural networks, and deep learning. A variety of contemporary applications will be explored
through homework assignments and a term project.
1
Course Websites:
Website: http://learn.bu.edu/
Discussion board: http://piazza.com/
Signup Link: https://piazza.com/bu/spring2021/ec503
Class Link: https://piazza.com/bu/spring2021/ec503/home
Piazza: We will be using Piazza as a discussion board. You have all been registered and you should
have received an invitation to join. The system is highly catered to getting you help quickly and
efficiently from both the course staff and your fellow classmates. Rather than emailing questions,
we encourage you to post your questions on Piazza. I am personally very active on Piazza.
Prerequisites: Probability, e.g., EC381 or EK500 or EC505, Linear Algebra, e.g., EK102 or
MA142, Multivariate Calculus, e.g., MA225, and a good level of mathematical maturity. Prior
experience with Matlab, e.g., EK 127 is important. Good computer programming skills, e.g.,
EC327, is desirable.
Textbooks: The required textbook for the class is:
[UML] Shalev-Shwartz and Ben-David. Understanding Machine Learning: From Theory to Algorithms (Cambridge University Press, 2014) The book is available online at
http://www.cs.huji.ac.il/~shais/UnderstandingMachineLearning.
Supplemental recommended books:
[CML] Daum´e. A Course in Machine Learning.
http://www.freetechbooks.com/a-course-in-machine-learning-t905.html.
[CO] Boyd and Vandenberghe. Convex Optimization.
http://web.stanford.edu/~boyd/cvxbook/.
Grading: There will be regular homework assignments, two in-class exams, and a term project.
Your grade will be formed as follows:
1. 15% Homework. We will count the best n − 1 scores out of n assignments.
2. (25+25=)50% In-class exams.
3. 30% Term project.
4. 5% Attendance and class participation only if your overall homework score exceeds 85%.
(This has to be intended as participation in physical/online class, on Piazza, in office hours,
etc.)
2
Attendance and class participation: You will find that active class attendance and compilation
of class notes are essential in this course. We will be posting slides but we will also use the
blackboard; it will be your responsibility to take notes. Because the topics we will cover build upon
each other, if you fall behind you may find that you are lost and not able to follow the lectures.
Homework: Homeworks will be assigned regularly; a bit less frequently than on a weekly basis.
They will be due one week after the date issued. We will use Gradescope. Deadlines will be strictly
enforced. Although homeworks represent only 15% of the grade you will find that they are essential
to the learning process. We strongly encourage you to work on them independently. Often, it is easy
to follow another person’s solution but much harder to come up with your own. Past experience
has shown that the performance in the class is highly correlated with your ability to solve problem
sets on your own! We will offer homework help at the discussion meeting times and office hours.
Rules of Conduct: You may collaborate in study groups on the solution of homeworks. An acceptable form of collaboration is to discuss with others possible approaches for solving the problems
and then fill the details and write your solutions independently. Copying the solution that someone else has written is unacceptable and at times transparent. If you do collaborate you should
acknowledge your collaborators in the write-up for each problem. We view this as essential!
Needless to say that we expect students to adhere to basic, common sense concepts of academic honesty; presenting another’s work as your own or cheating on exams will not be tolerated. Knowingly allowing others to represent your work as their own is as serious an offense as submitting another’s work as your own. BU takes academic integrity very seriously.
More information on BU’s Academic Conduct Code, with examples, may be found at http:
//www.bu.edu/academics/policies/academic-conduct-code.
Make-up Exams: There will be no make-up exams. If there is a legitimate reason for missing
an exam, then the scores of other exams will be used appropriately to compensate for the missed
exam. If there is no legitimate reason provided for missing an exam, a grade of zero will be assigned
for the missed exam.
Term project: In lieu of a final, you will have to complete a project applying some of the knowledge
you have acquired in this course. You will present your project in a brief oral (or poster) presentation
and submit a written final report. The report should be typed and concise; you should use your
judgment as to how much is too much or too little.
You will have to work in small groups of 4-5 people.
There are many alternatives for the project. We want you to take the responsibility and specify
the topic; you should view this more as a research task rather than as a homework problem. We
expect that before Spring break, you will formulate a concrete proposal for what you plan to do.
You may get in touch with us if you want to discuss it.
Projects can be of two different types.
3
• Implementing and studying a particular algorithm. You can choose an application
area that you are interested in, identify a specific problem, locate a relevant dataset, and solve
the problem by implementing an algorithm that was not studied in class and comparing it to
some baselines. You have to implement the algorithm from scratch, no libraries are allowed.
• Original theoretical research. You may investigate any topic theoretically and try to
extend the available theory (or create your own theory). Clearly, this can be risky as there
are usually no guarantees that you will get results. Still, we would like to see your new theory
or method applied to a dataset. You may consider choosing something that has a case study
as a fallback option.
Copyright notice: The copyright on all EC 503 course materials, including lecture slides/notes,
assignments, solutions and solution code is asserted by the instructors. All rights are reserved.
Other than for personal use by registered students, the EC 503 course materials or any portion
thereof may not be reproduced or used in any manner whatsoever (including posting on a public
forum like github) without the express written permission of the instructors. Acting otherwise
would go against the ethical code of conduct expected of students at Boston University and from
a legal standpoint it may constitute a violation of copyright law.
Incomplete grades: Incomplete grades will not be given to students who wish to improve their
grade by taking the course in a subsequent semester. An incomplete grade may be given for medical
reasons if a doctor’s note is provided. The purpose of an incomplete grade is to allow a student
who has essentially completed the course and who has a legitimate interruption in the course, to
complete the remaining material in another semester. Students will not be given an opportunity
to improve their grades by doing extra work.
Drop dates: Students are responsible for being aware of the drop dates for the current semester.
Drop forms will not be back-dated.
COVID 19 & BU Community Health Expectations: Masks are required and face coverings
must be worn over the mouth and nose at all times when in public spaces on campus, including
classrooms. Students should be prepared to show proof that they are compliant with health attestations and testing in order to attend class. All students are expected to follow all university
guidelines with respect to daily symptom checks, testing, social distancing, and mask wearing when
they leave their dorm or home. For a detailed description of official BU policies regarding COVID,
please visit: http://www.bu.edu/dos/policies/lifebook/covid-19-policies-for-students/
Inclusion: I consider this classroom to be a place where you will be treated with respect, and I
welcome individuals of all ages, backgrounds, beliefs, ethnicities, genders, gender identities, gender
expressions, national origins, religious affiliations, sexual orientations, ability – and other visible
4
and nonvisible differences. All members of this class are expected to contribute to a respectful,
welcoming and inclusive environment for every other member of the class.
Accommodations for Students with Documented Disabilities: If you are a student with a
disability or believe you might have a disability that requires accommodations, requests for accommodations must be made in a timely fashion to Disability & Access Services, 25 Buick St, Suite
300, Boston, MA 02215; 617-353-3658 (Voice/TTY). Students seeking academic accommodations
must submit appropriate medical documentation and comply with the established policies and
procedures http://www.bu.edu/disability/accommodations/.
Tentative Syllabus.
1. Introduction and logistics.
2. Review of Linear Algebra and Probability.
3. Review of Optimization.
4. PAC learning.
5. Agnostic PAC learning.
6. Linear Regression.
7. Bias-Variance Trade-off and Model Selection.
8. Perceptron.
9. Support Vector Machines.
10. Duality and kernels.
11. Regularization.
12. Stochastic Gradient Descent.
13. Multiclass Classification.
14. Boosting.
15. Clustering.
16. Dimensionality Reduction.
17. Generative Models.
18. Nearest Neighborhood and Decision Trees.
19. Neural Networks and Back-propagation.
5
20. Deep Learning Overview.
21. Applications of Deep Learning.
22. Online Learning.
