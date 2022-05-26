### Basic Info
#### Contains information about the app.

    The main homepage of the web app displays basic info and a logo of the application
    along with a sidebar drop-down menu containing all the options to move to various pages
    or sections in the application

#### Contains an option to load any desired model from the above notebook file.

    • It has a default model loaded into the application initially but has the drop-down
    menu to select any model for getting the predictions as per the requirement.
    • After building a model in the colab file, saving the model in either hd5 format or
    as a folder using save_model() function, and downloading them to the local folder
    into the streamlit web app folder so that it can be loaded. This model is loaded
    into the web app using the same technique of the load_model() function.

#### Contains an option for any user to enter values and get predictions from the model
    • Has 11 input fields for all the variables to be entered by the user.
    • This input is passed to the above-loaded model and the predicted value from the
    model is displayed in the app.
    • As mentioned, It has a drop-down menu to select any model for getting the
    predictions as per the requirement before submitting the data to the application.

#### So to summarize, the app contains:
    • Information about the app and its usage/code.
    • Option to load any desired model on the prediction page of 11 fields.
    • Use that selected model from the option to predict the output based on the given
    inputs.
    • A page for normal users to select an option from a list of common queries and
    based on that query linked to the model gets the advice displayed on the screen.
    • A markdown report page to summarize the results and conclusion including the
    technique implemented.

1. - [X] VISUALIZE BNN basic layer one not gui one \n
2. - [X] VARIANTS OF BNN some what done the basic one \n
3. - [X] SELECT THE BEST VERSION OF IT tried one variant in streamlit
4. - [X] GUI FOR EXPERT SYSTEM
5. - [X] INPUTS OF VARIOUS FIELDS TO THE SYSTEM TO GIVE INPUT TO MODEL.
    5.1  - [X] DONE WITH THE 1 VERSION OF MODEL AS FILE AND RUNNING IT IN STREAMLIT APP
6. - [X] RESULT FROM MODEL OF 0 AND 1 IS TO CONVERTED INTO TEXT TO BE ABLE TO UNDERSTOOD BY THE USER.(TAKE HELP FROM MECH FRIEND)
7. - [X] FINAL REPORT(<10% PLAG)
8. - [ ] FINAL PPT FOR PRESENTATION
9. - [ ] PREPARE FROM MY DL BOOK FOR MTP PRESENTATION AND VIVA.
10. - [ ] DONE!!!!! '''