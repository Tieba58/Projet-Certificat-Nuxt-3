export default defineEventHandler(async (event) => {
  //ici on va prendre l'id dans la paramètre
  const id = parseInt(event.context.params?.id as string);
  const body = await readBody(event);

   const response = await $fetch(`http://127.0.0.1:8000/api/categories/${id}`, {
    method: "PUT",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: body,
  });

  return response;
});
