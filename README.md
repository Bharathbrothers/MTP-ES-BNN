# MTP-ES-BNN
MTP: MTech Project

# Title : Expert System using Bayesian Neural Networks

Description:

Aim: To develop an Expert System application using Bayesian Neural Network models 

#### Tools and Technologies used: 
Python, Tensorflow, Tensorflow Probability, Streamlit framework

#### Stages:

  [Phase -1:3rd semester](../main/PHASE%20-1/)
    
   [Mid semester:](../main/PHASE%20-1/1-%203RD%20SEMESTER%20MID/)
   
      - Learning/Revising Deep Learning and python.
      - Searching/learning about ES.
      - Research Papers collected related to the project.
      - See existing works:
      - Literature Survey:
      - Study all papers related to it and write what they are doing and what they are lacking.
      
   [End semester:](../main/PHASE%20-1/2-%203RD%20SEMESTER%20END/)
   
    - Implement a basic NN and a basic BNN:
    
  [Phase -2: (4th semester)](../main/PHASE%20-2/)
    
   [Mid semester:](../main/PHASE%20-2/1-%204TH%20SEMESTER%20MID/)
   
     - Implement different versions and variations of BNN using various techniques.
     
   [End semester:](../main/PHASE%20-2/2-%204TH%20SEMESTER%20END/)
   
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
    1. The following were the steps taken in implementing all kinds of (Bayesian Neural Networks) BNNs.
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
    
#### Screenshots:
 Web application and Notebook Screenshots.
  ![Home](../main/PHASE%20-2/2-%204TH%20SEMESTER%20END/progress/final_imgs/home.png)
  ![Prediction 1](../main/PHASE%20-2/2-%204TH%20SEMESTER%20END/progress/final_imgs/pred1.png)
  ![Prediction 1](../main/PHASE%20-2/2-%204TH%20SEMESTER%20END/progress/final_imgs/pred2.png)
  ![Prediction 1](../main/PHASE%20-2/2-%204TH%20SEMESTER%20END/progress/final_imgs/pred3.png)

  ![Expert 1](../main/PHASE%20-2/2-%204TH%20SEMESTER%20END/progress/final_imgs/expert1.png) 
  ![Expert 2](../main/PHASE%20-2/2-%204TH%20SEMESTER%20END/progress/final_imgs/expert2.png)
  ![Expert 3](../main/PHASE%20-2/2-%204TH%20SEMESTER%20END/progress/final_imgs/expert3.png) 

#### Links:

Notebook link: ([MTP BNN.ipynb file](https://colab.research.google.com/drive/1EJFF_p3MFp1Ery2jgGbtToBSvJllL3Ai?usp=sharing))

Notebook Pdf: 

Github link: [Repository Link](https://github.com/Bharathbrothers/MTP-ES-BNN)

Web app link: (deploy on streamlit free server.)

Web app demo link: [Video link](https://drive.google.com/file/d/1wQdFVDWhVPn2GtZs32ubPnI_HMJxvd4K/view?usp=sharing)

Report link: (pdf link)

Presentation link:

#### Summary and Conclusion:

##### future scope:
    
#### TO DO:
  - [x] MAKE FOLDERS FOR EACH PHASE AND SUBMISSION (made locally.)
  - [x] UPLOAD ALL RELATED FILES PHASE AND SUBMISSION WISE
  - [x] LINK THOSE FOLDERS FROM THIS README FILE SO THAT THEY ARE EASILY ACCESSIBLE.
  - [x] UPLOAD ALL PAPERS, CODES, PLOTS, MODELS AND VERSIONS WHICH ARE IMPLEMENTED THROUGHOUT THE PROJECT.
  - [ ] GO ON. 
  - [X] added relative links for main folders.
  - [ ] need to get the exact version and list of libraries used for the whole project so that it can be implemented later.(generate requirements.txt kind of file)
   
