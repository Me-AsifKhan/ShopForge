// Applies saved theme (default dark) before paint, exposes toggleTheme() for the UI buttons.
(function () {
  const saved = localStorage.getItem('microops_theme') || 'dark';
  document.documentElement.classList.toggle('dark', saved === 'dark');
})();

function toggleTheme() {
  const isDark = document.documentElement.classList.toggle('dark');
  localStorage.setItem('microops_theme', isDark ? 'dark' : 'light');
  document.querySelectorAll('.theme-toggle-icon').forEach((el) => {
    el.textContent = isDark ? 'dark_mode' : 'light_mode';
  });
}

document.addEventListener('DOMContentLoaded', () => {
  const isDark = document.documentElement.classList.contains('dark');
  document.querySelectorAll('.theme-toggle-icon').forEach((el) => {
    el.textContent = isDark ? 'dark_mode' : 'light_mode';
  });
});
