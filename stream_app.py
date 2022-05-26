#from xml.etree.ElementInclude import include
import streamlit as st
import pandas as pd
import numpy as np
import pickle
import tensorflow as tf
from tensorflow import keras
import tensorflow_probability as tfp
import random
import urllib, urllib.parse


#model = pickle.load(open('model_tfp1v1.pkl','rb'))
model = tf.keras.models.load_model('saved_model/model_tfp_v1')
#model = tf.keras.models.load_model('model_tfp_v1.h5', custom_objects={"DenseFlipout": tfp.layers.DenseFlipout})

def main():
    
    st.sidebar.markdown("# App Menu")
    st.title('Expert System using Bayesian Neural Network!')
    
    #st.expand("expand this by clicking")

    #col1,col2,col3 = st.columns(3)
    
    st.markdown("An Expert System can be defined as a knowledge-base system that acquires knowledge"+"\n"
"from its knowledge base of a specific domain and addresses user queries using its"+"\n"
"inference engine about that specific domain.")
    
    # info_display = get_file("index.md")
    #st.container()
    app_mode = st.sidebar.selectbox("Choose the app mode",
            ["Show Instructions", "Run the App", "Show the Source Code", "Expert System","Markdown Report"])
    if app_mode == "Show Instructions":
        st.sidebar.success('Success! Read the Instructions here!')
        st.markdown(get_file("instructions.md"))
        #show_instruction()
    elif app_mode == "Show the Source Code":
        #info_display.empty()
        st.sidebar.success('Success! See the source code of the web app!')
        st.code(get_file("stream_app.py"))
    elif app_mode == "Run the App":
        #readme_text.empty()
        st.sidebar.success('Success! Go to form section and fill the variables!')
        run_application()
    elif app_mode == "Expert System":
        st.sidebar.success('Success! Useful for any User!')
        expert_system()
        st.balloons()
        #st.snow()
    elif app_mode =="Markdown Report":
        st.sidebar.success('Success! Read the Report here!.')
        st.write("Report is taken from markdown file with in the folder.")
        st.markdown(get_file("markdown_report.md"))
        
    

    # thinking to change them to true or false instead of values and numbers like 0 and 1 to make it easier for the end user.
    
    


def predict_main(model,option,MType, AirT, ProcessT,RotationalS, Torque, Tool_wear,TWF, HDF, PWF, OSF, RNF):
    input=np.array([[MType, AirT, ProcessT, RotationalS, Torque, Tool_wear,TWF, HDF, PWF, OSF, RNF]]).astype(np.float64)
    st.markdown("By default, the model v1 will be loaded into the app!")
    #model = tf.keras.models.load_model('saved_model/model_tfp_v1')
    
    #Machine_failure = model.predict(input)
    #st.success('The val is {}'.format(Machine_failure))
    #st.markdown("loaded module is v1")'''
    Machine_failure = model.predict(input)
    #st.markdown("val is {}".format(model.predict(input)))
    #st.success('The val in fun{}'.format(Machine_failure,".4f")) #np.argmax()
    st.markdown("loaded module is {}".format(option))
    val = 0
    if(Machine_failure[0][0]>Machine_failure[0][1]):
        val = 0
    else:
        val = 1
        #Machine_failure[0][1]
        
    return int(val)

def run_application():
    #st.markdown('##### Number inputs for model')
    html_temp = """
    <div style="background:#050256 ;padding:10px">
    <h2 style="color:white;text-align:center;">Fill this form for Prediction! </h2>
    </div>
    """
    st.markdown(html_temp, unsafe_allow_html = True)
    col1, col2 = st.columns([4,4])
    #MType, AirT, ProcessT,RotationalS, Torque, Tool_wear,TWF, HDF, PWF, OSF, RNF
    st.write("Inside the form")
     
    with col1:
        MType = float(st.number_input('Insert MType value'))
        AirT = float(st.number_input('Insert AirT number'))
        ProcessT = float(st.number_input('Insert ProcessT number'))
        RotationalS = float(st.number_input('Insert RotationalS number'))
        Torque = float(st.number_input('Insert Torque number'))
        Tool_wear = float(st.number_input('Insert Tool_wear number'))
        
    with col2:
        twf = float(st.number_input('Insert TWF value'))
        hdf = float(st.number_input('Insert HDF number'))
        pwf = float(st.number_input('Insert PWF number'))
        osf = float(st.number_input('Insert OSF number'))
        rnf = float(st.number_input('Insert RNF number'))
        slider_val = st.slider("Form slider")
        checkbox_val = st.checkbox("Form checkbox")
        option = st.selectbox( 'Select the model to be loaded into the app!',
     ('model_v1', 'model_v2', 'normal_bnn_model','normal_bnn2_model','p_model_1','p_model_2','p_model_3','p_model_4','p_model_5','callp_model 6','callp_model 7', 'callp_model 8', 'callp_model 9', 'callp_model 10'))
        #torque = float(st.number_input('Insert torque number'))

    #st.write('The current number is ', at)
    
    #st.markdown('##### Number inputs for model')
    #st.write('The current number is ', pt)
    
    #st.markdown('##### Number inputs for model')
    #st.write('The current number is ', rs)
    
    #st.markdown('##### Number inputs for model')
    #st.write('The current number is ', torque)  
    # Every form must have a submit button.
    
    #submitted = st.form_submit_button("Submit")
    
    safe_html ="""  
    <div style="background-color:#80ff80; padding:10px >
    <h2 style="color:white;text-align:center;"> Value is 0</h2>
    </div>
"""
    warn_html ="""  
    <div style="background-color:#F4D03F; padding:10px >
    <h2 style="color:white;text-align:center;"> Value is 1</h2>
    </div>
"""

    if st.button("Submit"):
        st.success("form submitted")
        st.write('You selected:', option)
        if option == 'model_v1':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/model_tfp_v1')
        elif option =='model_v2':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/model_tfp_v2')
        elif option =='p_model_1':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/p_model 1')
        elif option =='p_model_2':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/p_model 2')
        elif option =='p_model_3':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/p_model 3')
        elif option =='p_model_4':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/p_model 4')
        elif option =='p_model_5':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/p_model 5')
        elif option =='callp_model 6':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/callp_model 6')
        elif option =='callp_model 7':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/callp_model 7')
        elif option =='callp_model 8':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/callp_model 8')
        elif option =='callp_model 9':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/callp_model 9')
        elif option =='callp_model 10':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/callp_model 10')
        elif option =='normal_bnn_model':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/normal_bnn_model')
        elif option =='normal_bnn2_model':
            model = tf.keras.models.load_model('tensorflow_content/saved_model/normal_bnn2_model')
        machine_predict = predict_main(model,option,MType, AirT, ProcessT,RotationalS, Torque, Tool_wear,twf, hdf, pwf, osf, rnf)
        #st.success('The val is {}'.format(machine_predict))
        
        if machine_predict == 0:
            st.markdown(safe_html,unsafe_allow_html=True)
        elif machine_predict == 1:
            st.markdown(warn_html,unsafe_allow_html=True)
        #elif machine_predict == 2:
        #    st.markdown(danger_html,unsafe_allow_html=True)
            #st.write("slider", slider_val, "checkbox", checkbox_val)
    
    return

def expert_system():
    st.write("Expert System")
    st.subheader('steps of the Expert System!')
    st.markdown("> - Queries here can be answered to get the advice from Expert System. " +"\n"
                " - User can select the appropriate option below the each query to submit to system. " +"\n" 
                " - Based on the option selected, a certain value gets assigned to that variable." +"\n" 
                " - all these values will be sent to model to get the prediction." +"\n"
                " - the result value from the model is either 0 or 1." + "\n"
                " - this value is converted into advice for the user for his specific query from the Expert System Model. "+"\n"
                " - From the model, if it is safe, just print that the machine is safe and if not, then based on the query value for last 4 values for various machinery failures, print accordingly the cause of failure and a possible solution to it. ")
   # st.markdown("# Queries here can be answered to get the advice from Expert System")
   # st.markdown("## User can select the appropriate option below the each query to submit to system.")
   # st.markdown("### Based on the option selected, a certain value gets assigned to that variable.")
   # st.markdown("#### all these values will be sent to model to get the prediction")
   # st.markdown("##### the result value from the model is either 0 or 1.")
   # st.markdown("###### this value is converted into advice for the user for his specific query from the Expert System Model.")
   # st.markdown("### From the model, if it is safe, just print that the machine is safe and if not, then based on the query value for last 4 values for various machinery failures, print accordingly the cause of failure and a possible solution to it. ")
    
    d= '''tool wear failure (TWF): the tool will be replaced of fail at a randomly selected tool wear time between 200 â€“ 240 mins (120 times in our dataset). At this point in time, the tool is replaced 69 times, and fails 51 times (randomly assigned).
heat dissipation failure (HDF): heat dissipation causes a process failure, if the difference between air- and process temperature is below 8.6 K and the toolâ€™s rotational speed is below 1380 rpm. This is the case for 115 data points.
power failure (PWF): the product of torque and rotational speed (in rad/s) equals the power required for the process. If this power is below 3500 W or above 9000 W, the process fails, which is the case 95 times in our dataset.
overstrain failure (OSF): if the product of tool wear and torque exceeds 11,000 minNm for the L product variant (12,000 M, 13,000 H), the process fails due to overstrain. This is true for 98 datapoints.
random failures (RNF): each process has a chance of 0,1 % to fail regardless of its process parameters. This is the case for only 5 datapoints, less than could be expected for 10,000 datapoints in our dataset.     '''
    
    col1, col2 = st.columns([6,2])
    # order of variables or queries: MType, AirT, ProcessT,RotationalS, Torque, Tool_wear,twf, hdf, pwf, osf, rnf
    with col1:
        #try sending 0's for all these 5 variables instead of any questionarie to user. 
        # MType
        query_1 = st.selectbox( 'What is the machine type?',
        ('Low Quality', 'Medium Quality', 'High Quality'))
        st.write('You selected:', query_1)
        if(query_1=='High Quality'):
            MType = 0
        elif(query_1=='Low Quality'):
            MType = 1
        else:
            MType = 2
        
        #AirT its 298 - 301, so will take 300.1 as common for all.
        #query_2 = st.selectbox('Approx amount of heat released:',
        #('less', 'medium', 'high'))
        #st.write('You selected:', query_2)
        
        #ProcessT taking median 310.1
        #query_3 = st.selectbox( 'query 3 goes here!!',
        #('option1', 'option2', 'option3'))
        #st.write('You selected:', query_3)
        
        #RotationalS
        query_4 = st.selectbox( 'what is the speed of the machine?',
        ('low', 'medium', 'high'))
        st.write('You selected:', query_4)
        if(query_4=='low'):
            RotationalS = 1300
            hdf = 1
        elif(query_4=='medium'):
            RotationalS = 1500
            hdf = 0
        else:
            RotationalS = 1700
            hdf = 0
        
        #Torque
        query_5 = st.selectbox( 'what is the machine\s rotational force?',
        ('low', 'medium', 'high'))
        st.write('You selected:', query_5)
        if(query_4=='low'):
            Torque = 20
        elif(query_4=='medium'):
            Torque = 40
        else:
            Torque = 60
            
        #Tool_wear
        query_6 = st.selectbox( 'Select the range of usage time of tool:',
        ('less used', 'medium usage', 'heavily used'))
        st.write('You selected:', query_6)
        if(query_6=='less used'):
            Tool_wear = 110
            twf = 0
        elif(query_6=='medium usage'):
            Tool_wear = 165
            twf = 0
        else:
            Tool_wear = 220
            twf = 1 # may need to random of 0 and 1 each time if possible
    
    with col2:
        
        # tool wear failure is covered above.  
        #query_7 = st.selectbox( 'Select the range of usage time of tool:',
        #('less used', 'medium usage', 'heavily used'))
        #st.write('You selected:', query_7)
        
        
        # heat dissipation failure done along with rotationaljs
        #query_8 = st.selectbox( 'Approx amount of heat released:',
        #('less', 'medium', 'high'))
        #st.write('You selected:', query_8)
        #if(query_7=='less'):
            #twf = 100
        #elif(query_7=='medium'):
            #twf = 150
        #else:
            #twf = 200
        
        # power failure (PWF) calculated using formula from data description
        #query_9 = st.selectbox( 'what is the amount of power used?',
        #('low', 'medium', 'high'))
        #st.write('You selected:', query_9)
        val = (RotationalS * Torque ) / 60
        if(val<3500 or val>9000):
            pwf = 1
        else:
            pwf = 0
        
        # overstrain failure (OSF) = toolwear * torque and taken conditions
        #query_10 = st.selectbox( 'query 10 goes here!!',
        #('option1', 'option2', 'option3'))
        #st.write('You selected:', query_10)
        val2 = (Torque * Tool_wear) #already in Nm min
        if(val2>11000 and MType == 1):
            osf = 1
        elif(val2>12000 and MType == 2):
            osf = 1
        elif(val2>13000 and MType == 0):
            osf = 1
        else:
            osf = 0
        
        # random failures (RNF) no need as only 0-1% of failure.
        #query_11 = st.selectbox( 'query 11 goes here!!',
        #('option1', 'option2', 'option3'))
        #st.write('You selected:', query_11)
        rnf = random.randrange(0, 1, 4)
        st.write(rnf)
    
    safe_html ="""  
    <div style="background-color:#025246; padding:10px >
    <h2 style="color:white;text-align:center;"> Hello User! your Machine is Safe. you can continue using it.</h2>
    </div>
"""
    warn_html ="""  
    <div style="background-color:#050256; padding:10px >
    <h2 style="color:white;text-align:center;"> Hello User! your Machine has a failure!! and here is the reason for failure and a possbile solution.</h2>
    </div>
"""
    fail_r1 = """
    <div style="background:#050256 ;padding:10px">
    <h4 style="color:white;text-align:left;">Heat dissipation failure: Solution - Keep machine in a more open environment so that it gets cooled by releasing heat.</h2>
    </div>
    """
    fail_r2 = """
    <div style="background:#050256 ;padding:10px">
    <h4 style="color:white;text-align:left;">Tool wear failure: Solution - This can be reduced by using lubricants and coolants.</h2>
    </div>
    """
    fail_r3 = """
    <div style="background:#050256 ;padding:10px">
    <h4 style="color:white;text-align:left;">Power failure: Solution - It could be because of excess speed or low speed. use it at regular speed.</h2>
    </div>
    """
    fail_r4 = """
    <div style="background:#050256 ;padding:10px">
    <h4 style="color:white;text-align:left;">Overstrain failure: Solution - Keep Machine Idle at regular intervals.</h2>
    </div>
    """

    if st.button("Submit"):
        st.success("expert form submitted")
        
        #MType, AirT, ProcessT,RotationalS, Torque, Tool_wear,twf, hdf, pwf, osf, rnf
        #rnf = random.randrange(0, 11, 1) can use this to randomly select a model
        model = tf.keras.models.load_model('tensorflow_content/saved_model/normal_bnn2_model')
        machine_predict = predict_main(model,'normal_bnn2_model',MType,300.1, 310.1,RotationalS, Torque, Tool_wear,twf, hdf, pwf, osf, rnf)
        #st.success('The val is {}'.format(machine_predict))
        
        if machine_predict == 0:
            st.markdown(safe_html,unsafe_allow_html=True)
        elif machine_predict == 1:
            st.markdown(warn_html,unsafe_allow_html=True)
            fails= []
            if hdf == 1:
                #st.markdown(fail_r1,unsafe_allow_html=True)
                fails.append(fail_r1)
            if twf == 1: 
                #st.markdown(fail_r2,unsafe_allow_html=True)
                fails.append(fail_r2)
            if pwf == 1: 
                #st.markdown(fail_r3,unsafe_allow_html=True)
                fails.append(fail_r3)
            if osf == 1: 
                #st.markdown(fail_r4,unsafe_allow_html=True)
                fails.append(fail_r4)
            
            for i in fails:
                  st.markdown(i,unsafe_allow_html=True)
                  
        
    return

def show_instruction():
    st.write("Instructions for users and developers!")
    st.write("Outside the form")
    # plot various graphs related to data in this
    st.write("Here's our first attempt at using data to create a table:")
    st.write(pd.DataFrame({
    'first column': [1, 2, 3, 4],
    'second column': [10, 20, 30, 40]
    }))
    col1, col2 = st.columns([4,4])
    with col1:
        st.markdown("# column 1")
        st.write(pd.DataFrame({
        'first column': [1, 2, 3, 4],
        'second column': [10, 20, 30, 40]
        }))
    with col2:
        st.markdown("# column 2")
        st.markdown("## App Description and steps to be installed goes here!")
    
    col1, col2 = st.columns([4,4])
    with col1:
        st.markdown("# column 1")
        st.image('moon.jpg')
        
    with col2:
        st.markdown("# column 2")
        st.markdown("## Reports goes here!")    
        st.markdown("markdown_report.md") # include it in app
    return

def get_file(path):
    # gets the file from mentioned path and file name and reads the content of the file and displays it in the app.
    url = 'file:/M:/2022/PHASE II/' + path
    response = urllib.request.urlopen(url)
    return response.read().decode("utf-8")
    #return

def fill_form():
    # 1. at
    # 2. pt
    # 3. rs
    # 4. torque

    # create a number input in streamlit app.
    #with st.form("my_form"):
    # embedded this in the run app function, so not needed now.
    return

# visualize neural network in a box : not implemented it but included a normal layer image in colab file.
# existing libraries for visualization won't support for tfp layers.
def visualize_bnn():
    return
# option to try different bnn with various paramters
# and selecting that model for prediction on the data input given by the user.

# plotting various plots : included plots in colab and not here.
def various_bokeh_plots():
    st.plotly_chart()
    st.bokeh_chart()
    return
# create plots to be embedded in streamlit app
# display report pdf in this app: included an option to show the markdown report file but not the original report.

#main function: execution starts from here.
if __name__ == "__main__":
    # web app configuration parameters
    st.set_page_config(
        page_title="Expert System",
        page_icon=":icon",
        layout="wide",
        initial_sidebar_state="expanded",    
    )
    # the main container which fills the application
    with st.container():
        model_summary = model.summary
        #st.markdown(model_summary)
        #this is the custom html formatted text to display in the application.
        html_temp = """
            <div style="background:#025246 ;padding:12px">
            <h2 style="color:white;text-align:center;">Expert System Web App using BNN Model</h2>
            </div>
            """
        # displays the above custom text in the app.
        st.markdown(html_temp, unsafe_allow_html = True)
        
        #taking 2 columns in the container which contains all info.
        col1, col2 = st.columns([4,3])

        with col1:
            st.header("Logo and Info") #Column 1:
            #st.image("https://static.streamlit.io/examples/cat.jpg")
            st.image('Expert System.png')
            #fill_form()
            
        with col2:
            st.header("TO-DO")     
            st.markdown('''
        1. - [X] VISUALIZE BNN - basic layer one  \n
        2. - [X] VARIANTS OF BNN done - VI, DROPOUT, EARLY STOP all available in app\n
        3. - [X] SELECT THE BEST VERSION OF IT - YES one variant in streamlit by default.
        4. - [X] GUI FOR EXPERT SYSTEM 
        5. - [X] INPUTS OF VARIOUS FIELDS TO THE SYSTEM TO GIVE INPUT TO MODEL.
        5  - [X] DONE WITH THE all VERSION OF MODELs AS FILE AND RUNNING IT IN STREAMLIT APP
        6. - [X] RESULT FROM MODEL OF 0 AND 1 IS TO CONVERTED INTO TEXT TO BE ABLE 
        TO UNDERSTOOD BY THE USER.(TAKE HELP FROM MECH FRIEND) which can give advice to a non expert user.
        
        7. - [X] FINAL REPORT
        8. - [ ] FINAL PPT FOR PRESENTATION
        
        10. - [ ] DONE!!!!! '''
        )
            #9. - [ ] PREPARE FROM MY DL BOOK FOR MTP PRESENTATION AND VIVA.
            #(<10% PLAG) not gui one
            #visualize_bnn()
            #various_bokeh_plots()
        main()