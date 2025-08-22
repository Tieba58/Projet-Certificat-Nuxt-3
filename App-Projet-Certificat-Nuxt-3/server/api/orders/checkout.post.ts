export default defineEventHandler(async (event) => {
  try {
    const body = await readBody(event);

    await $fetch("http://127.0.0.1:8000/sanctum/csrf-cookie", {
      credentials: "include",
    });

    const token = getHeader(event, "authorization")?.replace("Bearer ", "");

    const response = await $fetch("http://127.0.0.1:8000/api/orders", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body,
      credentials: "include",
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
