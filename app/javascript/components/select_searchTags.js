const tagsList = document.getElementById('tag-search')
if (tagsList)
  {  const tags = document.querySelectorAll('.tag-search-id')

    tags.forEach(tag => {
      tag.addEventListener('click', event => {
        const searchBox = document.getElementById('target')
        const cloneTag  = event.target.cloneNode(true)
        searchBox.appendChild(cloneTag)
        tag.style.display = 'none'
         })
      })
  }
