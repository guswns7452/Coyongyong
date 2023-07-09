// 여기에 질문으로 연결되는걸 넣어줘야하네 생각해보니까... list로 넣으면 댐.
// chatGPT 만만세...하..

// const list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150];
// const titleList = ["1. 제목 : 니ㅏㄹ닝러ㅣ너", "우엥                                                            ", 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150]

const hrefList = ['https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/', 'https://flowbite.com/docs/customize/colors/', 'https://flowbite.com/blocks/', 'https://www.todomate.net/#/', 'https://www.google.co.kr/', 'https://www.naver.com/'];

const humanList = ["user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3"];

const titleList = ["title1", "title2", "title3", "title1", "title2", "title3", "title1", "title2", "title3", "title1", "title2", "title3"];

const contentList = [
    "Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1Content of post 1",
    "Content of post 2",
    "Content of post 3", "Content of post 1",
    "Content of post 2",
    "Content of post 3", "Content of post 1",
    "Content of post 2",
    "Content of post 3", "Content of post 1",
    "Content of post 2",
    "Content of post 3"
];

const imgList = ['appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png', 'appliance-repair.png']

const nameList = ['이다닷', '이다도리', '전현준', '김민지', '밍디', '이다현', '우지', '이지훈', '호시', '권순영', '에스쿱스', '최승철']

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

        listItem.innerHTML = `
      ${item} <br> ${listContent} <br> ${authorName}`;

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
    const button = document.createElement('button');
    button.textContent = text;
    if (page === currentPage) {
        button.classList.add('active');
    }
    button.addEventListener('click', () => {
        currentPage = page;
        displayList(); // 페이지 변경 시 리스트를 업데이트하는 displayList() 함수 호출
    });
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