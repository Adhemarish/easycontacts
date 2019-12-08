const checkboxList = document.getElementById('tagsCheckboxes')

if (checkboxList) {
  checkboxList.addEventListener('change', (event) => {
    event.preventDefault()
    event.target.parentNode.classList.toggle('blue-tag')
    }
  )
}
