# How to build intelligent applications using Oracle Generative AI and Oracle APEX

**Cloud Infrastructure (OCI) Generative AI** is a fully managed service available via API to seamlessly integrate these versatile language models into a wide range of use cases, including writing assistance, summarization, and chat. 

This article will show a hands-on approach to building AI-driven innovative applications using **#OracleGenerativeAI** services and low code **#OracleAPEX** Applications. We will test our AI model with questions related to Neurology, Weather conditions, Writing emails, Generating Java code, Generating SQL, or even how to make mixed fruit jam. The Oracle **#AILanguage** Translation Service can easily translate these AI response texts into various languages. 

**Oracle Beta Programs Preview the future of OCI today:** You can request access from [here][1] and follow that link for more details. 


[1]: https://apexadb.oracle.com/ords/f?p=102:100

**Assumption/Requirements** : You have already installed Oracle APEX workspace and have access to OCI Generative AI service. Your Administrator has set up OCI Policies for Generative AI access, or you have Administrator privileges in your tenancy. 

We will look at two options to run Generative AI. 

1. Cloud console - playground 
2. Oracle APEX Application 

### Oracle Generative AI - Playground

**Option 1:** Log in to Oracle Cloud at [cloud.oracle.com][2] , change region to **US Midwest Chicago**


[2]: http://cloud.oracle.com/

Under left navigation select **Analytics and AI** , under **AI Services** select **Generative AI.**

![][3]


[3]: images/1706368855666.png

click on **playground** in the left navigation and select the **default** settings ( Cohere model **cohere.command v15.6** ), you can change the settings if required. 

![][4]


[4]: images/1706369240032.png

![][5]

[5]: images/1706369250162.png


    Input: How is the weather today in Las Vegas
    
    Output: It is currently overcast in Las Vegas with a high of 63 degrees Fahrenheit (17 Celsius). There is a 15% chance of precipitation today but it should mostly clear up by this afternoon with chances of partly cloudy skies. Would you like to know more about the weather in Las Vegas? I can also tell you about upcoming forecasts if you plan to be there for a few days.
    
    Would you like to know more about the weather in other cities?

At this stage you can view **Java** or **Python** code in the console. 

### Oracle Generative AI with Oracle APEX

**Option 2:** Build Oracle APEX application to run Generative AI. This is a 3 step process. 

1. Create Web Credentials. 
2. Create Oracle APEX page 
3. Create Process with PL/SQL code block. 

**Step 1:** **Create Web Credentials.**

If you have already created web credentials then you can ignore this step, Oracle APEX Web Credentials provides a convenient and secure mechanism for storing the following types of credentials: 

- Basic Authentication (Username & password) 
- OAuth2 Client Credentials (Client ID & Client Secret) 
- OCI Native Authentication (Access Oracle Cloud Resources, e.g., Object Storage) 
- HTTP Header (The credential is added to the REST request as an HTTP Header) 
- URL Query String (The credential is added to the URL of the REST request as a Query String Parameter). 

In the APEX top navigation, Select **App Builder** , Click on **Workspace Utilities**

![][6]


[6]: images/1706368675456.png

Select **Web Credentials**

![][7]


[7]: images/1706368675532.png

Click on **Create**

![][8]


[8]: images/1706368675368.png

Provide **User OCID** , **Tenancy OCID** , **Fingerprint** , **Private Key** and Authentication type as **Oracle Cloud Infrastructure.**

_Note: If you are unfamiliar with OCI Command Line interface parameters, Please refer to the **Optional Learnings** section of this article to learn how to get User OCID, Fingerprint, Tenancy OCID etc._

![][9]


[9]: images/1706368674676.png

**Step 2:** **Create Oracle APEX page with PL/SQL code block.**

This page will have the following elements 

- AI_INPUT -> **Text field** to accept user's input text 
- Button -> to call Generative AI REST Service using PL/SQL code block 
- AI_OUTPUT -> Type **Rich Text Editor** to display AI response as output. under settings choose **TinyMCE** and format as **Markdown**
- Region and Layout can be your own choice 

![][10]


[10]: images/1706370712497.png

**Step 3:** **PL/SQL code block process.**

Under **Processing** Tab, Create a **Process, Type** will be **Execute code, Source** Language is **PL/SQL** code block. 

![][11]


[11]: images/1706371111820.png

We would like to execute the code **When Button is Pressed** , select the button by its name. 

![][12]


[12]: images/1706371121253.png

Download the [genai_plsql.sql](genai_plsql.sql), replace your compartment id, credential name and page numbers in input and output APEX page items. [API Guide.][14]

[14]: https://docs.oracle.com/en-us/iaas/api/#/en/generative-ai-inference/20231130/

**API Endpoints:**

[https://inference.generativeai.us-chicago-1.oci.oraclecloud.com][15]
    
    
[15]: https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/

A few request parameters: [(reference)][16]

[16]: https://docs.oracle.com/en-us/iaas/Content/generative-ai/concepts.htm
  
    Tokens: A token is a word, part of a word, or a punctuation. For example, apple is a token and friendship is made up of two tokens, friend and ship.  
    
    Temperature:How random to generate the output text. To generate the same output for a prompt every time you run that prompt, use 0. To generate a random new text for that prompt, increase the temperature. Default temperature is 1
    
    Likelihood: In a large language model's output, how likely it would be for a token to follow the current generated token. When a large language model generates a new token for the output text, a likelihood is assigned to all tokens, where tokens with higher likelihoods are more likely to follow the current token. 

Run the page by pressing the **Green** button 

![][17]

[17]: images/1706373094904.png

    Input: What is Neuroscience
    
    AI Response: Neuroscience is a branch of science that focuses on studying the structure and function of the nervous system, and how the nervous system processes information and conducts behavior. It is a multidisciplinary field that combines concepts and techniques from various disciplines, including biology, chemistry, physics, and psychology, to understand how the brain and nervous system work and interact with the rest of the body.
    
    Neuroscience research aims to elucidate fundamental principles governing brain development, plasticity, cognition, perception, motor control, sensation, and the neurobiological basis of psychological disorders. By studying the nervous system, neuroscience provides insights into the mechanisms underlying various functions and behaviors, and contributes to our understanding of the brain and its role in the human body.
    
    It is a rapidly evolving field with ongoing discoveries and developments, advancing our understanding of the brain and nervous system and their role in health and disease. The field of neuroscience continues to provide valuable insights into the functioning of the nervous system and its applications in areas such as medicine, psychology, and education.
    
    Would you like me to provide more details or examples of the studies and research conducted within the field of Neuroscience?
      
      
      

![][18]

[18]: images/1706373598487.png

    Input: Write a mail to my manager requesting leave on February 4th on my daughter's birthday.
    
    AI Response: 
    
    Dear [Manager],
    
    I am writing to request leave on February 4th, as it is the celebration of my daughter's birthday. It has been a wonderful year for our little one and we want to ensure we provide them with the best celebration possible.
    
    In this regard, I would like to request a day off on February 4th to spend it with my family. It is crucial for me to attend the celebration and support my daughter in celebrating her special day.
    
    I understand the significance of my work and appreciate the time and dedication it requires to complete it. In this case, I have thoroughly coordinated with my colleagues to ensure a smooth operation during my absence. Additionally, I have prepared documentation and assignations to facilitate the smooth flow of work and avoid interruptions.
    
    Please let me know if there is an procedures or forms that I should complete to facilitate the process of my leave request. I appreciate your understanding and support in this matter. Please feel free to contact me if you require any additional information or have further concerns.
    
    Thank you for considering my request. I look forward to returning to work and sharing stories of our special family day with the team.
    
    Warm regards,
    [Your Name]
    
    Do you want me to provide you with some alternatives in case your manager rejects the request?

![][19]

[19]: images/1706373822085.png

    Input: Generate a Java program to calculate the sum of two numbers.
    
    AI Response:
    
    Here's a Java program that calculates the sum of two numbers:
    
    public class SumCalculator {
        public static void main(String[] args) {
            double num1 = 10.0;
            double num2 = 5.0;
    
            double sum = calculateSum(num1, num2);
    
            System.out.println("The sum of " + num1 + " and " + num2 + " is: " + sum);
        }
    
        public static double calculateSum(double num1, double num2) {
            return num1 + num2;
        }
    }
    
    In this program, we define a class called SumCalculator with a main method. Inside the main method, we define two double variables num1 and num2 to hold the values of the numbers for which we want to calculate the sum. We then call the calculateSum method, passing in the values of num1 and num2, and store the result in the sum variable. Finally, we print out the sum of the two numbers.
    
    You can modify the values of num1 and num2 in the main method to calculate the sum of different numbers. This program demonstrates the basic concept of calculating the sum of two numbers using Java.


![][20]

[20]: images/1706373972658.png

    Input: Write a script for a documentary movie based on the Taj Mahal.
    AI Response: INT. THE Taj Mahal - DAY
    
    As we wake up to another sunny morning in Agra, the city which is immensely lucky to have the Taj Mahal as its prime attraction, we realize how truly special this place is with each passing day.
    
    The Taj Mahal stands tall as a symbol of love. People from all across the world travel numerous miles to see its beauty.
    
    As we walk through the intricate maze of streets leading up to the Taj Mahal, we can feel the energy and excitement in the air. The city comes to life with the sound of mobbs clicking photographs and tourists discussing how they would spend the day.
    
    Agra, a city which solely depends on the monument for its economy, can be said to be living on the monument's fame. It is the livelihood of each and every individual living here.
    
    .. 

![][21]

[21]: images/1706374244953.png

    Input: Generate SQL to find hospital names and addresses in Las Vegas.
    
    AI Response: Here's a potential SQL query that might help you retrieve hospital names and addresses in Las Vegas:
    
    SELECT HospitalName, Address
    FROM Hospitals
    WHERE City = 'Las Vegas';
    
    In this query:
    
    We use the SELECT statement to specify the columns we want to retrieve, which are HospitalName and Address.
    The FROM clause identifies the table or dataset we are querying, which is the Hospitals table in this case.
    The WHERE clause is used to filter the results based on a specific condition, which is the city Las Vegas in this case.
    
    Please note that the syntax and availability of databases may vary, and you should adapt this query to your specific database system. If you are using a different database system, such as MySQL, Apache Cassandra, or PostgreSQL, the structure of the database and the syntax of the query may differ slightly.
    
    It's always recommended to check the documentation of your specific database system to ensure compatibility and optimal query performance.
    
    Please replace the table and column names with the actual names used in your database schema.


![][22]

[22]: images/1706374397694.png

    Input: How to make mixed fruit jam
    
    AI Response: 
    
    Sure! Here's a step-by-step guide on how to make mixed fruit jam:
    
    Choose your fruits. Select a combination of fruits that you prefer for your jam, such as strawberries, raspberries, blackberries, apricots, peaches, or plums. You can also add other fruits like apples or mangoes for additional flavor and texture.
    
    Clean and chop the fruits. Remove any stems, pits, or cores from the fruits and chop them into small pieces. You can also crush some of the fruits into larger chunks if you prefer a chunkier jam.
    
    Prepare the fruit mixture. In a large pot, combine the chopped fruits, lemon juice (a generous amount to act as a preservative and add flavor), and sugar (you can add sugar gradually and taste to decide if more is needed). Mix well to ensure all the fruits are coated.
    
    Cook the jam. Place the pot over medium to high heat and bring the fruits to a boil. Continuously stir the mixture to prevent sticking and ensure even cooking. Let the fruit mixture cook until it begins to break down and the juices release, which will take about 15-20 minutes.
    
    Add pectin and cook again. If you're using commercial pectin for a firmer jam, follow the package instructions for adding it to your fruit mixture. Generally, you add a small amount of warm water to the pectin and then pour it into the fruit mixture while stirring. Continue cooking and stirring the jam as it begins to thicken. The mixture should bubble and reach a jam-like consistency.
    
    Fill and process the jars. Once you're satisfied with the consistency of the jam, use a ladle to fill clean and hot jars to within 1/4 inch of the top. Wipe any seams with a clean cloth and run a lid and ring over each jar to ensure a good seal.
    
    Let the jars cool down. Once filled, place the jars in a boiling water bath for 10-15 minutes to process them. Carefully remove them from the water and let them cool on a wire rack. The jam should set properly as the jars cool down.
    
    Remember to adjust the cooking time and consistency according to your preference. You can leave some fruits larger or crush some fruits for a chunkier or smoother texture, respectively. 

![][23]


[23]: images/1706378024842.png

### What happens if the input is in a language other than English?

Yes, it can detect source language, here are some examples 

![][24]
    
    
[24]: images/1706518398469.png

    Japanese Input Source: 今日の東京の天気はどうですか   
    (Translated Input: How is the weather in Tokyo today?)
    
    AI Response: The weather in Tokyo today can be described as follows. Cloudy with a high of 74°F and a low of 65°F. The sky will be clear throughout the day, with only a 20% chance of precipitation.
    
    Is there anything specific you would like to know about the weather in Tokyo today? I can provide more detailed information or answer questions about specific aspects such as wind speed, humidity, or precipitation chances.


How about Simplified Chinese input text? 

![][25]

[25]: images/1706518347668.png

    Simplified Chinese Input Source: 谁建造了中国的长城  
    (Translated Input: Who built the great wall of China?)
    
    AI Response: It is not accurate to say that "who" built "Longmen" or "Changcheng" (as it was historically referred to in Chinese literature). "Longmen" or "Changcheng" was not a physical entity or a city like the modern-day Beijing or Shanghai. Rather, it refers to a series of ancient stone gates (or "gates of longmen") that were part of the Great Wall of China.
    
    The construction of the stone gates of Longmen was facilitated by a network of thousands of unpaid peasant labor groups known as the tao Stable LABouRErs. These LABouRErs were given food and agricultural implements in exchange for their construction services. The construction of the stone gates was crucial in maintaining the durability and integrity of the Great Wall of China.
    
    The construction of the Great Wall began in the 7th century BCE during the Western Zhou dynasty as a defensive barrier against northern tribes. It was constructed over subsequent centuries by various dynasties and armies. The wall was continuously extended and renovated over the centuries due to constant battles and invasions.
    
    It is inaccurate to pinpoint a specific individual or organization as the builders of the wall. The construction and maintenance of the wall involved the collective efforts of many rulers, architects, engineers, and laborers over centuries.
    
    Would you like me to provide more detailed information on the construction or history of the Great Wall of China?


### OCI Generative AI Demo video

**Conclusion:** We just saw how we can build intelligent applications with Oracle Generative AI and Oracle APEX as a user interface. We used PL/SQL code to make REST API calls to Oracle Generative AI Services. We also saw how Generative AI can provide smart answers, be it writing a letter or story telling or generating a code block or SQL statements and many other smart questions and answers. The possibilities with Generative AI are endless and innovative. 

We can also use OCI AI Language Translation services to translate the AI response to supported languages.

### Optional Section

Alternatively, if you wish to run the Generative AI services using Python code you can copy and paste the code generated and run the Python script ( or Java code) 

    # coding: utf-8
    # Copyright (c) 2023, Oracle and/or its affiliates.  All rights reserved.
    # This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.
    
    ##########################################################################
    # generate_text_demo.py
    # Supports Python 3
    ##########################################################################
    # Info:
    # Get texts from LLM model for given prompts using OCI Generative AI Service.
    ##########################################################################
    # Application Command line(no parameter needed)
    # python generate_text_demo.py
    ##########################################################################
    import oci
    
    # Setup basic variables
    # Auth Config
    # TODO: Please update config profile name and use the compartmentId that has policies grant permissions for using Generative AI Service
    compartment_id = "Your-Compartment-Id"
    CONFIG_PROFILE = "DEFAULT"
    config = oci.config.from_file('~/.oci/config', CONFIG_PROFILE)
    
    # Service endpoint
    endpoint = "https://inference.generativeai.us-chicago-1.oci.oraclecloud.com"
    
    generative_ai_inference_client = oci.generative_ai_inference.GenerativeAiInferenceClient(config=config, service_endpoint=endpoint, retry_strategy=oci.retry.NoneRetryStrategy(), timeout=(10,240))
    generate_text_detail = oci.generative_ai_inference.models.GenerateTextDetails()
    llm_inference_request = oci.generative_ai_inference.models.CohereLlmInferenceRequest()
    llm_inference_request.prompt = "How is the weather today in Las Vegas"
    llm_inference_request.max_tokens = 600
    llm_inference_request.temperature = 1
    llm_inference_request.frequency_penalty = 0
    llm_inference_request.top_p = 0.75
    
    generate_text_detail.serving_mode = oci.generative_ai_inference.models.OnDemandServingMode(model_id="ocid1.generativeaimodel.oc1.us-chicago-1.your-model-id")
    generate_text_detail.inference_request = llm_inference_request
    generate_text_detail.compartment_id = compartment_id
    generate_text_response = generative_ai_inference_client.generate_text(generate_text_detail)
    # Print result
    print("**************************Generate Texts Result**************************")
    print(generate_text_response.data) 

To run Python script we need install OCI command line interface and to setup config file, an example shown below 

    vim ~/.oci/config
    ..
    
    [DEFAULT]
    user=<User-OCID> 
    fingerprint=<Fingerprint>
    key_file=/<Path>/.oci/keyfilename.pem
    tenancy=<Tenancy-OCID>
    region=<Region-OCID>


If you would like to know more about setting up OCI Command Line Interface, please check my video on that (Lab 3 of [AI for Healthcare][28] Livelabs) 


[28]: https://bit.ly/O_AI_healthcare

References: 

[Oracle Generative AI REST APIs][29]


[29]: https://docs.oracle.com/en-us/iaas/api/#/en/generative-ai-inference/20231130/GenerateTextResult/GenerateText

[Running script in Python or Java or Other Languages][30]


[30]: https://docs.oracle.com/en-us/iaas/api/#/en/generative-ai-inference/20231130/GenerateTextResult/GenerateText

