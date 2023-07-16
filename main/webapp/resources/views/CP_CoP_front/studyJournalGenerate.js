// 여기 추가

function btnBold() {
    document.execCommand('bold', false, null);
}

function btnItalic() {
    document.execCommand('italic', false, null);
}

function btnUnderline() {
    document.execCommand('underline', false, null);
}

function btnStrike() {
    document.execCommand('strikeThrough', false, null);
}

function changeTextSize(size) {
    const textarea = document.getElementById("myTextarea");
    textarea.style.fontSize = size + "px";
}

function alignLeft() {
    var selection = window.getSelection();
    var range = selection.getRangeAt(0);
    var parentElement = range.commonAncestorContainer.parentElement;
    parentElement.style.textAlign = "left";
}

function alignCenter() {
    var selection = window.getSelection();
    var range = selection.getRangeAt(0);
    var parentElement = range.commonAncestorContainer.parentElement;
    parentElement.style.textAlign = "center";
}

function alignRight() {
    var selection = window.getSelection();
    var range = selection.getRangeAt(0);
    var parentElement = range.commonAncestorContainer.parentElement;
    parentElement.style.textAlign = "right";
}

function alignStrikeThrough() {
    var selection = window.getSelection();
    var range = selection.getRangeAt(0);
    var parentElement = range.commonAncestorContainer.parentElement;
    parentElement.style.textDecoration = "line-through";
}

var textarea = document.getElementById("myTextarea");
var placeholder = document.getElementById("placeholder");

textarea.addEventListener("input", function () {
    if (textarea.textContent.trim() !== "") {
        textarea.classList.add("has-content");
    } else {
        textarea.classList.remove("has-content");
    }
});

var editor_content = document.getElementById("myTextarea")
// 버튼 클릭 시 에디터가 포커스를 잃기 때문에 다시 에디터에 포커스를 해줌
function focusEditor() {
    editor_content.focus({ preventScroll: true });
}