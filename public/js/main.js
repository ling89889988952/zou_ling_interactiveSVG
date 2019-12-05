(() =>{
    // try to get the object and do stuff with it
    const seeMoreButtons = document.querySelectorAll('.see-more'),
        popOver = document.querySelector('.popover'),
        closeButton = document.querySelector ('.close-popover');

 
    function  buildPopover(postdata, el) {
        popOver.querySelector(".provinces").textContent = `Provices/Territories:${postdata.provinces}`;
        popOver.querySelector(".food").textContent = `Food and Drink: ${postdata.food}`;
        popOver.querySelector(".cloth").textContent = `Clothing and Footwear: ${postdata.clothing}`;
        popOver.querySelector(".house").textContent = `House: ${postdata.house}`;
        popOver.querySelector(".health").textContent = `Health: ${postdata.health}`;
        popOver.querySelector(".transport").textContent = `Transport: ${postdata.transport}`;
        popOver.querySelector(".communication").textContent = `Communication: ${postdata.communications}`;
        popOver.querySelector(".education").textContent = `Education and Culture: ${postdata.education}`;
        popOver.querySelector(".insurance").textContent = `Insurance and Financial and Services: ${postdata.insurance}`;
        // show the popover
        popOver.classList.add('show-popover');
        el.appendChild(popOver);
    }
    //   run the fetch API and get the DB data

    function fetchData() {
        let targetEl = this,
            url =  `/svgdata/${this.dataset.target}`;
            
        fetch(url)
        .then(res => res.json())
        .then(data => {
            console.log(data);

            // populate the popover
            buildPopover(data, targetEl);
        })
        .catch((err) => console.log(err));
    }

    function closeData () {
        popOver.classList.remove('show-popover');
        
    }

    // const svgGraphic = document.querySelector(".svg-wrapper");

    // svgGraphic.addEventListener("click", () => {
    //     console.log(this);
    // })


    seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));
    closeButton.addEventListener("click",closeData);


})();