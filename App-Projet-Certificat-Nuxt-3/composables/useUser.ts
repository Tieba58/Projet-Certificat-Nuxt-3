export const useUser = () => {
  const user = ref({
    name: "",
    email: "",
    password: "",
    role: "",
  });

  const resetUser = () => {
    user.value = {
      name: "",
      email: "",
      password: "",
      role: "",
    };
  };

  return { user, resetUser };
};
