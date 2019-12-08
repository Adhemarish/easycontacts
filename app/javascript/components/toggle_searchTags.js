const tagsList = document.getElementById('tag-search')


if (tagsList) {
  tagsList.addEventListener('change', (event) => {
    event.preventDefault()
    event.target.parentNode.classList.toggle('blue-tag')
    const aTag = event.target.parentNode.querySelector('.tag-text').innerHTML
    //document.getElementById('target').appendChild(event.target.parentNode)
    const searchBox = document.getElementById('query_label')
    searchBox.value += aTag +" "
    searchBox.appendChild(event.target.parentNode)
    }
  )
}
