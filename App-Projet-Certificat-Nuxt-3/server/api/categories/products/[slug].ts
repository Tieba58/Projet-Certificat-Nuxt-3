export default defineEventHandler(async (event) => {
  const slug = event.context.params?.slug;

  if (!slug) {
    throw createError({
      statusCode: 400,
      statusMessage: "Slug non fourni",
    });
  }

  // Inverser le slug : '-' → ' ', '_' → "'"
  const name = slug.replace(/-/g, " ").replace(/_/g, "'");

  // Appeler ton backend Laravel avec le name encodé en paramètre d’URL
  const response = await $fetch(
    `http://127.0.0.1:8000/api/categories/products/${encodeURIComponent(name)}`
  );

  return response;
});
