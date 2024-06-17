# $heMoney

## What does $heMoney do
Our solution aims to provide guidance based on a comprehensive financial assessment of an individual using algorithmic and machine learning analysis. We are implementing our solution in the form of an App - $heMoney - that will provide the user with customized feedback.

The first step of using $heMoney is completing our financial assessment; this survey collects information about an individual's current situation and knowledge of their own financial identity. Based on their responses (which can include “I don’t know” to indicate a lack of knowledge), we produce a threefold personalized plan of suggestions.

The plan includes:

1. Investment Account Suggestions This section suggests what retirement savings account is best suited for the individual being analyzed. It chooses between a 401k or a Roth IRA. It, also, considers whether you are eligible for a HSA and suggests it accordingly. An explanation of the factors that determine the suggestion being made is provided too. Details of the formulas used are not explained obviously.

2. Incentivized Savings” The app aims to sync the user’s monthly bills and compares it to the previous months. If the user is spending comparatively less, they get rewarded with a certain number of points which can be redeemed to get feminine products sourced from a charity or purchase stocks. This way we are incentivizing users to save money while also raising revenue for businesses.

3. Pay Gap Assessment Using machine learning, the app uses information like your region and position in a company to estimate what your pay should be. The model we used is mentioned below. Using the estimated pay, we determine if the pay you reported is indicating a gender pay gap. Further, the user has the option to generate an AI generated certified report that outlines the data found indicating a gender pay gap and negotiates a pay raise. This option will be a paid service.

4. HOW TO Guide The final section of the plan covers information and materials for further knowledge. This section will be a paid service.

Overall, we expose our users to retirement accounts, considering the gender pay gap, saving habits, and stock trading.

## How we built it
Our process included:

Brainstorming:  We did individual brainstorming, deliberated about 15 ideas, and used the huge notepads provided to finalize two ideas that had us excited.
Planning Picking: $heMoney as our most impactful idea, we started doodling the layout and decided what inputs and outputs we want. Additionally, we deep dived into research to establish the formulas for our algorithms and the factors that we wanted to consider.
Prototyping: We used Figma to design a mockup of our app.
Executing: We used Swift to code our app and python to write our machine learning algorithm.
The aspects of entrepreneurship integrated in our solution are explained below in the challenges portion.

Formulas for Investment Account Suggestions Algorithms:

1. Roth IRA FV=(.7PV×(1+r)^n) Where: FV = Future Value of the Roth IRA account PV = initial investment (contributions) r = .06 n = Number of years the money is invested (Retirement - age) Post tax Health Care

2. 401k FV=.7((PV×(1+r)^n)+M ) Where: FV = Future Value of the 401(k) account PV = initial investment (contributions) r = .06 n = Number of years the money is invested (Retirement - age) M = Total employer matching contributions over the investment period which is assumed Pre Tax

3. HSA Account FV=PV×(1+r)^n Where: FV = Future Value of the HSA account PV = Present Value or initial investment (contributions) r = Annual interest rate (expressed as a decimal) n = Number of years the money is invested

## Demo/Acknowledgement
This project was made as a part of FidHacks 2024 and the devpost for it is available here: https://devpost.com/software/hemoney. The demo is available here: https://drive.google.com/file/d/1uuWSHZ_yiHdG64KgeTSstsu01ZqXqqsz/view. The application was made in collaboration with Amishi Gupta, Grace Odondi, Kiara Smith, and Manahil-Tariq Tariq.


