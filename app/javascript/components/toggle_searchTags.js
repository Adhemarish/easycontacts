const tagsList = document.getElementById('search-tags')

if (tagsList) {
  tagsList.addEventListener('change', (event) => {
    event.target.parentNode.classList.toggle('blue-tag')
    }
  )
}
