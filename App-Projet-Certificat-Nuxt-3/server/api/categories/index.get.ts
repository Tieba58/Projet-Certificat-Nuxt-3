export default defineEventHandler(async (event) => {
    //On va récupérer les blogs c'est plus simple
    const response = await $fetch("http://127.0.0.1:8000/api/categories");

  return response;
});
