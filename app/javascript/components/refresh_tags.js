const tagReset = document.getElementById('tagResetDiv')

if (tagReset) {
  tagReset.addEventListener('click', (event) => {
    event.preventDefault()

    searchBox = document.getElementById('target')
    searchBox.innerHTML =''

    const tags = document.querySelectorAll('.tag-search-id')
    tags.forEach(tag => {
      tag.style.display = ''
    })

    const tagsZone = document.getElementById('tag-search')
    tagsZone.style.display = "";

     const notesList = document.getElementById('tag-notes-results')
      notesList.innerHTML = ''
  })
}
