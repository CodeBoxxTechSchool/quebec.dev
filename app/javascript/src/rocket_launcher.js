var isInViewport = function(elem) {
    var distance = elem.getBoundingClientRect();
    return (
        distance.top >= 0 &&
        distance.left >= 0 &&
        distance.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
        distance.right <= (window.innerWidth || document.documentElement.clientWidth)
    );
};
// read the link on how above code works

var findMe = document.querySelectorAll('.rocket');

window.addEventListener('scroll', function(event) {
// add event on scroll
    findMe.forEach(element => {
        //for each .rocket
        if (isInViewport(element)) {
            //if in Viewport
            element.classList.add("launch");
        }
    });
}, false);