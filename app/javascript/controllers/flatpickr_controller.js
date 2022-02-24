import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


export default class extends Controller {
  connect() {
    flatpickr(".datepicker", { inline: true, mode: "range" });
  }
};
