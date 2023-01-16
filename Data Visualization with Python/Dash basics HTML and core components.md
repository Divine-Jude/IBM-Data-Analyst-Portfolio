<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/@highlightjs/cdn-assets@10.7.1/styles/default.min.css">
  </head>
  <body>
    <center>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/assets/logos/SN_web_lightmode.png" width="300" alt="cognitiveclass.ai logo">
    </center>
    <h1>Dash Components</h1>
    <h3>Objectives</h3>
    <p>After completing the lab you will be able to:</p>
    <ul>
      <li>Create a dash application layout</li>
      <li>Add HTML H1, P, and Div components</li>
      <li>Add core graph component</li>
      <li>Add multiple charts</li>
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
    <p>Once you close your session or it is timed out due to inactivity, you are logged off, and this ‘dedicated computer on the cloud’ is deleted along with any files you may have created, dowloaded or installed. The next time you launch this lab, a new environment is created for you.</p>
    <p><em>If you finish only part of the lab and return later, you may have to start from the beginning. So, it is a good idea to plan to your time accordingly and finish your labs in a single session.</em></p>
    <h1>Let's start creating dash application</h1>
    <h3>Goal</h3>
    <p>Create a dashboard that displays the percentage of flights running under specific distance group. Distance group is the distance intervals, every 250 miles, for flight segment. If the flight covers to 500 miles, it will be under distance group 2 (250 miles + 250 miles).</p>
    <h3>Expected Output</h3>
    <p>Below is the expected result from the lab. Our dashboard application consists of three components:</p>
    <ul>
      <li>Title of the application</li>
      <li>Description of the application</li>
      <li>Chart conveying the proportion of distance group by month</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/basics_output.png" alt="">
    </p>
    <h3>To do:</h3>
    <ol>
      <li>Import required libraries and read the dataset</li>
      <li>Create an application layout</li>
      <li>Add title to the dashboard using HTML H1 component</li>
      <li>Add a paragraph about the chart using HTML P component</li>
      <li>Add the pie chart above using core graph component</li>
      <li>Run the app</li>
    </ol>
    <h1>Get the tool ready</h1>
    <ul>
      <li>Install python packages required to run the application. Copy and paste the below command to the terminal.</li>
    </ul>
    <pre><code class="hljs language-cmake">python3 -m pip <span class="hljs-keyword">install</span> pandas dash
</code></pre>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/pandas_dash.PNG" alt="">
    </p>
    <pre><code class="hljs language-apache"><span class="hljs-attribute">pip3</span> install httpx==<span class="hljs-number">0</span>.<span class="hljs-number">20</span> dash plotly
</code></pre>
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
      <li>Provide the file name as <code>dash_basics.py</code></li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/file2.png" alt="">
    </p>
    <ul>
      <li>Open a new terminal, by clicking on the menu bar and selecting <strong>Terminal</strong>-><strong>New Terminal</strong>, as in the image below.</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/terminal.png" alt="">
    </p>
    <ul>
      <li>Now, you have script and terminal ready to start the lab.</li>
    </ul>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/full.png" alt="">
    </p>
    <p></p>
    <h1>TASK 1 - Data Preparation</h1>
    <p>Let's start with</p>
    <ul>
      <li>Importing necessary libraries</li>
      <li>Reading and sampling 500 random data points</li>
      <li>Get the chart ready</li>
    </ul>
    <p>Copy the below code to the <code>dash_basics.py</code> script and review the code.</p>
    <pre><code class="hljs language-python"><span class="hljs-comment"># Import required packages</span>
<span class="hljs-keyword">import</span> pandas <span class="hljs-keyword">as</span> pd
<span class="hljs-keyword">import</span> plotly.express <span class="hljs-keyword">as</span> px
<span class="hljs-keyword">import</span> dash
<span class="hljs-keyword">import</span> dash_html_components <span class="hljs-keyword">as</span> html
<span class="hljs-keyword">import</span> dash_core_components <span class="hljs-keyword">as</span> dcc

<span class="hljs-comment"># Read the airline data into pandas dataframe</span>
airline_data =  pd.read_csv(<span class="hljs-string">'https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/Data%20Files/airline_data.csv'</span>, 
                            encoding = <span class="hljs-string">"ISO-8859-1"</span>,
                            dtype={<span class="hljs-string">'Div1Airport'</span>: <span class="hljs-built_in">str</span>, <span class="hljs-string">'Div1TailNum'</span>: <span class="hljs-built_in">str</span>, 
                                   <span class="hljs-string">'Div2Airport'</span>: <span class="hljs-built_in">str</span>, <span class="hljs-string">'Div2TailNum'</span>: <span class="hljs-built_in">str</span>})

<span class="hljs-comment"># Randomly sample 500 data points. Setting the random state to be 42 so that we get same result.</span>
data = airline_data.sample(n=<span class="hljs-number">500</span>, random_state=<span class="hljs-number">42</span>)

<span class="hljs-comment"># Pie Chart Creation</span>
fig = px.pie(data, values=<span class="hljs-string">'Flights'</span>, names=<span class="hljs-string">'DistanceGroup'</span>, title=<span class="hljs-string">'Distance group proportion by flights'</span>)
</code></pre>
    <p></p>
    <h1>TASK 2 - Create dash application and get the layout skeleton</h1>
    <p>Next, we create a skeleton for our dash application. Our dashboard application has three components as seen before:</p>
    <ul>
      <li>Title of the application</li>
      <li>Description of the application</li>
      <li>Chart conveying the proportion of distance group by month</li>
    </ul>
    <p>Mapping to the respective Dash HTML tags:</p>
    <ul>
      <li>Title added using <code>html.H1()</code> tag</li>
      <li>Description added using <code>html.P()</code> tag</li>
      <li>Chart added using <code>dcc.Graph()</code> tag</li>
    </ul>
    <p>Copy the below code to the <code>dash_basics.py</code> script and review the structure.</p>
    <p><em>NOTE</em>: Copy below the current code</p>
    <pre><code class="hljs language-ini"><span class="hljs-comment"># Create a dash application</span>
<span class="hljs-attr">app</span> = dash.Dash(__name__)

<span class="hljs-comment"># Get the layout of the application and adjust it.</span>
<span class="hljs-comment"># Create an outer division using html.Div and add title to the dashboard using html.H1 component</span>
<span class="hljs-comment"># Add description about the graph using HTML P (paragraph) component</span>
<span class="hljs-comment"># Finally, add graph component.</span>
<span class="hljs-attr">app.layout</span> = html.Div(children=[html.H1(),
                                html.P(),
                                dcc.Graph(),
                                               
                    ])

<span class="hljs-comment"># Run the application                   </span>
if <span class="hljs-attr">__name__</span> == <span class="hljs-string">'__main__'</span>:
    app.run_server()
</code></pre>
    <p></p>
    <h1>TASK 3 - Add the application title</h1>
    <p>Update the <code>html.H1()</code> tag to hold the application title.</p>
    <ul>
      <li>Application title is <code>Airline Dashboard</code></li>
      <li>Use style parameter provided below to make the title <code>center</code> aligned, with color code <code>#503D36</code>, and font-size as <code>40</code></li>
    </ul>
    <pre><code class="hljs language-scheme"><span class="hljs-symbol">'Airline</span> Dashboard',style={<span class="hljs-symbol">'textAlign</span><span class="hljs-symbol">':</span> <span class="hljs-symbol">'center</span>', <span class="hljs-symbol">'color</span><span class="hljs-symbol">':</span> '#<span class="hljs-number">503</span>D<span class="hljs-number">36</span>', <span class="hljs-symbol">'font-size</span><span class="hljs-symbol">':</span> <span class="hljs-number">40</span>}
</code></pre>
    <p></p>
    <p>After updating the <code>html.H1()</code> with the application title, the <code>app.layout</code> will look like:</p>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/1_h1.png" alt="">
    </p>
    <h1>TASK 4 - Add the application description</h1>
    <p>Update the <code>html.P()</code> tag to hold the description of the application.</p>
    <ul>
      <li>Description is <code>Proportion of distance group (250 mile distance interval group) by flights.</code></li>
      <li>Use style parameter to make the description <code>center</code> aligned and with color <code>#F57241</code>.</li>
    </ul>
    <pre><code class="hljs language-scheme">(<span class="hljs-symbol">'Proportion</span> of distance group (<span class="hljs-name">250</span> mile distance interval group) by flights.', style={<span class="hljs-symbol">'textAlign</span><span class="hljs-symbol">':</span><span class="hljs-symbol">'center</span>', <span class="hljs-symbol">'color</span><span class="hljs-symbol">':</span> '#F57241'}),
</code></pre>
    <p></p>
    <p>After updating the <code>html.H1()</code> with the application title, the <code>app.layout</code> will look like:</p>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/2_p1.png" alt="">
    </p>
    <h1>TASK 5 - Update the graph</h1>
    <p>Update <code>figure</code> parameter of <code>dcc.Graph()</code> component to add the pie chart. We have created pie chart and assigned it to <code>fig</code>. Let's use that to update the <code>figure</code> parameter.</p>
    <pre><code class="hljs language-ini">(<span class="hljs-attr">figure</span>=fig)
</code></pre>
    <p></p>
    <p>After updating the <code>dcc.Graph()</code> with the application title, the <code>app.layout</code> will look like:</p>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/3_graph.png" alt="">
    </p>
    <p>Before running the application, save the file by clicking on <strong>File -> Save</strong> from the menu bar.</p>
    <p>
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/save.png" alt="">
    </p>
    <p>You can Refer to the entire python code here</p>
    <pre><code class="hljs language-ini">
<span class="hljs-comment"># Import required packages</span>
import pandas as pd
import plotly.express as px
import dash
import dash_html_components as html
import dash_core_components as dcc

<span class="hljs-comment"># Read the airline data into pandas dataframe</span>
<span class="hljs-attr">airline_data</span> =  pd.read_csv(<span class="hljs-string">'https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/Data%20Files/airline_data.csv'</span>, 
                            <span class="hljs-attr">encoding</span> = <span class="hljs-string">"ISO-8859-1"</span>,
                            <span class="hljs-attr">dtype</span>={<span class="hljs-string">'Div1Airport'</span>: str, <span class="hljs-string">'Div1TailNum'</span>: str, 
                                   'Div2Airport': str, 'Div2TailNum': str})

<span class="hljs-comment"># Randomly sample 500 data points. Setting the random state to be 42 so that we get same result.</span>
<span class="hljs-attr">data</span> = airline_data.sample(n=<span class="hljs-number">500</span>, random_state=<span class="hljs-number">42</span>)

<span class="hljs-comment"># Pie Chart Creation</span>
<span class="hljs-attr">fig</span> = px.pie(data, values=<span class="hljs-string">'Flights'</span>, names=<span class="hljs-string">'DistanceGroup'</span>, title=<span class="hljs-string">'Distance group proportion by flights'</span>)

<span class="hljs-comment"># Create a dash application</span>
<span class="hljs-attr">app</span> = dash.Dash(__name__)

<span class="hljs-comment"># Get the layout of the application and adjust it.</span>
<span class="hljs-comment"># Create an outer division using html.Div and add title to the dashboard using html.H1 component</span>
<span class="hljs-comment"># Add description about the graph using HTML P (paragraph) component</span>
<span class="hljs-comment"># Finally, add graph component.</span>
<span class="hljs-attr">app.layout</span> = html.Div(children=[html.H1(<span class="hljs-string">'Airline Dashboard'</span>, style={<span class="hljs-string">'textAlign'</span>: <span class="hljs-string">'center'</span>, <span class="hljs-string">'color'</span>: <span class="hljs-string">'#503D36'</span>, <span class="hljs-string">'font-size'</span>: <span class="hljs-number">40</span>}),
                                html.P(<span class="hljs-string">'Proportion of distance group (250 mile distance interval group) by flights.'</span>, style={<span class="hljs-string">'textAlign'</span>:<span class="hljs-string">'center'</span>, <span class="hljs-string">'color'</span>: <span class="hljs-string">'#F57241'</span>}),
                                dcc.Graph(figure=fig),
                                               
                    ])

<span class="hljs-comment"># Run the application                   </span>
if <span class="hljs-attr">__name__</span> == <span class="hljs-string">'__main__'</span>:
    app.run_server()

</code></pre>
    <p></p>
    <h1>TASK 6 - Run the application</h1>
    <ul>
      <li>Run the python file using the following command in the terminal</li>
    </ul>
    <pre><code class="hljs language-vim"><span class="hljs-keyword">python3</span> dash_basics.<span class="hljs-keyword">py</span>
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
      <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/labs/Module%204/images/lab1_output.png" alt="">
    </p>
    <h3>Congratulations, you have successfully created your first dash application!</h3>
    <h1>Exercise : Practice Tasks</h1>
    <p>You will practice some tasks to update the dashboard.</p>
    <ol>
      <li>
        <blockquote>
          <p>Change the title to the dashboard from "Airline Dashboard" to "Airline On-time Performance Dashboard" using HTML H1 component and font-size as 50.</p>
        </blockquote>
        <details>
          <summary>Answer</summary>
          <blockquote>
            <p>html.H1('Airline On-time Performance Dashboard',style={'textAlign': 'center', 'color': '#503D36', 'font-size': 50}),</p>
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
            <p>Click on file --> save file.Then go to terminal and Run the command python3 dash_basics.py to open the updated file again and relaunch the application by entering the port number.The updated dashboard title will be seen.</p>
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
          <td>1.1</td>
          <td>Saishruthi</td>
          <td>Initial version created</td>
        </tr>
        <tr>
          <td>24-08-2022</td>
          <td>1.2</td>
          <td>Pratiksha</td>
          <td>Updated instructions</td>
        </tr>
        <tr>
          <td>29-08-2022</td>
          <td>1.3</td>
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
