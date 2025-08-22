export default defineEventHandler(async (event) => {
  const body = await readBody(event);

  console.log("Nouvelle Produit reçu :", body);

  const response = await $fetch("http://127.0.0.1:8000/api/products", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: body,
  });

  return {
    message: "Produit ajouté avec succès !",
    data: response,
  };
});
