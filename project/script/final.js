// Dynamically Update the Current Time and Date in the Footer
document.addEventListener("DOMContentLoaded", () => {
    const footerTimeElement = document.querySelector('.footer-bottom p');
    if (footerTimeElement) {
        const now = new Date();

        // Format the date and time
        const options = {
            weekday: 'long',
            year: 'numeric',
            month: 'long',
            day: 'numeric',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
        };
        const formattedDateTime = now.toLocaleDateString('en-US', options);

        // Set the formatted date and time in the footer
        footerTimeElement.innerHTML = `&copy; 2024 Clive College. All Rights Reserved. <br> Current Date and Time: ${formattedDateTime}`;
    }
});
