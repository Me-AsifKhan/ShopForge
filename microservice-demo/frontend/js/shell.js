// Renders the shared sidebar + top bar shell into #shell, given the active nav key.
// Kept as one small function instead of a component framework — no build step needed.

function renderShell(active) {
  const user = Session.user;
  const items = [
    { key: 'dashboard', href: 'dashboard.html', icon: 'dashboard', label: 'Dashboard', group: 'workspace' },
  ];

  const navLink = (i) => `
    <a href="${i.href}" class="flex items-center gap-sm px-md py-sm rounded-lg font-label uppercase text-xs transition-colors
      ${i.key === active ? 'bg-primary-container text-on-primary-container' : 'text-on-surface-variant hover:text-on-surface hover:bg-surface-container-high'}">
      <span class="material-symbols-outlined text-lg">${i.icon}</span>${i.label}
    </a>`;

  document.getElementById('shell').innerHTML = `
    <nav class="hidden md:flex h-screen w-64 flex-col border-r border-outline-variant bg-surface-container-low p-md gap-sm shrink-0">
      <div class="flex items-center gap-sm mb-lg px-sm">
        <span class="material-symbols-outlined text-primary text-2xl">terminal</span>
        <div><h1 class="font-bold text-primary">MicroOps</h1><p class="text-xs text-on-surface-variant">Platform Portal</p></div>
      </div>
      <div class="flex flex-col gap-xs">
        <p class="text-[10px] uppercase text-on-surface-variant/70 px-md mt-sm mb-xs">Workspace</p>
        ${items.filter(i => i.group === 'workspace').map(navLink).join('')}
      </div>
      <div class="mt-auto border-t border-outline-variant pt-md flex flex-col gap-xs">
        <button onclick="toggleTheme()" class="w-full flex items-center gap-sm px-md py-sm rounded-lg text-on-surface-variant hover:text-on-surface hover:bg-surface-container-high text-xs uppercase">
          <span class="material-symbols-outlined theme-toggle-icon text-lg">dark_mode</span> Toggle theme
        </button>
        <button onclick="Session.clear(); location.href='index.html'" class="w-full flex items-center gap-sm px-md py-sm rounded-lg text-on-surface-variant hover:text-on-surface hover:bg-surface-container-high text-xs uppercase">
          <span class="material-symbols-outlined text-lg">logout</span> Logout
        </button>
      </div>
    </nav>
    <header class="md:hidden w-full h-16 flex items-center justify-between bg-surface border-b border-outline-variant px-lg">
      <span class="font-bold text-primary flex items-center gap-xs"><span class="material-symbols-outlined">terminal</span>MicroOps</span>
      <div class="flex items-center gap-sm">
        <button onclick="toggleTheme()" class="text-on-surface-variant"><span class="material-symbols-outlined theme-toggle-icon">dark_mode</span></button>
        <button onclick="Session.clear(); location.href='index.html'" class="text-on-surface-variant"><span class="material-symbols-outlined">logout</span></button>
      </div>
    </header>
  `;

  const isDark = document.documentElement.classList.contains('dark');
  document.querySelectorAll('.theme-toggle-icon').forEach((el) => { el.textContent = isDark ? 'dark_mode' : 'light_mode'; });

  if (!user) Session.requireAuth();
}
