export default defineEventHandler(async (event) => {
  const token = getHeader(event, "authorization")?.replace("Bearer ", "");

  if (!token) {
    console.error("Aucun token trouvé dans les headers !");
    throw createError({
      statusCode: 401,
      statusMessage: "Non authentifié (frontend)",
    });
  }

  try {
    const response = await $fetch("http://127.0.0.1:8000/api/logout", {
      method: "GET",
      headers: {
        Accept: "application/json",
        Authorization: `Bearer ${token}`,
      },
    });

    return response;
  } catch (error: any) {
    console.error("Erreur checkout:", error.data || error.message);
    throw createError({
      statusCode: error.statusCode || 500,
      statusMessage: error.statusMessage || "Erreur checkout Laravel",
      data: error.data || null,
    });
  }
});
