const code = document.getElementById('innerCode').innerHTML;

if (code) {
    const codeContainer = document.getElementById('codeContainer');
    const codeBlock = document.createElement('pre');
    codeBlock.classList.add('code');
    const codeElement = document.createElement('code');
    codeElement.classList.add('javascript');
    codeElement.textContent = code;
    codeBlock.appendChild(codeElement);
    codeContainer.appendChild(codeBlock);
    hljs.highlightBlock(codeBlock);
}