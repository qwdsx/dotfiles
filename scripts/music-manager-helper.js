const fs = require('fs');
const os = require('os');

const home_dir = os.homedir();
const music_dir = home_dir + "/Music/qwdsx3";
let array_folder = [];
let array_exec = [];

fs.readdirSync(music_dir).forEach(file => {
    let file_no_ext = file.replace(/\.[^/.]+$/, "");
    array_folder.push(file_no_ext);
});

try {
    array_exec = fs.readFileSync(home_dir + "/scripts/playlist.txt", "utf-8");
    array_exec = array_exec.toString().split("\n");
    array_exec = array_exec.filter((item, pos) => array_exec.indexOf(item) === pos);

    array_folder.forEach((item, index) => {
        if (!array_exec.includes(item)) {
            try {
                fs.unlinkSync(music_dir + "/" + item + ".jpg");
                console.log("deleted file: " + music_dir + "/" + item + ".jpg");
            } catch (e) {
                console.log(e.stack);
            }
        }
    });
} catch (e) {
    console.log(e.stack);
}