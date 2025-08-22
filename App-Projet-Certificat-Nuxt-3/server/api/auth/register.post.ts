export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  try {
    const response = await $fetch("http://127.0.0.1:8000/api/auth/register", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      body: body,
    });
    return response;
  } catch (error: any) {
    console.error("Laravel error:", await error.data);
    throw error;
  }
});
