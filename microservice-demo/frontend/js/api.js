// Thin fetch wrapper for the /v1 gateway API + localStorage-backed session/cache.
// ponytail: backend has no ListProjects / CreateTag REST endpoints yet, so project
// listing and tags are cached client-side until those endpoints exist.

const API_BASE = '/v1';

const Session = {
  get token() { return localStorage.getItem('microops_token'); },
  get user() {
    const raw = localStorage.getItem('microops_user');
    return raw ? JSON.parse(raw) : null;
  },
  set(user) {
    localStorage.setItem('microops_token', user.token);
    localStorage.setItem('microops_user', JSON.stringify(user));
  },
  clear() {
    localStorage.removeItem('microops_token');
    localStorage.removeItem('microops_user');
  },
  requireAuth() {
    if (!this.token) window.location.href = 'index.html';
  },
};

const ProjectCache = {
  key: 'microops_projects',
  all() {
    const raw = localStorage.getItem(this.key);
    return raw ? JSON.parse(raw) : {};
  },
  list() { return Object.values(this.all()); },
  get(id) { return this.all()[id] || null; },
  upsert(project) {
    const all = this.all();
    all[project.id] = { ...all[project.id], ...project };
    localStorage.setItem(this.key, JSON.stringify(all));
    return all[project.id];
  },
  addTag(projectId, tag) {
    const all = this.all();
    const p = all[projectId];
    if (!p) return;
    p.tags = p.tags || [];
    p.tags.push(tag);
    localStorage.setItem(this.key, JSON.stringify(all));
  },
};

async function apiFetch(path, options = {}) {
  const res = await fetch(API_BASE + path, {
    ...options,
    headers: {
      'Content-Type': 'application/json',
      ...(Session.token ? { Authorization: `Bearer ${Session.token}` } : {}),
      ...(options.headers || {}),
    },
  });
  const data = await res.json().catch(() => ({}));
  if (!res.ok) throw new Error(data.message || `Request failed (${res.status})`);
  return data;
}

const Api = {
  login: (email, password) => apiFetch('/user/login', { method: 'POST', body: JSON.stringify({ email, password }) }),
  register: (name, email, password) => apiFetch('/user/register', { method: 'POST', body: JSON.stringify({ name, email, password }) }),
  createProject: (user_id, name) => apiFetch('/project/create', { method: 'POST', body: JSON.stringify({ user_id, name }) }),
  getProject: (project_id) => apiFetch(`/project/get/${project_id}`),
  createTask: (task) => apiFetch('/task/create', { method: 'POST', body: JSON.stringify(task) }),
  updateTask: (task) => apiFetch('/task/update', { method: 'POST', body: JSON.stringify(task) }),
  listTasks: (project_id, assigned_user_id, tag_id) => {
    let path = `/project/${project_id}/task/list`;
    if (assigned_user_id) path += `/${assigned_user_id}`;
    if (assigned_user_id && tag_id) path += `/${tag_id}`;
    return apiFetch(path);
  },
};
