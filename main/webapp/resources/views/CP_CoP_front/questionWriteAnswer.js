const customerAnswerElement = document.getElementById("answerCusCode");

const inputCustomerContent = customerAnswerElement.innerHTML;

if (!inputCustomerContent) {
  document.getElementById('customercodeContainer').style.display = 'none';
}

// 코드 블록을 생성하고 highlight.js 적용하는 함수
function createCodeBlock(containerId, code, language) {

  if (code) {
      const codeContainer = document.getElementById(containerId);
      const codeBlock = document.createElement('pre');
      codeBlock.classList.add('code');
      const codeElement = document.createElement('code');
      codeElement.classList.add(language);
      codeElement.textContent = code;
      codeBlock.appendChild(codeElement);
      codeContainer.appendChild(codeBlock);
      hljs.highlightBlock(codeBlock);
  }
}

console.log(inputCustomerContent);
createCodeBlock('customercodeContainer', inputCustomerContent, 'java');