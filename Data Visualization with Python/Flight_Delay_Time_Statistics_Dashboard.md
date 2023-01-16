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
      <li>Know how to add multiple graphs to the dashboard</li>
      <li>Work with Dash Callbacks to handle multiple outputs</li>
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
    <h2>Theme</h2>
    <p>Analyze flight delays in a dashboard.</p>
    <h2>Dashboard Components</h2>
    <ul>
      <li>Monthly average carrier delay by reporting airline for the given year.</li>
      <li>Monthly average weather delay by reporting airline for the given year.</li>
      <li>Monthly average national air system delay by reporting airline for the given year.</li>
      <li>Monthly average security delay by reporting airline for the given year.</li>
      <li>Monthly average late aircraft delay by reporting airline for the given year.</li>
    </ul>
    <p>NOTE: Year range should be between 2010 and 2020</p>
    <h3>Expected Output</h3>
    <p>Below is the expected result from the lab. Our dashboard application consists of three components:</p>
    <ul>
      <li>Title of the application</li>
      <li>Component to enter input year</li>
      <li>5 Charts conveying the different types of flight delay. Chart section is divided into three segments.
        <ul>
          <li>Carrier and Weather delay in the first segment</li>
          <li>National air system and Security delay in the second segment</li>
          <li>Late aircraft delay in the third segment</li>
        </ul>
      </li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab3_expected_output.png" alt="">
    </p>
    <h3>To do:</h3>
    <ul>
      <li>Design layout for the application.</li>
      <li>Create a callback function. Add callback decorator, define inputs and outputs.</li>
      <li>Review the helper function that performs computation on the provided inputs.</li>
      <li>Create 5 line graphs.</li>
      <li>Run the application.</li>
    </ul>
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
      <li>Provide the file name as <code>flight_details.py</code></li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab3_file.png" alt="">
    </p>
    <ul>
      <li>Open a new terminal, by clicking on the menu bar and selecting <strong>Terminal</strong>-><strong>New Terminal</strong>, as in the image below.</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab3_terminal.png" alt="">
    </p>
    <ul>
      <li>Now, you have script and terminal ready to start the lab.</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab3_setup.png" alt="">
    </p>
    <h1>TASK 1 - Read the data</h1>
    <p>Let's start with</p>
    <ul>
      <li>Importing necessary libraries</li>
      <li>Reading the data</li>
    </ul>
    <p>Copy the below code to the <code>flight_delay.py</code> script and review the code.</p>
    <pre><code class="hljs language-elm"># <span class="hljs-type">Import</span> required libraries
<span class="hljs-keyword">import</span> pandas <span class="hljs-keyword">as</span> pd
<span class="hljs-keyword">import</span> plotly.graph_objects <span class="hljs-keyword">as</span> go
<span class="hljs-keyword">import</span> dash
<span class="hljs-keyword">import</span> dash_html_components <span class="hljs-keyword">as</span> html
<span class="hljs-keyword">import</span> dash_core_components <span class="hljs-keyword">as</span> dcc
<span class="hljs-title">from</span> dash.dependencies <span class="hljs-keyword">import</span> Input, Output
<span class="hljs-keyword">import</span> plotly.express <span class="hljs-keyword">as</span> px

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
      <li>5 Charts conveying the different types of flight delay</li>
    </ul>
    <p>Mapping to the respective Dash HTML tags:</p>
    <ul>
      <li>Title added using <code>html.H1()</code> tag</li>
      <li>Layout division added using <code>html.Div()</code> and input component added using <code>dcc.Input()</code> tag inside the layout division.</li>
      <li>5 charts split into three segments. Each segment has a layout division added using <code>html.Div()</code> and chart added using <code>dcc.Graph()</code> tag inside the layout division.</li>
    </ul>
    <p>Copy the below code to the <code>flight_delay.py</code> script and review the structure.</p>
    <p><em>NOTE</em>: Copy below the current code</p>
    <pre><code class="hljs language-scheme"># Create a dash application
app = dash.Dash(<span class="hljs-name">__name__</span>)

# Build dash app layout
app.layout = html.Div(<span class="hljs-name">children=</span>[ html.H1(),
                                html.Div([<span class="hljs-string">"Input Year: "</span>, dcc.Input()],
                                style={<span class="hljs-symbol">'font-size</span><span class="hljs-symbol">':</span> <span class="hljs-number">30</span>}),
                                html.Br(),
                                html.Br(), 
                                html.Div([
                                        html.Div(),
                                        html.Div()
                                ], style={<span class="hljs-symbol">'display</span><span class="hljs-symbol">':</span> <span class="hljs-symbol">'flex</span>'}),
    
                                html.Div([
                                        html.Div(),
                                        html.Div()
                                ], style={<span class="hljs-symbol">'display</span><span class="hljs-symbol">':</span> <span class="hljs-symbol">'flex</span>'}),
                                
                                html.Div(, style={<span class="hljs-symbol">'width</span><span class="hljs-symbol">':</span><span class="hljs-symbol">'65%</span>'})
                                ])
</code></pre>
    <p></p>
    <p><em>NOTE</em>: We are using display as <code>flex</code> for two outer divisions to get graphs side by side in a row.</p>
    <h1>TASK 3 - Update layout components</h1>
    <h3>Application title</h3>
    <ul>
      <li>Title as <code>Flight Delay Time Statistics</code>, align text as <code>center</code>, color as <code>#503D36</code>, and font size as <code>30</code>.</li>
    </ul>
    <h3>Input component</h3>
    <ul>
      <li>Update <a href="https://dash.plotly.com/dash-core-components/input?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">dcc.Input</a> component <code>id</code> as <code>input-year</code>, default <code>value</code> as <code>2010</code>, and <code>type</code> as <code>number</code>. Use <code>style</code> parameter and assign height of the input box to be <code>35px</code> and font-size to be <code>30</code>.</li>
    </ul>
    <h3>Output component - Segment 1</h3>
    <p>Segment 1 is the first <code>html.Div()</code>. We have two inner division where first two graphs will be placed.</p>
    <h4>Skeleton</h4>
    <pre><code class="hljs language-scheme">html.Div([
          html.Div(),
          html.Div()
         ], style={<span class="hljs-symbol">'display</span><span class="hljs-symbol">':</span> <span class="hljs-symbol">'flex</span>'}),
</code></pre>
    <p></p>
    <h4>First inner division</h4>
    <ul>
      <li>Add <code>dcc.Graph()</code> component.</li>
      <li>Update <a href="https://dash.plotly.com/dash-core-components/graph?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">dcc.Graph</a> component <code>id</code> as <code>carrier-plot</code>.</li>
    </ul>
    <h5>Second inner division</h5>
    <ul>
      <li>Add <code>dcc.Graph()</code> component.</li>
      <li>Update <a href="https://dash.plotly.com/dash-core-components/graph?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">dcc.Graph</a> component <code>id</code> as <code>weather-plot</code>.</li>
    </ul>
    <h3>Output component - Segment 2</h3>
    <p>Segment 2 is the second <code>html.Div()</code>. We have two inner division where the next two graphs will be placed.</p>
    <h4>Skeleon</h4>
    <pre><code class="hljs language-scheme">html.Div([
          html.Div(),
          html.Div()
         ], style={<span class="hljs-symbol">'display</span><span class="hljs-symbol">':</span> <span class="hljs-symbol">'flex</span>'}),
</code></pre>
    <p></p>
    <h4>First inner division</h4>
    <ul>
      <li>Add <code>dcc.Graph()</code> component.</li>
      <li>Update <a href="https://dash.plotly.com/dash-core-components/graph?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">dcc.Graph</a> component <code>id</code> as <code>nas-plot</code>.</li>
    </ul>
    <h5>Second inner division</h5>
    <ul>
      <li>Add <code>dcc.Graph()</code> component.</li>
      <li>Update <a href="https://dash.plotly.com/dash-core-components/graph?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">dcc.Graph</a> component <code>id</code> as <code>security-plot</code>.</li>
    </ul>
    <h3>Output component - Segment 3</h3>
    <p>Segment 3 is the last <code>html.Div()</code>.</p>
    <h4>Skeleon</h4>
    <pre><code class="hljs language-scheme">html.Div(, style={<span class="hljs-symbol">'width</span><span class="hljs-symbol">':</span><span class="hljs-symbol">'65%</span>'})
</code></pre>
    <p></p>
    <ul>
      <li>Add <code>dcc.Graph()</code> component to the first inner division.</li>
      <li>Update <a href="https://dash.plotly.com/dash-core-components/graph?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">dcc.Graph</a> component <code>id</code> as <code>late-plot</code>.</li>
    </ul>
    <h1>TASK 4 - Review and add supporting function</h1>
    <p>Below is the function that gets input year and data, perform computation for creating charts and plots.</p>
    <p>Copy the below code to the <code>flight_delay.py</code> script and review the structure.</p>
    <p><em>NOTE</em>: Copy below the current code</p>
    <pre><code class="hljs language-scheme"><span class="hljs-string">""</span><span class="hljs-string">" Compute_info function description

This function takes in airline data and selected year as an input and performs computation for creating charts and plots.

Arguments:
    airline_data: Input airline data.
    entered_year: Input year for which computation needs to be performed.
    
Returns:
    Computed average dataframes for carrier delay, weather delay, NAS delay, security delay, and late aircraft delay.

"</span><span class="hljs-string">""</span>
def compute_info(<span class="hljs-name">airline_data</span>, entered_year):
    # Select data
    df =  airline_data[<span class="hljs-name">airline_data</span>[<span class="hljs-symbol">'Year</span>']==int(<span class="hljs-name">entered_year</span>)]
    # Compute delay averages
    avg_car = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'CarrierDelay</span>'].mean().reset_index()
    avg_weather = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'WeatherDelay</span>'].mean().reset_index()
    avg_NAS = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'NASDelay</span>'].mean().reset_index()
    avg_sec = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'SecurityDelay</span>'].mean().reset_index()
    avg_late = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'LateAircraftDelay</span>'].mean().reset_index()
    return avg_car, avg_weather, avg_NAS, avg_sec, avg_late
</code></pre>
    <p></p>
    <h1>TASK 5 - Add the application callback function</h1>
    <p>The core idea of this application is to get year as user input and update the dashboard in real-time. We will be using <code>callback</code> function for the same.</p>
    <p>Steps:</p>
    <ul>
      <li>Define the callback decorator</li>
      <li>Define the callback function that uses the input provided to perform the computation</li>
      <li>Create graph and return it as an output</li>
      <li>Run the application</li>
    </ul>
    <p>Copy the below code to the <code>flight_delay.py</code> script and review the structure.</p>
    <p><em>NOTE</em>: Copy below the current code</p>
    <pre><code class="hljs language-ini"><span class="hljs-comment"># Callback decorator</span>
@app.callback( <span class="hljs-section">[
               Output(component_id='carrier-plot', component_property='figure'),
               ---
               --- 
               ---
               ---
               ]</span>,
               Input(....))
<span class="hljs-comment"># Computation to callback function and return graph</span>
def get_graph(entered_year):
    
    <span class="hljs-comment"># Compute required information for creating graph from the data</span>
    avg_car, avg_weather, avg_NAS, avg_sec, <span class="hljs-attr">avg_late</span> = compute_info(airline_data, entered_year)
            
    <span class="hljs-comment"># Line plot for carrier delay</span>
    <span class="hljs-attr">carrier_fig</span> = px.line(avg_car, x=<span class="hljs-string">'Month'</span>, y=<span class="hljs-string">'CarrierDelay'</span>, color=<span class="hljs-string">'Reporting_Airline'</span>, title=<span class="hljs-string">'Average carrier delay time (minutes) by airline'</span>)
    <span class="hljs-comment"># Line plot for weather delay</span>
    <span class="hljs-attr">weather_fig</span> = ------
    <span class="hljs-comment"># Line plot for nas delay</span>
    <span class="hljs-attr">nas_fig</span> = ------
    <span class="hljs-comment"># Line plot for security delay</span>
    <span class="hljs-attr">sec_fig</span> = ------
    <span class="hljs-comment"># Line plot for late aircraft delay</span>
    <span class="hljs-attr">late_fig</span> = ------
            
    return<span class="hljs-section">[carrier_fig, weather_fig, nas_fig, sec_fig, late_fig]</span>

<span class="hljs-comment"># Run the app</span>
if <span class="hljs-attr">__name__</span> == <span class="hljs-string">'__main__'</span>:
    app.run_server()
</code></pre>
    <p></p>
    <h1>TASK 6 - Update the callback function</h1>
    <h3>Callback decorator</h3>
    <ul>
      <li>Refer examples provided <a href="https://dash.plotly.com/basic-callbacks?utm_medium=Exinfluencer&#x26;utm_source=Exinfluencer&#x26;utm_content=000026UJ&#x26;utm_term=10006555&#x26;utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDV0101ENSkillsNetwork970-2022-01-01" target="_blank" rel="external">here</a></li>
      <li>We have 5 output components added in a list. Update output component id parameter with the ids provided in the <code>dcc.Graph()</code> component and set the component property as <code>figure</code>. One sample has been added to the skeleton.</li>
      <li>Update input component id parameter with the id provided in the <code>dcc.Input()</code> component and component property as <code>value</code>.</li>
    </ul>
    <h3>Callback function</h3>
    <p>Next is to update the <code>get_graph</code> function. We have already added a function <code>compute_info</code> that will perform computation on the data using the input.</p>
    <p>Mapping the returned value from the function <code>compute_info</code> to graph:</p>
    <ul>
      <li><code>avg_car</code> - input for carrier delay</li>
      <li><code>avg_weather</code> - input for weather delay</li>
      <li><code>avg_NAS</code> - input for NAS delay</li>
      <li><code>avg_sec</code> - input for security delay</li>
      <li><code>avg_late</code> - input for late aircraft delay</li>
    </ul>
    <p>Code has been provided for plotting carrier delay. Follow the same process and use the above mapping to get plots for other 4 delays.</p>
    <p>Refer to the full code of <code>4.8_Flight_Delay_Time_Statistics_Dashboard.py</code></p>
    <pre><code class="hljs language-scheme"># Import required libraries
import pandas as pd
import dash
import dash_html_components as html
import dash_core_components as dcc
from dash.dependencies import Input, Output
import plotly.express as px

# Read the airline data into pandas dataframe
airline_data =  pd.read_csv(<span class="hljs-symbol">'https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/Data%20Files/airline_data.csv</span>', 
                            encoding = <span class="hljs-string">"ISO-8859-1"</span>,
                            dtype={<span class="hljs-symbol">'Div1Airport</span><span class="hljs-symbol">':</span> str, <span class="hljs-symbol">'Div1TailNum</span><span class="hljs-symbol">':</span> str, 
                                   <span class="hljs-symbol">'Div2Airport</span><span class="hljs-symbol">':</span> str, <span class="hljs-symbol">'Div2TailNum</span><span class="hljs-symbol">':</span> str})

# Create a dash application
app = dash.Dash(<span class="hljs-name">__name__</span>)

# Build dash app layout
app.layout = html.Div(<span class="hljs-name">children=</span>[ html.H1(<span class="hljs-symbol">'Flight</span> Delay Time Statistics', 
                                style={<span class="hljs-symbol">'textAlign</span><span class="hljs-symbol">':</span> <span class="hljs-symbol">'center</span>', <span class="hljs-symbol">'color</span><span class="hljs-symbol">':</span> '#<span class="hljs-number">503</span>D36',
                                <span class="hljs-symbol">'font-size</span><span class="hljs-symbol">':</span> <span class="hljs-number">30</span>}),
                                html.Div([<span class="hljs-string">"Input Year: "</span>, dcc.Input(<span class="hljs-name">id=</span><span class="hljs-symbol">'input-year</span>', value=<span class="hljs-symbol">'2010</span>', 
                                type=<span class="hljs-symbol">'number</span>', style={<span class="hljs-symbol">'height</span><span class="hljs-symbol">':</span><span class="hljs-symbol">'35px</span>', <span class="hljs-symbol">'font-size</span><span class="hljs-symbol">':</span> <span class="hljs-number">30</span>}),], 
                                style={<span class="hljs-symbol">'font-size</span><span class="hljs-symbol">':</span> <span class="hljs-number">30</span>}),
                                html.Br(),
                                html.Br(), 
                                # Segment <span class="hljs-number">1</span>
                                html.Div([
                                        html.Div(<span class="hljs-name">dcc.Graph</span>(<span class="hljs-name">id=</span><span class="hljs-symbol">'carrier-plot</span>')),
                                        html.Div(<span class="hljs-name">dcc.Graph</span>(<span class="hljs-name">id=</span><span class="hljs-symbol">'weather-plot</span>'))
                                ], style={<span class="hljs-symbol">'display</span><span class="hljs-symbol">':</span> <span class="hljs-symbol">'flex</span>'}),
                                # Segment <span class="hljs-number">2</span>
                                html.Div([
                                        html.Div(<span class="hljs-name">dcc.Graph</span>(<span class="hljs-name">id=</span><span class="hljs-symbol">'nas-plot</span>')),
                                        html.Div(<span class="hljs-name">dcc.Graph</span>(<span class="hljs-name">id=</span><span class="hljs-symbol">'security-plot</span>'))
                                ], style={<span class="hljs-symbol">'display</span><span class="hljs-symbol">':</span> <span class="hljs-symbol">'flex</span>'}),
                                # Segment <span class="hljs-number">3</span>
                                html.Div(<span class="hljs-name">dcc.Graph</span>(<span class="hljs-name">id=</span><span class="hljs-symbol">'late-plot</span>'), style={<span class="hljs-symbol">'width</span><span class="hljs-symbol">':</span><span class="hljs-symbol">'65%</span>'})
                                ])

<span class="hljs-string">""</span><span class="hljs-string">" Compute_info function description

This function takes in airline data and selected year as an input and performs computation for creating charts and plots.

Arguments:
    airline_data: Input airline data.
    entered_year: Input year for which computation needs to be performed.
    
Returns:
    Computed average dataframes for carrier delay, weather delay, NAS delay, security delay, and late aircraft delay.

"</span><span class="hljs-string">""</span>
def compute_info(<span class="hljs-name">airline_data</span>, entered_year):
    # Select data
    df =  airline_data[<span class="hljs-name">airline_data</span>[<span class="hljs-symbol">'Year</span>']==int(<span class="hljs-name">entered_year</span>)]
    # Compute delay averages
    avg_car = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'CarrierDelay</span>'].mean().reset_index()
    avg_weather = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'WeatherDelay</span>'].mean().reset_index()
    avg_NAS = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'NASDelay</span>'].mean().reset_index()
    avg_sec = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'SecurityDelay</span>'].mean().reset_index()
    avg_late = df.groupby([<span class="hljs-symbol">'Month</span>',<span class="hljs-symbol">'Reporting_Airline</span>'])[<span class="hljs-symbol">'LateAircraftDelay</span>'].mean().reset_index()
    return avg_car, avg_weather, avg_NAS, avg_sec, avg_late

<span class="hljs-string">""</span><span class="hljs-string">"Callback Function

Function that returns fugures using the provided input year.

Arguments:

    entered_year: Input year provided by the user.
    
Returns:

    List of figures computed using the provided helper function `compute_info`.
"</span><span class="hljs-string">""</span>
# Callback decorator
@app.callback( [
               Output(<span class="hljs-name">component_id=</span><span class="hljs-symbol">'carrier-plot</span>', component_property=<span class="hljs-symbol">'figure</span>'),
               Output(<span class="hljs-name">component_id=</span><span class="hljs-symbol">'weather-plot</span>', component_property=<span class="hljs-symbol">'figure</span>'),
               Output(<span class="hljs-name">component_id=</span><span class="hljs-symbol">'nas-plot</span>', component_property=<span class="hljs-symbol">'figure</span>'),
               Output(<span class="hljs-name">component_id=</span><span class="hljs-symbol">'security-plot</span>', component_property=<span class="hljs-symbol">'figure</span>'),
               Output(<span class="hljs-name">component_id=</span><span class="hljs-symbol">'late-plot</span>', component_property=<span class="hljs-symbol">'figure</span>')
               ],
               Input(<span class="hljs-name">component_id=</span><span class="hljs-symbol">'input-year</span>', component_property=<span class="hljs-symbol">'value</span>'))
# Computation to callback function and return graph
def get_graph(<span class="hljs-name">entered_year</span>):
    
    # Compute required information for creating graph from the data
    avg_car, avg_weather, avg_NAS, avg_sec, avg_late = compute_info(<span class="hljs-name">airline_data</span>, entered_year)
            
    # Line plot for carrier delay
    carrier_fig = px.line(<span class="hljs-name">avg_car</span>, x=<span class="hljs-symbol">'Month</span>', y=<span class="hljs-symbol">'CarrierDelay</span>', color=<span class="hljs-symbol">'Reporting_Airline</span>', title=<span class="hljs-symbol">'Average</span> carrrier delay time (<span class="hljs-name">minutes</span>) by airline')
    # Line plot for weather delay
    weather_fig = px.line(<span class="hljs-name">avg_weather</span>, x=<span class="hljs-symbol">'Month</span>', y=<span class="hljs-symbol">'WeatherDelay</span>', color=<span class="hljs-symbol">'Reporting_Airline</span>', title=<span class="hljs-symbol">'Average</span> weather delay time (<span class="hljs-name">minutes</span>) by airline')
    # Line plot for nas delay
    nas_fig = px.line(<span class="hljs-name">avg_NAS</span>, x=<span class="hljs-symbol">'Month</span>', y=<span class="hljs-symbol">'NASDelay</span>', color=<span class="hljs-symbol">'Reporting_Airline</span>', title=<span class="hljs-symbol">'Average</span> NAS delay time (<span class="hljs-name">minutes</span>) by airline')
    # Line plot for security delay
    sec_fig = px.line(<span class="hljs-name">avg_sec</span>, x=<span class="hljs-symbol">'Month</span>', y=<span class="hljs-symbol">'SecurityDelay</span>', color=<span class="hljs-symbol">'Reporting_Airline</span>', title=<span class="hljs-symbol">'Average</span> security delay time (<span class="hljs-name">minutes</span>) by airline')
    # Line plot for late aircraft delay
    late_fig = px.line(<span class="hljs-name">avg_late</span>, x=<span class="hljs-symbol">'Month</span>', y=<span class="hljs-symbol">'LateAircraftDelay</span>', color=<span class="hljs-symbol">'Reporting_Airline</span>', title=<span class="hljs-symbol">'Average</span> late aircraft delay time (<span class="hljs-name">minutes</span>) by airline')
            
    return[<span class="hljs-name">carrier_fig</span>, weather_fig, nas_fig, sec_fig, late_fig]


# Run the app
if __name__ == <span class="hljs-symbol">'__main__</span><span class="hljs-symbol">':</span>
    app.run_server()

</code></pre>
    <p></p>
    <h1>TASK 6 - Run the application</h1>
    <ul>
      <li>Copy and paste the below command in the terminal to run the application.</li>
    </ul>
    <pre><code class="hljs language-vim"><span class="hljs-keyword">python3</span> flight_delay.<span class="hljs-keyword">py</span>
</code></pre>
    <p></p>
    <ul>
      <li>Observe the port number shown in the terminal.</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/port.png" alt="">
    </p>
    <ul>
      <li>Click on the <code>Launch Application</code> option from the side menu bar. Provide the port number and click <code>OK</code></li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/launch_application_new.PNG" alt="">
    </p>
    <p>The app will open in a new browser tab like below:</p>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab3_output.png" alt="">
    </p>
    <h3>Congratulations, you have successfully created your dash application!</h3>
    <h1>Exercise : Practice Tasks</h1>
    <p>You will practice some tasks to update the dashboard.</p>
    <ol>
      <li>
        <blockquote>
          <p>Change the title to the dashboard from <code>"Flight Delay Time Statistics"</code> to <code>"Flight Details Statistics Dashboard"</code> using HTML H1 component and font-size as 35.</p>
        </blockquote>
        <details>
          <summary>Answer</summary>
          <blockquote>
            <p>html.H1('Flight Details Statistics Dashboard',style={'textAlign': 'center', 'color': '#503D36', 'font-size': 35}),</p>
          </blockquote>
        </details>
      </li>
      <li>
        <blockquote>
          <p>Save the above changes and rename file as <code>flight_details.py</code>and relaunch the dashboard application to see the updated dashboard title.</p>
        </blockquote>
        <details>
          <summary>Answer</summary>
          <blockquote>
            <p>Click on <code>file</code> --> <code>save file as</code> and write file name as <code>flight_details.py</code>. Then go to terminal and Run the command <code>python3 flight_details.py</code> to open the updated file again and relaunch the application by entering the port number.The updated dashboard title will be seen.</p>
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
          <td>Updated Instructions</td>
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
