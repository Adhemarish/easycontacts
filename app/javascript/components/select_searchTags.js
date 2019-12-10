const tagsList = document.getElementById('tag-search')


if (tagsList) {
  const tags = document.querySelectorAll('.tag-search-id')

  tags.forEach(tag => {
    tag.addEventListener('click', event => {
      // event.stopPropagation()
      const searchBox = document.getElementById('target')
      const cloneTag  = event.target.cloneNode(true)
      searchBox.appendChild(cloneTag)
      // console.log(tag)
      tag.style.display = 'none'
    })
  })
  // tagsList.addEventListener('click', (event) => {
  //   event.preventDefault()
  //   console.log('selectSearchtags')

  //   const aTag = event.target.parentNode.querySelector('.tag-text').innerHTML
  //   console.log(event.target)
  //   // verif du tag
  //   const tagNumber = parseInt(event.target.id.match(/\d+/))
  //   console.log(tagNumber)
  //   console.log(aTag)

  //   // // peupler la query string
  //   // const inputTag = document.getElementById('query_label')
  //   // //console.log(inputTag)
  //   // inputTag.value += aTag + " "
  //   // console.log(inputTag)

  //   // cacher les tags
  //   // const tagsZone = document.getElementById('tag-search')
  //   // tagsZone.style.display = 'none'

  //   //inputTag.appendChild(event.target.parentNode)

  //   // affichage du tag dans la div de sélection
  //   const searchBox = document.getElementById('target')
  //   console.log(searchBox)
  //   searchBox.appendChild(event.target.parentNode)
  // })
}

