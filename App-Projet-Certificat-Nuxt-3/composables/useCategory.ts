export const useCategory = () => {
  const category = ref({
    name: "",
    description: "",
  });

  const resetCategory = () => {
    category.value = {
      name: "",
      description: "",
    };
  };

  return { category, resetCategory };
};
