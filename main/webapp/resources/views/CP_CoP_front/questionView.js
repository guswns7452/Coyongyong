const code = `<script>
var editor;

require.config({ paths: { 'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.16.2/min/vs' } });
require(['vs/editor/editor.main'], function () {
  editor = monaco.editor.create(document.getElementById('monaco'), {
    theme: 'vs-dark',
    fontFamily: 'Consolas',
    automaticLayout: true,
    fontSize: 17,
    language: 'c',
  });
});
</script>`;

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