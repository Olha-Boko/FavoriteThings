// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.link'),
        lightbox = document.querySelector('.lightbox');

        function parseData(food) { //data is the database result //animation here
            let targetDiv = document.querySelector('.lb-content');
            let targetImg = lightbox.querySelector('img');

            let thingsContent = `
                <h4>Vitamins: ${food.Vitamins}</h4>
                <p>${food.Text}</p>
                <h4>Taste: ${food.Taste}</h4>
                <h4>Texture: ${food.Texture}</h4>
            `;   

            // console.log(thingsContent);

            targetDiv.innerHTML = thingsContent;
            targetImg.src = food.imgsrc;

            lightbox.classList.add('show-lb');

        }

    function getThingsData(event){
        //kill the defult a tag behavior, don't navigate anywhere)
        event.preventDefault();
        //debugger;

        //find the imgage closest to the anhor tag and get its src property
        let imgSrc = this.previousElementSibling.getAttribute('src');

        let url = `/${this.getAttribute('href')}`; // 1 or 2 or 3

        fetch(url) //go get the data
            .then(res => res.json()) //parse tne json result into a plain object
            .then(data => {
                console.log("my data result is:", data);

                data[0].imgsrc = imgSrc;

                parseData(data[0]);
            })
            .catch((err) => {
                console.log(err)
            });
        

    }  
    
    userButtons.forEach(button => button.addEventListener('click', getThingsData))

    lightbox.querySelector('.close').addEventListener('click', function() {
        lightbox.classList.remove('show-lb');
    })
})();