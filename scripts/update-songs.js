const fs = require('fs');
const os = require('os');
const path = require('path');
const execSync = require('child_process').execSync;

const home_dir = os.homedir();
const music_dir = home_dir + "/Music/qwdsx3";
let array_folder = [];
let array_exec = [];

fs.readdirSync(music_dir).forEach(file => {
    let file_no_ext = file.replace(/\.[^/.]+$/, "");
    array_folder.push(file_no_ext);
});

execSync("scripts/test.sh");

try {
    array_exec = fs.readFileSync("scripts/test.txt", "utf-8");
    array_exec = array_exec.toString().split("\n");
    array_exec = array_exec.filter((item, pos) => array_exec.indexOf(item) === pos);
    console.log(array_exec);
    console.log(array_folder);

    array_folder.forEach((item, index) => {
        if (!array_exec.includes(item)) {
            console.log(item, index);
        }
    });

    console.log(array_exec.includes("k？d - YOU AND ME"));
} catch (e) {
    console.log(e.stack);
}