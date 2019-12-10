

const tagReset = document.getElementById('tagResetDiv')

if (tagReset) {
  tagReset.addEventListener('click', (event) => {
    event.preventDefault()
    console.log('refreshTags')

    // supprimer la liste des notes trouvées
    // const notesList = document.getElementById('tag-notes-results')
    // notesList.innerHTML = ""

    // remettre en visuel les tags
    // const tagsZone = document.getElementById('tag-search')
    // tagsZone.style.display = ''


    // // vidange du query de sélection
    // const inputTag = document.getElementById('query_label')
    // inputTag.value = ""
    // console.log(inputTag)


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
