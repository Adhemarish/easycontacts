const tagsList = document.getElementById('tag-search')


if (tagsList) {
  tagsList.addEventListener('change', (event) => {
    event.preventDefault()
    event.target.parentNode.classList.toggle('blue-tag')
    const aTag = event.target.parentNode.querySelector('.tag-text').innerHTML
    const inputTag = document.getElementById('query_label')
    inputTag.value += aTag
    inputTag.appendChild(event.target.parentNode)
    const searchBox = document.getElementById('target')
    searchBox.value += aTag +" "
    searchBox.appendChild(event.target.parentNode)
    }
  )
}
