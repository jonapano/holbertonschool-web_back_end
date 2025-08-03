import signUpUser from "./4-user-promise";
import uploadPhoto from "./5-photo-reject";

export default function handleProfileSignup(firstName, lastName, filename) {
  return Promise.all([uploadPhoto(filename), signUpUser(firstName, lastName)])
    .then((response) => {
      console.log(
        `${response[0].body} ${response[1].firstName} ${response[1].lastName}`,
      );
    })
    .catch(() => console.log('Signup system offline'));
}
