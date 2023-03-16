<!DOCTYPE html>
<!-- saved from url=(0189)https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DA0173EN-SkillsNetwork/Readings/3.3_-_Second-Round_Screens_MKD.md.html?origin=www.coursera.org?origin=www.coursera.org -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/@highlightjs/cdn-assets@10.7.1/styles/default.min.css">
  <style type="text/css">/* this file is used for labs on cognitiveclass.ai that were written in markdown */

/* applies to images, i.e. "![]()" in markdown */
img {
  max-width: 100%;
  height: auto;
}

/* add padding and margins */
body {
  padding: 10px;
  margin: 10px;
}

/* applies to tables, i.e. "|--|--|" in markdown */
table td,
table th {
  padding: 0.75rem;
  vertical-align: top;
  border-top: 1px solid #dee2e6;
}

/* applies to using quotes, i.e. ">" in markdown */
blockquote {
  background: #f9f9f9;
  border-left: 10px solid #ccc;
  margin: 1.5em 10px;
  padding: 1em 10px 0.1em 10px;
  quotes: '\201C''\201D''\2018''\2019';
}

/* the headers need some spacing */

h1,
h2,
h3,
h4,
h5,
h6 {
  font-weight: 500;
  padding-top: 20px;
}

/* Add padding between nested list item */
ul > li > ul {
  padding-bottom: 1rem;
}

.code-badge-language {
  display: none;
}
.code-badge-copy-icon {
  background: url('data:image/svg+xml;base64,PHN2ZyBhcmlhLWhpZGRlbj0idHJ1ZSIgZm9jdXNhYmxlPSJmYWxzZSIgZGF0YS1wcmVmaXg9ImZhciIgZGF0YS1pY29uPSJjb3B5IiBjbGFzcz0ic3ZnLWlubGluZS0tZmEgZmEtY29weSBmYS13LTE0IiByb2xlPSJpbWciIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgdmlld0JveD0iMCAwIDQ0OCA1MTIiPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTQzMy45NDEgNjUuOTQxbC01MS44ODItNTEuODgyQTQ4IDQ4IDAgMCAwIDM0OC4xMTggMEgxNzZjLTI2LjUxIDAtNDggMjEuNDktNDggNDh2NDhINDhjLTI2LjUxIDAtNDggMjEuNDktNDggNDh2MzIwYzAgMjYuNTEgMjEuNDkgNDggNDggNDhoMjI0YzI2LjUxIDAgNDgtMjEuNDkgNDgtNDh2LTQ4aDgwYzI2LjUxIDAgNDgtMjEuNDkgNDgtNDhWOTkuODgyYTQ4IDQ4IDAgMCAwLTE0LjA1OS0zMy45NDF6TTI2NiA0NjRINTRhNiA2IDAgMCAxLTYtNlYxNTBhNiA2IDAgMCAxIDYtNmg3NHYyMjRjMCAyNi41MSAyMS40OSA0OCA0OCA0OGg5NnY0MmE2IDYgMCAwIDEtNiA2em0xMjgtOTZIMTgyYTYgNiAwIDAgMS02LTZWNTRhNiA2IDAgMCAxIDYtNmgxMDZ2ODhjMCAxMy4yNTUgMTAuNzQ1IDI0IDI0IDI0aDg4djIwMmE2IDYgMCAwIDEtNiA2em02LTI1NmgtNjRWNDhoOS42MzJjMS41OTEgMCAzLjExNy42MzIgNC4yNDMgMS43NTdsNDguMzY4IDQ4LjM2OGE2IDYgMCAwIDEgMS43NTcgNC4yNDNWMTEyeiI+PC9wYXRoPjwvc3ZnPg==');
  background-size: 100% 100%;
}

.code-badge {
  bottom: 0 !important;
  top: unset !important;
  background: unset !important;
}

.code-badge > .code-badge-check-icon {
  background: green;
}
.code-badge-check-icon {
  font-size: 1.2em;
  cursor: pointer;
  padding: 0 7px;
  background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGFyaWEtaGlkZGVuPSJ0cnVlIiBmb2N1c2FibGU9ImZhbHNlIiBkYXRhLXByZWZpeD0iZmFzIiBkYXRhLWljb249ImNoZWNrIiBjbGFzcz0ic3ZnLWlubGluZS0tZmEgZmEtY2hlY2sgZmEtdy0xNiIgcm9sZT0iaW1nIiB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgc3R5bGU9IiYjMTA7ICAgIGNvbG9yOiAjMmFmZjMyOyYjMTA7Ij48cGF0aCBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzMuODk4IDQzOS40MDRsLTE2Ni40LTE2Ni40Yy05Ljk5Ny05Ljk5Ny05Ljk5Ny0yNi4yMDYgMC0zNi4yMDRsMzYuMjAzLTM2LjIwNGM5Ljk5Ny05Ljk5OCAyNi4yMDctOS45OTggMzYuMjA0IDBMMTkyIDMxMi42OSA0MzIuMDk1IDcyLjU5NmM5Ljk5Ny05Ljk5NyAyNi4yMDctOS45OTcgMzYuMjA0IDBsMzYuMjAzIDM2LjIwNGM5Ljk5NyA5Ljk5NyA5Ljk5NyAyNi4yMDYgMCAzNi4yMDRsLTI5NC40IDI5NC40MDFjLTkuOTk4IDkuOTk3LTI2LjIwNyA5Ljk5Ny0zNi4yMDQtLjAwMXoiLz48L3N2Zz4=');
  background-size: 100% 100%;
}
</style><style type="text/css">@font-face { font-family: Roboto; src: url("chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/css/Roboto-Regular.ttf"); }</style></head>
  <body data-new-gr-c-s-check-loaded="14.1098.0" data-gr-ext-installed="">
    <img src="./Interview_Second-Round_Screens_MKD_files/IDSNlogo.png" width="200" alt="IBM Developer Skills Network Logo">
    <h1>Second Round Screening</h1>
    <p>
      If you receive an invitation to a second job interview, you deserve to be
      congratulated. The interviewers involved in the first round were convinced that
      you may be a good fit.
    </p>
    <p>
      Usually, second-interview questions require you to share more about your
      competencies, in addition to your ethics and outlook about your work. Employers
      will also want to make sure you are able to work well within the company’s
      culture. Your answers should align with the company’s mission and the role of
      the position you are applying for. Remember that the company has an open
      position because they need to grow in an area of work or optimize a process, so
      it’s important to showcase how you can contribute to fulfill its purpose.
    </p>
    <h2>General second-round preparation</h2>
    <p>
      To prepare for a second-round job interview, it is important to reflect on how
      the first interview went and plan accordingly. Here are some possible
      considerations:
    </p>
    <ul>
      <li>
        <p>
          What went well? Use the experience wisely and to your advantage for the next
          time.
        </p>
      </li>
      <li>
        <p>
          Make note of the points that were discussed the most and which seemed to be
          more important or of particular interest to your interviewers. Prepare
          follow-up questions on those topics.
        </p>
      </li>
      <li>
        <p>
          Would you have answered a particular question differently? Was there a
          question that caught you off guard or was unexpected? How might you have
          responded instead? Think about what you’ll say if you get another chance to
          address this topic.
        </p>
      </li>
      <li>
        <p>
          Recall the names and job positions of those you met at the previous
          interview.
        </p>
      </li>
    </ul>
    <p>
      Did you have any thoughts, questions, or concerns that came up after the first
      interview was over? Make note of them in case there’s an opportunity to discuss
      them.
    </p>
    <h2>Types of second-round interviews</h2>
    <p>
      Second-round interviews are usually more focused than first or final interviews.
      You may meet with the same interviewers, but you will more likely meet with team
      leaders, technical managers, HR personnel, or others with distinct areas of
      interest. You may meet with higher-level or executive management, but each
      company proceeds differently.
    </p>
    <h2>HR Screen</h2>
    <p>
      A screen by a human resources (HR) professional will usually focus on very basic
      questions about your past experience and understanding of the company and its
      culture. It may even take place as a first interview. It generally won’t get
      into the nuts and bolts of a position, and there won’t be involved technical
      questions. Here are some questions you might expect from this screen:
    </p>
    <ul>
      <li>
        <p>What motivated you to apply for this job?</p>
      </li>
      <li>
        <p>What attracted you to our job listing?</p>
      </li>
      <li>
        <p>Why did you leave your last job?</p>
      </li>
      <li>
        <p>What is your ideal working environment?</p>
      </li>
      <li>
        <p>What do you know about our company’s product or services?</p>
      </li>
      <li>
        <p>What are your expectations about salary and other compensation?</p>
      </li>
    </ul>
    <p>
      With these questions, try to relate your experience to the answers and project a
      positive attitude. Think ahead about how to answer the questions that seem
      awkward; for example, if you left your last position for negative reasons,
      consider how to frame that neutrally and professionally. Don’t relate your
      specific compensation history if asked, but be candid about your expected rates
      and how flexible you can be.
    </p>
    <h2>Team leader</h2>
    <p>
      If you interview with a team leader (often a project manager or other
      management), they may want to discuss the team you’d be working with and how
      they approach projects. There may be some discussion of your skills, but less
      than you would do with a technical screen. The team leader will be interested in
      understanding your work style, so they may ask you more behavioral questions.
      Here are some examples of questions you might expect.
    </p>
    <ul>
      <li>
        <p>Tell me about a few of the first things you would do in this role.</p>
      </li>
      <li>
        <p>Give a few examples of best practices in data science.</p>
      </li>
      <li>
        <p>What’s a data science project you would want to work on at our company?</p>
      </li>
      <li>
        <p>
          Tell me about a time you experienced conflict with a colleague and how you
          resolved it.
        </p>
      </li>
      <li>
        <p>
          Tell me about a time when your project failed. What did you do and what did
          you learn?
        </p>
      </li>
      <li>
        <p>Do you prefer to work closely with a team or mostly by yourself?</p>
      </li>
      <li>
        <p>How are you motivated?</p>
      </li>
      <li>
        <p>How do you start learning about a topic you don’t know about yet?</p>
      </li>
    </ul>
    <p>
      Your answers to these questions will tell a hiring manager a lot about how you
      see your role and the value you bring to an organization. Build rapport with
      those who are present; make an effort to address interviewers by their name if
      you have met them before. Project yourself as an already-hired team member and
      discuss specific things that you'd want to learn and accomplish. Focus your
      responses on how you want to grow as a professional while exceling in your new
      role within the company.
    </p>
    <p>
      Interviewers sometimes ask questions, such as, <em>“If you could have a superpower,
which would it be and why?”</em> Although it may initially seem as off-topic or
      unrelated to the job position, the way you respond to these questions may reveal
      how you handle the unexpected stress, or perhaps gauge your creativity or the
      way you approach problems. Answer honestly and have fun when you think about and
      answer these kinds of questions.
    </p>
    <h2>Technical screen</h2>
    <p>
      A technical screen is usually conducted by a coding team leader or higher-level
      developer. Its purpose is to assess your technical skills and compare them to
      the skills needed for the position. Most of the questions will be about
      technical topics and team skills. Here are examples of the type of questions you
      may hear.
    </p>
    <ul>
      <li>
        <p>What coding languages do you know?</p>
      </li>
      <li>
        <p>What are some of your favorite tools?</p>
      </li>
      <li>
        <p>How do you begin working on a problem you’ve been assigned?</p>
      </li>
      <li>
        <p>What do you do when you reach something you don’t understand?</p>
      </li>
      <li>
        <p>How do you stay on schedule and manage your time?</p>
      </li>
      <li>
        <p>How do you prepare for a presentation?</p>
      </li>
    </ul>
    <p>
      There will usually be some specific problems to solve as well. Don’t worry – the
      interviewer won’t expect you to provide a perfect solution at once. These
      questions are meant to understand how you approach a problem and your thinking
      strategies.
    </p>
    <p>Conclusion</p>
    <p>
      No matter how you think the second interview goes, always try to end on a
      positive note and be explicit about your interest in the role. Express
      appreciation and thank each interviewer for the opportunity to interview again.
      Offer a sincere smile, handshake, and a wish that they are able to find the
      perfect fit for the job. Being enthusiastic and positive can leave a lasting
      impression and set you apart. Ask for contact information in case you need to
      reach them and respond promptly with any material they requested, such as links
      to your portfolio. Send thank-you notes the same day and follow up if you
      haven’t heard back within the estimated timeframe.
    </p>
    <h2></h2>
    <h3 align="center">© IBM Corporation 2022. All rights reserved.</h3>
    <h3></h3>
    <script>window.addEventListener('load', function() {
snFaculty.inject();
});</script>
    <script src="./Interview_Second-Round_Screens_MKD_files/inject.43989f87.js.download"></script>
    <script src="https://unpkg.com/@highlightjs/cdn-assets@10.7.1/highlight.min.js"></script>
    <script src="https://unpkg.com/highlightjs-badge@0.1.9/highlightjs-badge.min.js"></script>
  

<style>
@media print {
   .code-badge { display: none; }
}
    .code-badge-pre {
        position: relative;
    }
    .code-badge {
        display: flex;
        flex-direction: row;
        white-space: normal;
        background: transparent;
        background: #333;
        color: white;
        font-size: 0.875em;
        opacity: 0.5;
        transition: opacity linear 0.5s;
        border-radius: 0 0 0 7px;
        padding: 5px 8px 5px 8px;
        position: absolute;
        right: 0;
        top: 0;
    }
    .code-badge.active {
        opacity: 0.8;
    }

    .code-badge:hover {
        opacity: .95;
    }

    .code-badge a,
    .code-badge a:hover {
        text-decoration: none;
    }

    .code-badge-language {
        margin-right: 10px;
        font-weight: 600;
        color: goldenrod;
    }
    .code-badge-copy-icon {
        font-size: 1.2em;
        cursor: pointer;
        padding: 0 7px;
        margin-top:2;
    }
    .fa.text-success:{ color: limegreen !important }
</style><div id="CodeBadgeTemplate" style="display:none">
    <div class="code-badge">
        <div class="code-badge-language">{{language}}</div>
        <div title="Copy to clipboard">
            <i class="{{copyIconClass}} code-badge-copy-icon"></i>
        </div>
     </div>
</div><script>
		function returnCommentSymbol(language = "javascript") {
			const languageObject = {
				bat: "@REM",
				c: "//",
				csharp: "//",
				cpp: "//",
				closure: ";;",
				coffeescript: "#",
				dockercompose: "#",
				css: "/*DELIMITER*/",
				"cuda-cpp": "//",
				dart: "//",
				diff: "#",
				dockerfile: "#",
				fsharp: "//",
				"git-commit": "//",
				"git-rebase": "#",
				go: "//",
				groovy: "//",
				handlebars: "{{!--DELIMITER--}}",
				hlsl: "//",
				html: "<!--DELIMITER-->",
				ignore: "#",
				ini: ";",
				java: "//",
				javascript: "//",
				javascriptreact: "//",
				json: "//",
				jsonc: "//",
				julia: "#",
				latex: "%",
				less: "//",
				lua: "--",
				makefile: "#",
				markdown: "<!--DELIMITER-->",
				"objective-c": "//",
				"objective-cpp": "//",
				perl: "#",
				perl6: "#",
				php: "<!--DELIMITER-->",
				powershell: "#",
				properties: ";",
				jade: "//-",
				python: "#",
				r: "#",
				razor: "<!--DELIMITER-->",
				restructuredtext: "..",
				ruby: "#",
				rust: "//",
				scss: "//",
				shaderlab: "//",
				shellscript: "#",
				sql: "--",
				svg: "<!--DELIMITER-->",
				swift: "//",
				tex: "%",
				typescript: "//",
				typescriptreact: "//",
				vb: "'",
				xml: "<!--DELIMITER-->",
				xsl: "<!--DELIMITER-->",
				yaml: "#"
			}
			return languageObject[language].split("DELIMITER")
		}
		var savedChPos = 0
		var returnedSuggestion = ''
		let editor, doc, cursor, line, pos
		pos = {line: 0, ch: 0}
		var suggestionsStatus = false
		var docLang = "python"
		var suggestionDisplayed = false
		var isReturningSuggestion = false
		document.addEventListener("keydown", (event) => {
		setTimeout(()=>{
			editor = event.target.closest('.CodeMirror');
			if (editor){
				const codeEditor = editor.CodeMirror
				if(!editor.classList.contains("added-tab-function")){
					editor.classList.add("added-tab-function")
					codeEditor.removeKeyMap("Tab")
					codeEditor.setOption("extraKeys", {Tab: (cm)=>{

						if(returnedSuggestion){
							acceptTab(returnedSuggestion)
						}
						else{
							cm.execCommand("defaultTab")
						}
					}})
				}
				doc = editor.CodeMirror.getDoc()
				cursor = doc.getCursor()
				line = doc.getLine(cursor.line)
				pos = {line: cursor.line, ch: line.length}

				if(cursor.ch > 0){
					savedChPos = cursor.ch
				}

				const fileLang = doc.getMode().name
				docLang = fileLang
				const commentSymbol = returnCommentSymbol(fileLang)
				if (event.key == "?"){
					var lastLine = line
					lastLine = lastLine.slice(0, savedChPos - 1)

					if(lastLine.trim().startsWith(commentSymbol[0])){
						lastLine += " "+fileLang
						lastLine = lastLine.split(commentSymbol[0])[1]
						window.postMessage({source: 'getQuery', payload: { data: lastLine } } )
						isReturningSuggestion = true
						displayGrey("\nBlackbox loading...")
					}
				}else if(event.key === "Enter" && suggestionsStatus && !isReturningSuggestion){
					var query = doc.getRange({ line: Math.max(0,cursor.line-10), ch: 0 }, { line: cursor.line, ch: line.length })
					window.postMessage({source: 'getSuggestion', payload: { data: query, language: docLang } } )
					displayGrey("Blackbox loading...")
				}else if(event.key === "ArrowRight" && returnedSuggestion){
					acceptTab(returnedSuggestion)
				}else if(event.key === "Enter" && isReturningSuggestion){
					displayGrey("\nBlackbox loading...")
				}else if(event.key === "Escape"){
					displayGrey("")
				}
			}
		}, 0)
		})

		function acceptTab(text){
		if (suggestionDisplayed){
			displayGrey("")
			doc.replaceRange(text, pos)
			returnedSuggestion = ""
			updateSuggestionStatus(false)
		}
		}
		function acceptSuggestion(text){
			displayGrey("")
			doc.replaceRange(text, pos)
			returnedSuggestion = ""
			updateSuggestionStatus(false)
		}
		function displayGrey(text){
			if(!text){
				document.querySelector(".blackbox-suggestion").remove()
				return
			}
			var el = document.querySelector(".blackbox-suggestion")
			if(!el){
				el = document.createElement('span')
				el.classList.add("blackbox-suggestion")
				el.style = 'color:grey'
				el.innerText = text
			}
			else{
				el.innerText = text
			}
			
			var lineIndex = pos.line;
			editor.getElementsByClassName('CodeMirror-line')[lineIndex].appendChild(el)
		}
		function updateSuggestionStatus(s){
			suggestionDisplayed = s
			window.postMessage({source: 'updateSuggestionStatus', status: suggestionDisplayed, suggestion: returnedSuggestion})
		}
		window.addEventListener('message', (event)=>{
		if (event.source !== window ) return
		if (event.data.source == 'return'){
			isReturningSuggestion = false
			const formattedCode = formatCode(event.data.payload.data)
			returnedSuggestion = formattedCode
			displayGrey(formattedCode)
			updateSuggestionStatus(true)
		}
		if(event.data.source == 'suggestReturn'){
			returnedSuggestion = event.data.payload.data
			displayGrey(event.data.payload.data)
			updateSuggestionStatus(true)
		}
		if(event.data.source == 'suggestionsStatus'){
			suggestionsStatus = event.data.payload.enabled
		}
		if(event.data.source == 'acceptSuggestion'){
			
			acceptSuggestion(event.data.suggestion)
		}
		})
		document.addEventListener("keyup", function(){
			returnedSuggestion = ""
			updateSuggestionStatus(false)
		})
		function formatCode(data) {
			if (Array.isArray(data)) {
				var finalCode = ""
				var pairs = []
		
				const commentSymbol = returnCommentSymbol(docLang)
				data.forEach((codeArr, idx) => {
					const code = codeArr[0]
					var desc = codeArr[1]
					const descArr = desc.split("\n")
					var finalDesc = ""
					descArr.forEach((descLine, idx) => {
						const whiteSpace = descLine.search(/\S/)
						if (commentSymbol.length < 2 || idx === 0) {
							finalDesc += insert(descLine, whiteSpace, commentSymbol[0])
						}
						if (commentSymbol.length > 1 && idx === descArr.length - 1) {
							finalDesc = finalDesc + commentSymbol[1] + "\n"
						}
					})
		
					finalCode += finalDesc + "\n\n" + code
					pairs.push(finalCode)
				})
				return "\n"+pairs.join("\n")
			}
		
			return "\n"+data
		}
		
		function insert(str, index, value) {
			return str.substr(0, index) + value + str.substr(index)
		}
	</script><div id="speechify-global-notifications"></div><div id="speechify-summarization-fullscreen-mode" style="position: fixed; inset: 0px; overflow: auto; background: white; z-index: 1999; display: none;"></div><div id="speechify-screenshot-mode" style="position: fixed; top: 0px; right: 0px; width: 100%; min-height: 100%; z-index: 2147483640; display: none;"></div></body><div id="vimeo-record-extension"></div><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>