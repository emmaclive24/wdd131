// Handle form submission feedback
document
  .getElementById("contact-form")
  .addEventListener("submit", function (e) {
    e.preventDefault();
    alert(
      "Thank you for reaching out to Clive College! We'll get back to you shortly."
    );
    this.reset();
  });
