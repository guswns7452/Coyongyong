const yongyongAnswerElement = document.getElementById("yongyong_textContent");
const inputContent = yongyongAnswerElement.innerHTML.replace(/`/g, '\`');
const languageReal = document.getElementById('languageReal').innerHTML.trim();

    console.log(inputContent);

    const regex =/```(\w+)\n([\s\S]+?)```/g;
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

    const codeBlocksStartIndex = inputContent.indexOf('```');
    const codeBlocksEndIndex = inputContent.lastIndexOf('```');
    const aboveContentBlocks = inputContent.slice(0, codeBlocksStartIndex);
    const belowContentBlocks = inputContent.slice(codeBlocksEndIndex + 3);

    console.log("Above the content:");
    console.log(aboveContentBlocks);

    console.log("Below the content:");
    console.log(belowContentBlocks);

    const aboveContentDiv = document.getElementById('yongyong_answer_aboveContent');
    const belowContentDiv = document.getElementById('yongyong_answer_belowContent');

    // Check if the above and below content blocks are equal
    if (aboveContentBlocks.innerTEXT === belowContentBlocks.innerTEXT) {
        // Display only one of them (you can choose to display above or below)
        aboveContentDiv.innerHTML = handleLineBreaks(aboveContentBlocks) ;
        belowContentDiv.style.display = "none";
    } else {
        aboveContentDiv.innerHTML = handleLineBreaks(aboveContentBlocks);
        belowContentBlocks.replace('\n','<br>');
        belowContentDiv.innerHTML = handleLineBreaks(belowContentBlocks);
    }

    console.log(codeBlocks);
    console.log(codeContents);
    console.log(codeLanguages);


// 여기까지

if (!codeBlocks) {
    document.getElementById('yongyongcodeContainer').style.display = 'none';
}

// 줄 바꿈 처리 함수
function handleLineBreaks(text) {
    const lines = text.split(/\n/);
    return lines.join('<br>');
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

const innerCode = document.getElementById("innerCode").innerHTML;

// 첫 번째 코드 블록 생성 및 하이라이팅 적용
createCodeBlock('codeContainer', innerCode, languageReal);

// // codeBlocks 배열에 저장된 모든 language 값을 가져옴
// const languages = codeBlocks.map((codeBlock) => codeBlock.language);

// // languages 배열에는 codeBlocks 배열의 모든 language 값들이 들어있음
// console.log(languages);

// 두 번째 코드 블록 생성 및 하이라이팅 적용
for (let i = 0; i < codeBlocks.length; i++) {
    createCodeBlock('yongyongcodeContainer', codeContents[i], codeLanguages[i]);
    // codeBlocks[i].classList.add('li');
}

for(let i=0;i< document.querySelectorAll('.answer_space').length;i++){
	// 여기까지
	const customerAnswerElement = document.getElementById("answerCusCode"+i);
	
	const inputCustomerContent = customerAnswerElement.innerHTML;
	
	if (!inputCustomerContent) {
	    document.getElementById('customercodeContainer'+i).style.display = 'none';
	}
	
	// 세 번째 코드 블록 생성 및 하이라이팅 적용
	createCodeBlock('customercodeContainer'+i, inputCustomerContent, languageReal);
}

const textContentElement = document.getElementById("yongyong_textContent");
textContentElement.style.display = "none";