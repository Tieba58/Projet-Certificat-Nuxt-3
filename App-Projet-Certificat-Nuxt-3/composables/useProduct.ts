export const useProduct = () => {
  const product = ref({
    title: "",
    price: "",
    description: "",
    category_id: "",
    image: "",
  });

  const resetProduct = () => {
    product.value = {
      title: "",
      price: "",
      description: "",
      category_id: "",
      image: "",
    };
  };

  return { product, resetProduct };
};
