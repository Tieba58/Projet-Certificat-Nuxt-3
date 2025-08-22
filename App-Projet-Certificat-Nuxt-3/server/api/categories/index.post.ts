export default defineEventHandler(async (event) => {
  const body = await readBody(event);

  const response = await $fetch("http://127.0.0.1:8000/api/categories", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: body,
  });

  return {
    message: "Catégorie ajoutée avec succès !",
    data: response,
  };
});
