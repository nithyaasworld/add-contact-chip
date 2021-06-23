const addBtn = document.querySelector('.add-btn');
const inputBox = document.querySelector('.contact-input');
const allContactsContainer = document.querySelector('.all-contacts-container');
const addContact = (e) => {
    const chipContainer = document.createElement('div');
    chipContainer.classList.add('chip-container');
    const imgEl = document.createElement('img');
    imgEl.classList.add('default-avatar');
    imgEl.setAttribute('src', './images/bBHe98c.png');
    const chipNameEl = document.createElement('p');
    chipNameEl.innerHTML = `${inputBox.value} <span onclick="removeContact(event)" class="close-btn">x</span>`;
    chipContainer.appendChild(imgEl);
    chipContainer.appendChild(chipNameEl);
    allContactsContainer.appendChild(chipContainer);
    inputBox.value = "";
}
const removeContact = (e) => {
    e.target.parentNode.parentNode.remove();
}

addBtn.addEventListener('click',(e) => addContact(e));
