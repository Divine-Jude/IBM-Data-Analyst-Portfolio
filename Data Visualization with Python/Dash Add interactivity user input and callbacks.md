<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/@highlightjs/cdn-assets@10.7.1/styles/default.min.css">
  </head>
  <body>
    <h1>Dash Components</h1>
    <center>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/assets/logos/SN_web_lightmode.png" width="300" alt="cognitiveclass.ai logo">
    </center>
    <h3>Objectives</h3>
    <p>After completing the lab you will be able to:</p>
    <ul>
      <li>Work with Dash Callbacks</li>
    </ul>
    <p><strong>Estimated time needed:</strong> 30 minutes</p>
    <h3>Dataset Used</h3>
    <p><a href="https://developer.ibm.com/exchanges/data/all/airline?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01&#x26;cm_mmc=Email_Newsletter-_-Developer_Ed%2BTech-_-WW_WW-_-SkillsNetwork-Courses-IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork-20297740&#x26;cm_mmca1=000026UJ&#x26;cm_mmca2=10006555&#x26;cm_mmca3=M12345678&#x26;cvosrc=email.Newsletter.M12345678&#x26;cvo_campaign=000026UJ" target="_blank" rel="external">Airline Reporting Carrier On-Time Performance</a> dataset from <a href="https://developer.ibm.com/exchanges/data?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01&#x26;cm_mmc=Email_Newsletter-_-Developer_Ed%2BTech-_-WW_WW-_-SkillsNetwork-Courses-IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork-20297740&#x26;cm_mmca1=000026UJ&#x26;cm_mmca2=10006555&#x26;cm_mmca3=M12345678&#x26;cvosrc=email.Newsletter.M12345678&#x26;cvo_campaign=000026UJ" target="_blank" rel="external">Data Asset eXchange</a></p>
    <h1>About Skills Network Cloud IDE</h1>
    <p>
      This Skills Network Labs Cloud IDE (Integrated Development Environment) provides a hands-on environment in your web browser for completing course and project related labs. It utilizes Theia, an open-source IDE platform, that can be run on desktop or on the cloud.
      So far in the course you have been using Jupyter notebooks to run your python code. This IDE provides an alternative for editing and running your Python code. In this lab you will be using this alternative Python runtime to create and launch your Dash applications.
    </p>
    <h3>Important Notice about this lab environment</h3>
    <p>Please be aware that sessions for this lab environment are not persisted. When you launch the Cloud IDE, you are presented with a 'dedicated computer on the cloud' exclusively for you. This is available to you as long as you are actively working on the labs.</p>
    <p>Once you close your session or it is timed out due to inactivity, you are logged off, and this 'dedicated computer on the cloud' is deleted along with any files you may have created, dowloaded or installed. The next time you launch this lab, a new environment is created for you.</p>
    <p><em>If you finish only part of the lab and return later, you may have to start from the beginning. So, it is a good idea to plan to your time accordingly and finish your labs in a single session.</em></p>
    <h1>Let's start creating dash application</h1>
    <h3>Theme</h3>
    <p>Extract average monthly arrival delay time and see how it changes over the year. Year range is from 2010 to 2020.</p>
    <h3>Expected Output</h3>
    <p>Below is the expected result from the lab. Our dashboard application consists of three components:</p>
    <ul>
      <li>Title of the application</li>
      <li>Component to enter input year</li>
      <li>Chart conveying the average monthly arrival delay</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab2_output.png" alt="">
    </p>
    <h3>To do:</h3>
    <ol>
      <li>Import required libraries and read the dataset</li>
      <li>Create an application layout</li>
      <li>Add title to the dashboard application using HTML H1 component</li>
      <li>Add an input text box using core input component</li>
      <li>Add the line chart using core graph component</li>
      <li>Run the app</li>
    </ol>
    <h1>Get the tool ready</h1>
    <ul>
      <li>Install python packages required to run the application. Copy and paste the below command to the terminal.</li>
    </ul>
    <pre><code class="hljs language-cmake">python3 -m pip <span class="hljs-keyword">install</span> pandas dash
</code></pre>
    <p></p>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/pandas_dash.PNG" alt="">
    </p>
    <pre><code class="hljs language-apache"><span class="hljs-attribute">pip3</span> install httpx==<span class="hljs-number">0</span>.<span class="hljs-number">20</span> dash plotly
</code></pre>
    <p></p>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/install_httpx.PNG" alt="">
    </p>
    <ul>
      <li>Create a new python script, by clicking on the menu bar and selecting <strong>File</strong>-><strong>New File</strong>, as in the image below.</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/file1.png" alt="">
    </p>
    <ul>
      <li>Provide the file name as <code>dash_interactivity.py</code></li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab2_file.png" alt="">
    </p>
    <ul>
      <li>Open a new terminal, by clicking on the menu bar and selecting <strong>Terminal</strong>-><strong>New Terminal</strong>, as in the image below.</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab2_new_terminal.png" alt="">
    </p>
    <ul>
      <li>Now, you have script and terminal ready to start the lab.</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab2_terminal.png" alt="">
    </p>
    <h1>TASK 1 - Read the data</h1>
    <p>Let's start with</p>
    <ul>
      <li>Importing necessary libraries</li>
      <li>Reading the data</li>
    </ul>
    <p>Copy the below code to the <code>dash_interactivity.py</code> script and review the code.</p>
    <pre><code class="hljs language-elm"># <span class="hljs-type">Import</span> required libraries
<span class="hljs-keyword">import</span> pandas <span class="hljs-keyword">as</span> pd
<span class="hljs-keyword">import</span> plotly.graph_objects <span class="hljs-keyword">as</span> go
<span class="hljs-keyword">import</span> dash
<span class="hljs-keyword">import</span> dash_html_components <span class="hljs-keyword">as</span> html
<span class="hljs-keyword">import</span> dash_core_components <span class="hljs-keyword">as</span> dcc
<span class="hljs-title">from</span> dash.dependencies <span class="hljs-keyword">import</span> Input, Output

# <span class="hljs-type">Read</span> the airline data into pandas dataframe
<span class="hljs-title">airline_data</span> =  pd.read_csv(<span class="hljs-string">'https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/Data%20Files/airline_data.csv'</span>, 
                            encoding = <span class="hljs-string">"ISO-8859-1"</span>,
                            d<span class="hljs-keyword">type</span>={'<span class="hljs-type">Div1Airport</span>': str, '<span class="hljs-type">Div1TailNum</span>': str, 
                                   '<span class="hljs-type">Div2Airport</span>': str, '<span class="hljs-type">Div2TailNum</span>': str})
</code></pre>
    <p></p>
    <h1>TASK 2 - Create dash application and get the layout skeleton</h1>
    <p>Next, we create a skeleton for our dash application. Our dashboard application layout has three components as seen before:</p>
    <ul>
      <li>Title of the application</li>
      <li>Component to enter input year inside a layout division</li>
      <li>Chart conveying the average monthly arrival delay inside a layout division</li>
    </ul>
    <p>Mapping to the respective Dash HTML tags:</p>
    <ul>
      <li>Title added using <code>html.H1()</code> tag</li>
      <li>Layout division added using <code>html.Div()</code> and input component added using <code>dcc.Input()</code> tag inside the layout division.</li>
      <li>Layout division added using <code>html.Div()</code> and chart added using <code>dcc.Graph()</code> tag inside the layout division.</li>
    </ul>
    <p>Copy the below code to the <code>dash_interactivity.py</code> script and review the structure.</p>
    <p><em>NOTE</em>: Copy below the current code</p>
    <pre><code class="hljs language-stylus"># Create <span class="hljs-selector-tag">a</span> dash application
app = dash<span class="hljs-selector-class">.Dash</span>(__name__)

# Get the layout of the application and adjust it.
# Create an outer division using <span class="hljs-selector-tag">html</span><span class="hljs-selector-class">.Div</span> and add title to the dashboard using <span class="hljs-selector-tag">html</span><span class="hljs-selector-class">.H1</span> component
# Add <span class="hljs-selector-tag">a</span> <span class="hljs-selector-tag">html</span><span class="hljs-selector-class">.Div</span> and core <span class="hljs-selector-tag">input</span> text component
# Finally, add graph component.
app<span class="hljs-selector-class">.layout</span> = <span class="hljs-selector-tag">html</span><span class="hljs-selector-class">.Div</span>(children=<span class="hljs-selector-attr">[html.H1(),                                html.Div([<span class="hljs-string">"Input Year"</span>, dcc.Input(),]</span>, 
                                style={}),
                                <span class="hljs-selector-tag">html</span><span class="hljs-selector-class">.Br</span>(),
                                <span class="hljs-selector-tag">html</span><span class="hljs-selector-class">.Br</span>(),
                                <span class="hljs-selector-tag">html</span><span class="hljs-selector-class">.Div</span>(),
                                ])
</code></pre>
    <p></p>
    <h1>TASK 3 - Update layout components</h1>
    <h3>Application title</h3>
    <ul>
      <li>Heading reference: <a href="https://dash.plotly.com/dash-html-components/h1?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">Plotly H1 HTML Component</a></li>
      <li>Title as <code>Airline Performance Dashboard</code></li>
      <li>Use <code>style</code> parameter and make the title <code>center</code> aligned, with color code <code>#503D36</code>, and font-size as <code>40</code>. Check <code>More about HTML</code> section <a href="https://dash.plotly.com/layout?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">here</a>.</li>
    </ul>
    <h3>Input component</h3>
    <ul>
      <li>Update <a href="https://dash.plotly.com/dash-core-components/input?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">dcc.Input</a> component <code>id</code> as <code>input-year</code>, default <code>value</code> as <code>2010</code>, and <code>type</code> as <code>number</code>. Use <code>style</code> parameter and assign height of the input box to be <code>50px</code> and font-size to be <code>35</code>.</li>
      <li>Use <code>style</code> parameter and assign font-size as <code>40</code> for the whole division.</li>
    </ul>
    <h3>Output component</h3>
    <ul>
      <li>Add <code>dcc.Graph()</code> component to the second division.</li>
      <li>Update <a href="https://dash.plotly.com/dash-core-components/graph?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">dcc.Graph</a> component <code>id</code> as <code>line-plot</code>.</li>
    </ul>
    <h1>TASK 4 - Add the application callback function</h1>
    <p>The core idea of this application is to get year as user input and update the dashboard in real-time. We will be using <code>callback</code> function for the same.</p>
    <p>Steps:</p>
    <ul>
      <li>Define the callback decorator</li>
      <li>Define the callback function that uses the input provided to perform the computation</li>
      <li>Create graph and return it as an output</li>
      <li>Run the application</li>
    </ul>
    <p>Copy the below code to the <code>dash_interactivity.py</code> script and review the structure.</p>
    <p><em>NOTE</em>: Copy below the current code</p>
    <pre><code class="hljs language-scheme"># add callback decorator
@app.callback(<span class="hljs-name">Output</span>(),
               Input())

# Add computation to callback function and return graph
def get_graph(<span class="hljs-name">entered_year</span>):
    # Select data based on the entered year
    df =  airline_data[<span class="hljs-name">airline_data</span>[<span class="hljs-symbol">'Year</span>']==int(<span class="hljs-name">entered_year</span>)]
    
    # Group the data by Month and compute average over arrival delay time.
    line_data = df.groupby(<span class="hljs-symbol">'Month</span>')[<span class="hljs-symbol">'ArrDelay</span>'].mean().reset_index()
    
    # 
    fig = go.Figure(<span class="hljs-name">data=</span>)
    fig.update_layout()
    return fig

# Run the app
if __name__ == <span class="hljs-symbol">'__main__</span><span class="hljs-symbol">':</span>
    app.run_server()
</code></pre>
    <p></p>
    <h1>TASK 5 - Update the callback function</h1>
    <h3>Callback decorator</h3>
    <ul>
      <li>Refer examples provided <a href="https://dash.plotly.com/basic-callbacks?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">here</a></li>
      <li>Update output component id parameter with the id provided in the <code>dcc.Graph()</code> component and component property as <code>figure</code>.</li>
      <li>Update input component id parameter with the id provided in the <code>dcc.Input()</code> component and component property as <code>value</code>.</li>
    </ul>
    <h3>Callback function</h3>
    <ul>
      <li>Update <code>data</code> parameter of the <code>go.Figure()</code> with the scatter plot. Refer <a href="https://plotly.com/python/line-and-scatter/?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01#scatter-and-line-plot-with-goscatter" target="_blank" rel="external">here</a>. Sample syntax below:</li>
    </ul>
    <pre><code class="hljs language-routeros">go.Scatter(<span class="hljs-attribute">x</span>=<span class="hljs-string">'----'</span>, <span class="hljs-attribute">y</span>=<span class="hljs-string">'----'</span>, <span class="hljs-attribute">mode</span>=<span class="hljs-string">'-----'</span>, <span class="hljs-attribute">marker</span>=<span class="hljs-string">'----)
</span></code></pre>
    <p></p>
    <ul>
      <li>
        <p>Update <code>x</code> as <code>line_data['Month']</code>, <code>y</code> as <code>line_data['ArrDelay']</code>, <code>mode</code> as <code>lines</code>, and <code>marker</code> as <code>dict(color='green')</code>.</p>
      </li>
      <li>
        <p>Update <code>fig.update_layout</code> with title, xaxis_title, and yaxis_title parameters.</p>
        <ul>
          <li>Title as <code>Month vs Average Flight Delay Time</code></li>
          <li><code>xaxis_title</code> as <code>Month</code></li>
          <li><code>yaxis_title</code> as <code>ArrDelay</code></li>
        </ul>
        <p>Refer the update layout function <a href="https://plotly.com/python/line-and-scatter/?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01#style-scatter-plots" target="_blank" rel="external">here</a>.</p>
      </li>
    </ul>
    <p>Refer to the full python code of <code>dash_interactivity.py</code> below:</p>
    <pre><code class="hljs language-scheme">
# Import required libraries
import pandas as pd
import plotly.graph_objects as go
import dash
import dash_html_components as html
import dash_core_components as dcc
from dash.dependencies import Input, Output

# Read the airline data into pandas dataframe
airline_data =  pd.read_csv(<span class="hljs-symbol">'https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/Data%20Files/airline_data.csv</span>', 
                            encoding = <span class="hljs-string">"ISO-8859-1"</span>,
                            dtype={<span class="hljs-symbol">'Div1Airport</span><span class="hljs-symbol">':</span> str, <span class="hljs-symbol">'Div1TailNum</span><span class="hljs-symbol">':</span> str, 
                                   <span class="hljs-symbol">'Div2Airport</span><span class="hljs-symbol">':</span> str, <span class="hljs-symbol">'Div2TailNum</span><span class="hljs-symbol">':</span> str})
# Create a dash application
app = dash.Dash(<span class="hljs-name">__name__</span>)
                               
app.layout = html.Div(<span class="hljs-name">children=</span>[ html.H1(<span class="hljs-symbol">'Airline</span> Performance Dashboard',style={<span class="hljs-symbol">'textAlign</span><span class="hljs-symbol">':</span> <span class="hljs-symbol">'center</span>', <span class="hljs-symbol">'color</span><span class="hljs-symbol">':</span> '#<span class="hljs-number">503</span>D36',<span class="hljs-symbol">'font-size</span><span class="hljs-symbol">':</span> <span class="hljs-number">40</span>}),
                                html.Div([<span class="hljs-string">"Input Year: "</span>, dcc.Input(<span class="hljs-name">id=</span><span class="hljs-symbol">'input-year</span>', value=<span class="hljs-symbol">'2010</span>', 
                                type=<span class="hljs-symbol">'number</span>', style={<span class="hljs-symbol">'height</span><span class="hljs-symbol">':</span><span class="hljs-symbol">'50px</span>', <span class="hljs-symbol">'font-size</span><span class="hljs-symbol">':</span> <span class="hljs-number">35</span>}),], 
                                style={<span class="hljs-symbol">'font-size</span><span class="hljs-symbol">':</span> <span class="hljs-number">40</span>}),
                                html.Br(),
                                html.Br(),
                                html.Div(<span class="hljs-name">dcc.Graph</span>(<span class="hljs-name">id=</span><span class="hljs-symbol">'line-plot</span>')),
                                ])

# add callback decorator
@app.callback( Output(<span class="hljs-name">component_id=</span><span class="hljs-symbol">'line-plot</span>', component_property=<span class="hljs-symbol">'figure</span>'),
               Input(<span class="hljs-name">component_id=</span><span class="hljs-symbol">'input-year</span>', component_property=<span class="hljs-symbol">'value</span>'))

# Add computation to callback function and return graph
def get_graph(<span class="hljs-name">entered_year</span>):
    # Select <span class="hljs-number">2019</span> data
    df =  airline_data[<span class="hljs-name">airline_data</span>[<span class="hljs-symbol">'Year</span>']==int(<span class="hljs-name">entered_year</span>)]
    
    # Group the data by Month and compute average over arrival delay time.
    line_data = df.groupby(<span class="hljs-symbol">'Month</span>')[<span class="hljs-symbol">'ArrDelay</span>'].mean().reset_index()

    fig = go.Figure(<span class="hljs-name">data=go.Scatter</span>(<span class="hljs-name">x=line_data</span>[<span class="hljs-symbol">'Month</span>'], y=line_data[<span class="hljs-symbol">'ArrDelay</span>'], mode=<span class="hljs-symbol">'lines</span>', marker=dict(<span class="hljs-name">color=</span><span class="hljs-symbol">'green</span>')))
    fig.update_layout(<span class="hljs-name">title=</span><span class="hljs-symbol">'Month</span> vs Average Flight Delay Time', xaxis_title=<span class="hljs-symbol">'Month</span>', yaxis_title=<span class="hljs-symbol">'ArrDelay</span>')
    return fig

# Run the app
if __name__ == <span class="hljs-symbol">'__main__</span><span class="hljs-symbol">':</span>
    app.run_server()

</code></pre>
    <p></p>
    <h1>TASK 6 - Run the application</h1>
    <ul>
      <li>Firstly, install pandas and dash using the following command in the terminal</li>
    </ul>
    <pre><code class="hljs language-cmake">pip3 <span class="hljs-keyword">install</span> pandas dash
</code></pre>
    <p></p>
    <ul>
      <li>Copy and paste the below command in the terminal to run the application.</li>
    </ul>
    <pre><code class="hljs language-vim"><span class="hljs-keyword">python3</span> dash_interactivity.<span class="hljs-keyword">py</span>
</code></pre>
    <p></p>
    <ul>
      <li>Observe the port number shown in the terminal.</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/port.png" alt="">
    </p>
    <ul>
      <li>Click on the <code>Launch Application</code> option from the side menu bar.Provide the port number and click <code>OK</code></li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/launch_application_new.PNG" alt="">
    </p>
    <p>The app will open in a new browser tab like below:</p>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab2_result.png" alt="">
    </p>
    <h3>Congratulations, you have successfully created your dash application!</h3>
    <h1>Exercise : Practice Tasks</h1>
    <p>You will practice some tasks to update the dashboard.</p>
    <ol>
      <li>
        <blockquote>
          <p>Change the title to the dashboard from "Airline Performance Dashboard" to "Airline Dash Interactivity" using HTML H1 component and font-size as 50.</p>
        </blockquote>
        <details>
          <summary>Answer</summary>
          <blockquote>
            <p>html.H1('Airline Dash Interactivity',style={'textAlign': 'center', 'color': '#503D36', 'font-size': 50}),</p>
          </blockquote>
        </details>
      </li>
      <li>
        <blockquote>
          <p>
            Update <a href="https://dash.plotly.com/dash-core-components/input?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">dcc.Input</a> component <code>id</code> as <code>input-year</code>, default <code>value</code> as <code>2015</code>, and <code>type</code> as <code>number</code>. Use <code>style</code> parameter and assign height of the input box to be <code>40px</code> and font-size to be <code>40</code>.
            Use <code>style</code> parameter and assign font-size as <code>35</code> for the whole division.
          </p>
        </blockquote>
        <details>
          <summary>Answer</summary>
          <blockquote>
            <p>html.Div(["Input Year: ", dcc.Input(id='input-year', value='2015',type='number', style={'height':40px', 'font-size': 40}),],style={'font-size': 35}),</p>
          </blockquote>
        </details>
      </li>
      <li>
        <blockquote>
          <p>Save the above changes and relaunch the dashboard application to see the updated dashboard title.</p>
        </blockquote>
        <details>
          <summary>Answer</summary>
          <blockquote>
            <p>Click on file --> save file.Then go to terminal and Run the command python3 dash_interactivity.py to open the updated file again and relaunch the application by entering the port number.The updated dashboard title will be seen.</p>
          </blockquote>
        </details>
      </li>
      <li>
        <blockquote>
          <p>Write a command to stop the running app in the terminal</p>
        </blockquote>
        <details>
          <summary>Answer</summary>
          <blockquote>
            <p>Press <code>ctrl+c</code> inside the terminal to stop the dash application.</p>
          </blockquote>
        </details>
      </li>
    </ol>
    <h2>Author</h2>
    <p><a href="https://www.linkedin.com/in/saishruthi-swaminathan?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01&#x26;cm_mmc=Email_Newsletter-_-Developer_Ed%2BTech-_-WW_WW-_-SkillsNetwork-Courses-IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork-20297740&#x26;cm_mmca1=000026UJ&#x26;cm_mmca2=10006555&#x26;cm_mmca3=M12345678&#x26;cvosrc=email.Newsletter.M12345678&#x26;cvo_campaign=000026UJ" target="_blank" rel="external">Saishruthi Swaminathan</a></p>
    <h2>Changelog</h2>
    <table>
      <thead>
        <tr>
          <th>Date</th>
          <th>Version</th>
          <th>Changed by</th>
          <th>Change Description</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>05-07-2021</td>
          <td>1.0</td>
          <td>Saishruthi</td>
          <td>Initial version created</td>
        </tr>
        <tr>
          <td>24-08-2022</td>
          <td>1.1</td>
          <td>Pratiksha</td>
          <td>Instructions updated</td>
        </tr>
        <tr>
          <td>29-08-2022</td>
          <td>1.2</td>
          <td>Pratiksha Verma</td>
          <td>Updated Screenshot</td>
        </tr>
      </tbody>
    </table>
    <h2></h2>
    <h3 align="center">© IBM Corporation 2020. All rights reserved.</h3>
    <h3></h3>
    <script>window.addEventListener('load', function() {
snFaculty.inject();
});</script>
    <script src="https://skills-network-assets.s3.us.cloud-object-storage.appdomain.cloud/scripts/inject.43989f87.js"></script>
    <script src="https://unpkg.com/@highlightjs/cdn-assets@10.7.1/highlight.min.js"></script>
    <script src="https://unpkg.com/highlightjs-badge@0.1.9/highlightjs-badge.min.js"></script>
  </body>
</html>
