import flatpickr from "flatpickr"
import { French } from "flatpickr/dist/l10n/fr.js"
import "flatpickr/dist/themes/material_blue.css" // Note this is important!

flatpickr(".datepicker", {
  altInput: true,
  altFormat: "l j F Y",
  position: 'below',
  locale: French,
  inline: true,
})
