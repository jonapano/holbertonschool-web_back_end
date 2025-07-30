import { uploadPhoto, createUser } from "./utils.js";

function handleProfileSignup () {
    return Promise.all([uploadPhoto(), createUser()])
    .then((Response) => {
        console.log (
            `${Response[0].body} ${Response[1].firstName} ${Response[1].lastName}`
        )
    })
    .catch(() => console.log("Signup system offline"));
}

export default handleProfileSignup;