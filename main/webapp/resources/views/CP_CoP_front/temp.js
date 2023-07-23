function extractCodeAndText() {
    const spanContent = document.getElementById('yongyong_textContent').innerHTML;
    const parts = spanContent.split(/(```(\w+)[\s\S]*?```)/);

    return parts;
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

// 코드 하이라이터로 출력하는 함수
function highlightCode() {
    const parts = extractCodeAndText();
    const codeHighlighterDiv = document.getElementById('yongyongcodeContainer');
    codeHighlighterDiv.innerHTML = ''; // Clear the previous content

    parts.forEach((part) => {
        const preElement = document.createElement('pre');
        if (part.startsWith("```")) {
            const lang = part.match(/```(\w+)/)[1];
            const code = part.replace(/```(\w+)\s*([\s\S]*?)```/, '$2');

            console.log(code);
            createCodeBlock('yongyongcodeContainer', code, lang);
        } else {
            const textContent = part.trim();
            if (textContent !== '') {
                const textElement = document.createElement('div');
                textElement.innerHTML = handleLineBreaks(textContent);
                codeHighlighterDiv.appendChild(textElement);
            }
        }
    });
}

// 실행
highlightCode();