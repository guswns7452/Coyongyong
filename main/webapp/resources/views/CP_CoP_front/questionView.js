const inputContent = `
\`\`\`C
이잉
\`\`\`

\`\`\`python
printf
\`\`\`

\`\`\`css
.bg-lime-700:hover {
    background-color: #057A55 !important;
}
\`\`\`
\`\`\`css
.bg-lime-700:hover {
    background-color: #057A55 !important;
}
\`\`\`
`;

const regex = /```(\S+)\n([\s\S]+?)\n```/g;
let codeBlocks = [];
let codeLanguages = [];
let codeContents = [];
let matches;

while ((matches = regex.exec(inputContent)) !== null) {
    const languageName = matches[1].trim();
    const codeContent = matches[2].trim();

    // Create the code block object and push it to the codeBlocks array
    const codeBlock = {
        language: languageName,
        code: codeContent,
    };

    codeBlocks.push(codeBlock);
    codeLanguages.push(languageName);
    codeContents.push(codeContent);
}

// Print the modified codeBlocks array, including all the extracted code blocks
console.log(codeContents);
console.log(codeLanguages);

// 여기까지

if (!codeBlocks) {
    document.getElementById('yongyongcodeContainer').style.display = 'none';
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

const innerCode = `#yongyongcodeContainer {
    margin-top: 2%;
    border: 1px solid #000000;
    border-radius: 5px;
  }`;

// 첫 번째 코드 블록 생성 및 하이라이팅 적용
createCodeBlock('codeContainer', innerCode, 'javascript');

// // codeBlocks 배열에 저장된 모든 language 값을 가져옴
// const languages = codeBlocks.map((codeBlock) => codeBlock.language);

// // languages 배열에는 codeBlocks 배열의 모든 language 값들이 들어있음
// console.log(languages);

// 두 번째 코드 블록 생성 및 하이라이팅 적용
for (let i = 0; i < codeBlocks.length; i++) {
    createCodeBlock('yongyongcodeContainer', codeContents[i], codeLanguages[i]);
    // codeBlocks[i].classList.add('li');
}
// 여기까지