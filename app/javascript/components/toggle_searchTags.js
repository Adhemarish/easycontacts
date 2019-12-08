const tagsList = document.getElementById('tag-search')


if (tagsList) {
  tagsList.addEventListener('change', (event) => {
    event.preventDefault()
    const searchBox = document.getElementById('query_label')
    let aTag = event.target.parentNode.querySelector('.tag-text').innerHTML
    console.log(aTag)
    event.target.parentNode.classList.toggle('blue-tag')
    document.getElementById('target').appendChild(event.target.parentNode)
    searchBox.value += aTag +" "
    searchBox.appendChild(event.target.parentNode)
    }
  )
}
