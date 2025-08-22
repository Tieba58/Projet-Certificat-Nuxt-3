import { defineStore } from "pinia";

export const useTheme = defineStore("theme", {
  state: () => ({
    theme: "light" as "light" | "dark",
  }),
  actions: {
    setTheme(newTheme: "light" | "dark") {
      this.theme = newTheme;

      document.body.classList.remove(
        "bg-light",
        "bg-dark",
        "text-danger",
        "text-dark"
      );
      if (newTheme === "dark") {
        document.body.classList.add("bg-dark", "text-danger");
      } else {
        document.body.classList.add("bg-light", "text-dark");
      }
    },
    toggleTheme() {
      this.setTheme(this.theme === "dark" ? "light" : "dark");
    },
    loadTheme() {
      if (!this.theme) {
        const prefersDark = window.matchMedia(
          "(prefers-color-scheme: dark)"
        ).matches;
        this.setTheme(prefersDark ? "dark" : "light");
      } else {
        this.setTheme(this.theme);
      }
    },
  },
  persist: {
    storage: piniaPluginPersistedstate.localStorage(),
  },
});
