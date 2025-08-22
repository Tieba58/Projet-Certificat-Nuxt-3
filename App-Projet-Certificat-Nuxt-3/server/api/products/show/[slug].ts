export default defineEventHandler(async (event) => {
  const slug = event.context.params?.slug;

  if (!slug) {
    throw createError({
      statusCode: 400,
      statusMessage: "Slug non fourni",
    });
  }

  const name = slug.replace(/-/g, " ").replace(/_/g, "'");
  console.log(name);
  const response = await $fetch(
    `http://127.0.0.1:8000/api/products/detail/${encodeURIComponent(name)}`
  );

  return response;
});
