const wrappers = document.querySelectorAll(".wrapper");
const arrowBtns = document.querySelectorAll(".wrapper i");

wrappers.forEach((wrapper, index) => {
    const carousel = wrapper.querySelector(".carousel");
    const firstCardWidth = carousel.querySelector(".card").offsetWidth;
    const leftBtn = wrapper.querySelector("i#left");
    const rightBtn = wrapper.querySelector("i#right");

    let isDragging = false,
        isAutoPlay = true,
        startX,
        startScrollLeft,
        timeoutId;

    // Get the number of cards that can fit in the carousel at once
    let cardPerView = Math.round(carousel.offsetWidth / firstCardWidth);

    // Insert copies of the last few cards to the beginning of the carousel for infinite scrolling
    const carouselChildrens = [...carousel.children];
    carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
        carousel.insertAdjacentHTML("afterbegin", card.outerHTML);
    });

    // Insert copies of the first few cards to the end of the carousel for infinite scrolling
    carouselChildrens.slice(0, cardPerView).forEach(card => {
        carousel.insertAdjacentHTML("beforeend", card.outerHTML);
    });

    // Scroll the carousel at the appropriate position to hide the first few duplicate cards on Firefox
    carousel.classList.add("no-transition");
    carousel.scrollLeft = carousel.offsetWidth;
    carousel.classList.remove("no-transition");

    // Add event listener for the left button to scroll the carousel left
    leftBtn.addEventListener("click", () => {
        carousel.scrollLeft -= firstCardWidth;
    });

    // Add event listener for the right button to scroll the carousel right
    rightBtn.addEventListener("click", () => {
        carousel.scrollLeft += firstCardWidth;
    });

    const dragStart = (e) => {
        isDragging = true;
        carousel.classList.add("dragging");
        // Record the initial cursor and scroll position of the carousel
        startX = e.pageX;
        startScrollLeft = carousel.scrollLeft;
    }

    const dragging = (e) => {
        if (!isDragging) return; // If isDragging is false, return
        // Update the scroll position of the carousel based on the cursor movement
        carousel.scrollLeft = startScrollLeft - (e.pageX - startX);
    }

    const dragStop = () => {
        isDragging = false;
        carousel.classList.remove("dragging");
    }

    const infiniteScroll = () => {
        // If the carousel is at the beginning, scroll to the end
        if (carousel.scrollLeft === 0) {
            carousel.classList.add("no-transition");
            carousel.scrollLeft = carousel.scrollWidth - (2 * carousel.offsetWidth);
            carousel.classList.remove("no-transition");
        }
        // If the carousel is at the end, scroll to the beginning
        else if (Math.ceil(carousel.scrollLeft) === carousel.scrollWidth - carousel.offsetWidth) {
            carousel.classList.add("no-transition");
            carousel.scrollLeft = carousel.offsetWidth;
            carousel.classList.remove("no-transition");
        }

        // Clear the existing timeout and start autoplay if the mouse is not hovering over the carousel
        clearTimeout(timeoutId);
        if (!wrapper.matches(":hover")) autoPlay();
    }

    // const autoPlay = () => {
    //     if (window.innerWidth < 800 || !isAutoPlay) return; // Return if the window is smaller than 800 or isAutoPlay is false
    //     // Autoplay the carousel after every 2500 ms
    //     timeoutId = setTimeout(() => {
    //         const newPosition = carousel.scrollLeft + firstCardWidth;
    //         carousel.scrollTo({
    //             left: newPosition,
    //             behavior: "smooth"
    //         });
    //     }, 2500);
    // }
    //  autoPlay();

    carousel.addEventListener("mousedown", dragStart);
    carousel.addEventListener("mousemove", dragging);
    document.addEventListener("mouseup", dragStop);
    carousel.addEventListener("scroll", infiniteScroll);
    wrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
    wrapper.addEventListener("mouseleave", autoPlay);
});
