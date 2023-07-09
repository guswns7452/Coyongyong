function handleModalCloseButtonClick() {
    // toast-success ID를 가진 div 요소 가져오기
    var toastDiv = document.getElementById('toast-interactive');

    // 클래스명 변경
    toastDiv.classList.remove('transition-opacity', 'duration-300', 'ease-out', 'opacity-0', 'hidden'); // 새로운 클래스 추가
    toastDiv.setAttribute('role', 'alert');

    const $targetEl = document.getElementById('modalEl');
}