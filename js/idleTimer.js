let idleTimeout;
const idleDuration = 1000 * 60 * 5; // 5 minutes

// Reset the idle timeout whenever there's user activity
function resetIdleTimeout() {
  clearTimeout(idleTimeout);
  idleTimeout = setTimeout(onIdleTimeout, idleDuration);
}

// Perform the action when the user has been idle for too long
function onIdleTimeout() {
  alert('You have been idle for 5 minutes. You will be redirected to the home page.');
  window.location.href = 'logout.php'; // Redirect to the home page, modify this according to your app
}

// Attach event listeners to detect user activity
window.addEventListener('mousemove', resetIdleTimeout);
window.addEventListener('mousedown', resetIdleTimeout);
window.addEventListener('keypress', resetIdleTimeout);
window.addEventListener('scroll', resetIdleTimeout);
window.addEventListener('touchstart', resetIdleTimeout);

// Start the idle timeout
resetIdleTimeout();
