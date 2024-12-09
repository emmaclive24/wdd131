// Display the current date and time
function updateDateTime() {
  const now = new Date();
  const dateTimeString = now.toLocaleString("en-US", {
    dateStyle: "full",
    timeStyle: "short",
  });
  document.getElementById(
    "current-date-time"
  ).innerText = `Current Date and Time: ${dateTimeString}`;
}

// Call the function on page load and refresh every second
setInterval(updateDateTime, 1000);
updateDateTime();
