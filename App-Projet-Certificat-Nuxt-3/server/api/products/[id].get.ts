export default defineEventHandler(async (event) => {
  //ici on va prendre l'id dans la paramètre
  const id = parseInt(event.context.params?.id as string);

  //On va récupérer les blogs c'est plus simple
    const response = await $fetch(`http://127.0.0.1:8000/api/products/${id}`);

  return response;
});
