export default defineEventHandler(async (event) => {
  try {
    const body = await readBody(event);

    // 1. Obtenir le cookie CSRF si tu utilises Sanctum avec "credentials: include"
    await $fetch("http://127.0.0.1:8000/sanctum/csrf-cookie", {
      credentials: "include",
    });

    // 2. Requête vers Laravel pour le login
    const response = await $fetch("http://127.0.0.1:8000/api/auth/login", {
      method: "POST",
      body,
      credentials: "include", // utile si tu utilises cookies avec Sanctum
    });

    // 3. Retourne uniquement les infos utiles au frontend
    return response;
  } catch (error: any) {
    console.error("Erreur de connexion Laravel:", error.data || error.message);

    throw createError({
      statusCode: error?.statusCode || 500,
      statusMessage: error?.statusMessage || "Erreur serveur",
      data: error?.data || null,
    });
  }
});
