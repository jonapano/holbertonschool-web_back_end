export default function getResponseFromAPI() {
  return new Promise((resolve, reject) => {
    resolve("");
    reject(new Error("Something bad happened"));
  });
}