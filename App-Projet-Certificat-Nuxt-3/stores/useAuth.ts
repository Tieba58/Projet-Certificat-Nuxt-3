import { defineStore } from "pinia";

export const useAuth = defineStore("auth", {
  state: () => ({
    user: null as null | { id: number; name: string; email: string },
    token: null as string | null,
  }),
  actions: {
    setUser(user: any) {
      this.user = user;
    },
    setToken(token: string) {
      this.token = token;
    },
    clearUser() {
      this.user = null;
      this.token = null;
    },
  },
  persist: {
    storage: piniaPluginPersistedstate.sessionStorage(),
  },
});
