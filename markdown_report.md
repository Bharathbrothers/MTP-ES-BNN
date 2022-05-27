# Markdown report included in web app

# MTP-ES-BNN
MTP: MTech Project

# Title : Expert System using Bayesian Neural Networks

Aim: To build an Expert System using Bayesian Neural Networks for Predictive Maintenance Dataset.

Description: Building an Expert system using streamlit framework with BNN models developed using Tensorflow and Tensorflow probability libraries in Google colab notebook for the predictive maintenance dataset taken from UCI repository.

#### Tools and Technologies used: 
Python, Tensorflow, Tensorflow Probability, Streamlit framework

#### Stages:

  [Phase -1:3rd semester](file:///M:/2022/FINAL%20PROJECT%20GIT/PHASE%20-1/)
    
   [Mid semester:](../main/PHASE%20-1/1-%203RD%20SEMESTER%20MID/)
   
      - Learning/Revising Deep Learning and python.
      - Searching/learning about ES.
      - Research Papers collected related to the project.
      - See existing works:
      - Literature Survey:
      - Study all papers related to it and write what they are doing and what they are lacking.
      
   [End semester:](../main/PHASE%20-1/1-%203RD%20SEMESTER%20END/)
   
    - Implement a basic NN and a basic BNN:
    
  [Phase -2: (4th semester)](../main/PHASE%20-2/)
    
   [Mid semester:](../main/PHASE%20-1/1-%204TH%20SEMESTER%20MID/)
   
     - Implement different versions and variations of BNN using various techniques.
     
   [End semester:](../main/PHASE%20-1/1-%204TH%20SEMESTER%20END/)
   
    - Implement Expert system web application.


#### Abstract:

>  An Expert System can be defined as a knowledge-base system that acquires knowledge
from its knowledge base of a specific domain and addresses user queries using
its inference engine about that specific domain. In the Expert System, we have 3 main
parts(Knowledge Base, Inference Engine, User Interface). It has many applications in
various domains. One of the important domains is predictive maintenance where it helps
in monitoring the health of machinery and helps us to get quick repair solutions with its
knowledge and improve its lifetime. We are using Bayesian Neural Networks(these are
Neural networks in which we use probabilities for weights and biases for prediction) as a
part of the inference engine of the expert system which helps to overcome the uncertainties
from standard Neural Networks and gives confident and dynamic predictions. This
yields us even much better results and helps in effective monitoring of the machinery
both by individuals and organizations.

> Here, we present the usage of Bayesian Neural Networks(BNN’s) for building Expert
Systems. The usage of BNN’s overcomes the drawback of the uncertainty of neural
networks. It also makes predictions more dynamic.

#### Implementation Steps:

##### for implementing a BNN:
    1. The following were the steps taken in implementing all kinds of (Bayesian Neural
    Networks) BNNs.
    2. Defining a model.
    3. Fitting the model onto the data.
    4. Evaluating the model.
    5. Plotting different parameters of the model for comparison.
    6. Saving the model as a file for including it in the web application. Saving the model architecture as an image.
   
##### for implementing a Web app for Expert system:

The expert system page was completed by following the below steps.
Steps:
   
    1. Queries here can be answered to get the advice from Expert System.
    2. Users can select the appropriate option below each query to submit to the system.
    3. Based on the option selected, a certain value gets assigned to that variable.
    4. All these values will be sent to the model to get the prediction.
    5. The result value from the model is either 0 or 1.
    6. This value is converted into advice for the user for his specific query from the
    Expert System Model.
    7. From the model, if it is safe, just print that the machine is safe and if not, then
    based on the query value for the last 4 values for various machinery failures, print
    accordingly the cause of failure and a possible solution to it.
    

  

#### Links:

Notebook link: (relative links of notebook file and its pdf file.)

Web app link: (deploy on streamlit free server.)

Web app demo link: (drive link)

Report link: (pdf link)

Presentation link:

#### Summary and Conclusion:
The dataset taken is for the task of Predictive Maintenance which helps in the
identification of the most probable root cause of a problem or failure and to give a
solution to rectify it. This way, the frequency of maintenance can be reduced by having
maintenance only when certain conditions are encountered and when it is necessary
instead of scheduled maintenance. This results in higher efficiency of the machine with
low maintenance cost over a long period of time.

##### future scope:
We can extend this work to make an Expert Shell System where we can use this as
a building block or as an environment for developing any Expert System, just by changing
the knowledge base for the specific system. They can be used for building various
applications just from the template like an expert shell system which is a generalized one
which helps in building any domain-specific expert system for better decision-making
    
#### TO DO:
- [x] MAKE FOLDERS FOR EACH PHASE AND SUBMISSION (made locally.)
- [x] UPLOAD ALL RELATED FILES PHASE AND SUBMISSION WISE
- [x] LINK THOSE FOLDERS FROM THIS README FILE SO THAT THEY ARE EASILY ACCESSIBLE.
- [x] UPLOAD ALL PAPERS, CODES, PLOTS, MODELS AND VERSIONS WHICH ARE IMPLEMENTED THROUGHOUT THE PROJECT.
- [ ] GO ON. 
- [x] added relative links for main folders.
- [ ] need to get the exact version and list of libraries used for the whole project so that it can be implemented later.(generate requirements.txt kind of file)
   
