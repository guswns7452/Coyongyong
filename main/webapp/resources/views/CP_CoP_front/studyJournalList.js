const hrefList = ['https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/'];

const humanList = ["user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3"];

const titleList = ["title1", "title2", "title3", "title1", "title2", "title3", "title1", "title2", "title3", "title1", "title2", "title3"];

const contentList = [
    "Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1",
    "Content of post 2",
    "Content of post 3", "Content of post 1",
    "Content of post 2",
    "Content of post 3", "Content of post 1",
    "Content of post 2",
    "Content of post 3", "Content of post 1",
    "Content of post 2",
    "Content of post 3"
];

const imgList = ['help.png', 'medal_first.png', 'medal_second.png', 'medal_third.png', 'yongyong.png', 'plus.png', 'siren.png', 'x.png', 'right-arrow.png', 'full_heart_black.png', 'banner.png', 'appliance-repair.png']

const nameList = ['이다닷', '이다도리', '전현준', '김민지', '밍디', '이다현', '우지', '이지훈', '호시', '권순영', '에스쿱스', '최승철']

const likeCountList = [3, 5, 1, 4, 5, 6, 3, 2, 6, 3, 8, 9]

const nowTimeList = ['2023.07.31', '2023.07.11', '2023.07.11', '2023.07.11', '2023.07.11', '2023.07.11', '2023.07.11', '2023.07.11', '2023.07.11', '2023.07.11', '2023.06.27', '2023.06.26']

const itemsPerPage = 10;
let currentPage = 1;

function displayList() {
    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    const paginatedList = titleList.slice(startIndex, endIndex);
    const listContainer = document.getElementById('listContainer');
    listContainer.innerHTML = '';

    paginatedList.forEach((item, index) => {
        const listItem = document.createElement('a');
        const listContent = contentList[startIndex + index] || ''; // 작성글 내용
        const imgSrc = imgList[startIndex + index] || 'appliance-repair.png'; // 이미지 소스
        const authorName = nameList[startIndex + index] || ''; // 작성자 이름
        const likeCount = likeCountList[startIndex + index] || 0;
        const nowTime = nowTimeList[startIndex + index] || '';

        listItem.innerHTML = `
      <div class="w-full word-space grid">
        <font size=5>${item}</font>
        <div class="studyJournal_content">${listContent}</div>
        <div class="flex justify-between column-center">
        <div class="flex items-center space-x-4 bg-black">
          <img class="w-7 h-7 rounded-full" src="${imgSrc}" alt=""/>
            <span class="font-medium dark:text-white">
              ${authorName}
            </span>
          </div>
          <div>
            <font size=2>날짜 ${nowTime}</font>
            <font size=2>좋아요 ${likeCount}</font>
          </div>
        </div>
      </div>`;

        listItem.href = hrefList[startIndex + index] || '#'; // 링크
        listContainer.appendChild(listItem);
        listItem.classList.add('li');
    });

    displayPagination();
}



function displayPagination() {
    const paginationContainer = document.getElementById('pagination');
    paginationContainer.innerHTML = '';

    const totalPages = Math.ceil(humanList.length / itemsPerPage);

    if (currentPage > 1) {
        const previousButton = createPaginationButton('Previous', currentPage - 1);
        paginationContainer.appendChild(previousButton);
    }

    const visiblePages = getVisiblePages();
    visiblePages.forEach(page => {
        const pageButton = createPaginationButton(page, page);
        paginationContainer.appendChild(pageButton);
    });

    if (currentPage < totalPages) {
        const nextButton = createPaginationButton('Next', currentPage + 1);
        paginationContainer.appendChild(nextButton);
    }
}

function createPaginationButton(text, page) {
    const button = document.createElement('li');
    const link = document.createElement('a');
    link.textContent = text;
    link.href = '#';
    link.addEventListener('click', (event) => {
        event.preventDefault(); // 기본 동작 방지
        currentPage = page; // currentPage 업데이트
        displayList(); // 목록 업데이트
        displayPagination(); // 페이지 버튼 업데이트
    });
    button.appendChild(link);
    button.classList.add('pagination-button'); // 페이지 버튼에 클래스 추가
    return button;
}




function getVisiblePages() {
    const totalPages = Math.ceil(humanList.length / itemsPerPage);
    let startPage = Math.max(currentPage - 2, 1);
    let endPage = Math.min(currentPage + 2, totalPages);

    if (endPage - startPage < 4) {
        if (startPage === 1) {
            endPage = Math.min(startPage + 4, totalPages);
        } else {
            startPage = Math.max(endPage - 4, 1);
        }
    }

    return Array.from({ length: endPage - startPage + 1 }, (_, i) => startPage + i);
}

window.addEventListener('DOMContentLoaded', () => {
    displayList();
    displayPagination();
});