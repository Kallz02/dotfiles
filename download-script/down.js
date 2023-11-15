import { readFileSync } from "fs";
import { spawn } from "child_process";
const data = readFileSync("out.txt", { encoding: "utf-8" });
const lines = data.split("\n");
lines.pop(-1);
console.log(lines);

let urls = [];
for (let i = 0; i < lines.length; i++) {
  urls[i] = "https://audio.iskcondesiretree.com/" + lines[i];
}

Promise.all(
  urls.map((url) => {
    // Spawn a child process that runs the wget command
    return new Promise((resolve, reject) => {
      const child = spawn("wget", [url]);

      child.on("exit", (code) => {
        if (code === 0) {
          resolve();
        } else {
          reject(new Error(`Error downloading ${url}`));
        }
      });

      child.stdin.end();
    });
  }),
)
  .then(() => {
    console.log("All files downloaded");
  })
  .catch((error) => {
    console.error(error);
  });
