const checkboxList = document.getElementById('tagsCheckboxes')

if (checkboxList) {
  const tags = document.querySelectorAll('.note-search-tags')
  tags.forEach(tag => {
    tag.addEventListener('click', event => {
      event.target.parentElement.classList.toggle('check-tag')
    })
  })
}

