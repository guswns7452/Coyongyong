const customerAnswerElement = document.getElementById("answerCusCode");

const inputCustomerContent = customerAnswerElement.innerHTML;

if (!inputCustomerContent) {
  document.getElementById('customercodeContainer').style.display = 'none';
}

        require
          .config({
            paths: {
              'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.16.2/min/vs'
            }
          });

        require(['vs/editor/editor.main'], function () {
          editor = monaco.editor.create(document
            .getElementById('customercodeContainer'), {
            theme: 'vs-dark',
            fontFamily: 'Consolas',
            automaticLayout: true,
            fontSize: 17,
            language: 'java',
            value: inputCustomerContent
          });
          	var lineCount = editor.getModel().getLineCount();
			// Monaco Editor의 높이를 계산하기 위한 기본 높이 값
			var lineHeight = 19; // 한 줄의 높이 (예시 값)
			// Monaco Editor 요소 선택
			var monacoContainer = document.getElementById('customercodeContainer');
			// Monaco Editor의 높이 계산
			var editorHeight = lineCount * lineHeight;
			// Monaco Editor 요소의 높이 설정
			monacoContainer.style.height = editorHeight + 'px';
        });


          
console.log(inputCustomerContent);