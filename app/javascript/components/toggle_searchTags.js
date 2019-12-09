const tagsList = document.getElementById('tag-search')


if (tagsList) {
  tagsList.addEventListener('change', (event) => {
    event.preventDefault()
    event.target.parentNode.classList.toggle('blue-tag')
    const aTag = event.target.parentNode.querySelector('.tag-text').innerHTML
    console.log(event.target.id)
    const tagNumber = parseInt(event.target.id.match(/\d+/))
    const tagOuterHTML = event.target.parentNode.outerHTML
    const t = document.getElementById('target')
    const searchBox = document.getElementById('query_label')
    searchBox.value += aTag +" "
    searchBox.appendChild(event.target.parentNode)
    }
  )
}

