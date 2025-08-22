export default defineEventHandler(async (event) => {
  const config = useRuntimeConfig();

  try {
    await $fetch("http://127.0.0.1:8000/sanctum/csrf-cookie", {
      credentials: "include",
    });

    const user = await $fetch(`http://127.0.0.1:8000/api/user`, {
      credentials: "include",
    });
    return user;
  } catch (e) {
    return null;
  }
});
