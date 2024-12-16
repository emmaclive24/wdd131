document.addEventListener("DOMContentLoaded", function () {
  function updateTime() {
    const now = new Date();
    const hours = now.getHours().toString().padStart(2, "0");
    const minutes = now.getMinutes().toString().padStart(2, "0");
    const seconds = now.getSeconds().toString().padStart(2, "0");
    const timeString = `${hours}:${minutes}:${seconds}`;
    document.getElementById(
      "current-time"
    ).textContent = `Current Time: ${timeString}`;
  }
  setInterval(updateTime, 1000);
  updateTime();
});
