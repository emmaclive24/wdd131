document.addEventListener("DOMContentLoaded", () => {
  // Lazy Load Images
  const lazyImages = document.querySelectorAll("img[loading='lazy']");
  lazyImages.forEach(img => {
    img.addEventListener("load", () => {
      img.classList.add("loaded");
    });
  });

  // Update Footer Date
  const footerDate = document.querySelector('.footer-bottom p');
  if (footerDate) {
    const now = new Date();
    footerDate.innerHTML += `<br>Current Date: ${now.toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    })}`;
  }

  // Handle Form Submission with Local Storage
  const form = document.querySelector(".registration-section form");
  if (form) {
    form.addEventListener("submit", (e) => {
      e.preventDefault();
      const formData = new FormData(form);
      const formObject = {};
      formData.forEach((value, key) => {
        if (!formObject[key]) {
          formObject[key] = value;
        } else if (Array.isArray(formObject[key])) {
          formObject[key].push(value);
        } else {
          formObject[key] = [formObject[key], value];
        }
      });
      localStorage.setItem("registrationData", JSON.stringify(formObject));
      alert("Registration Data Saved Locally!");
    });
  }

  // Sidebar Navigation
  const sidebarLinks = document.querySelectorAll(".sidebar a");
  sidebarLinks.forEach(link => {
    link.addEventListener("click", (e) => {
      e.preventDefault();
      const targetId = link.getAttribute("href").replace("#", "");
      const targetElement = document.getElementById(targetId);
      if (targetElement) {
        targetElement.scrollIntoView({ behavior: "smooth" });
      }
    });
  });
});
