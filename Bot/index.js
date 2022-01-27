// Bullshit To Ignore
const http = require("http");
var express = require("express");
const app = express();
app.get("/", (request, response) => {
  console.log(Date.now() + " Ping Received");
  response.sendStatus(200);
});
app.listen(process.env.PORT);
setInterval(() => {
  http.get(`http://${process.env.PROJECT_DOMAIN}.glitch.me/`);
}, 280000);
// -----------------------------------------------------------

const tokenfile = require("./token.json");
const Discord = require("discord.js");
const fs = require("fs");
var requestify = require("requestify");
const bot = new Discord.Client({ disableEveryone: true });
const mysql = require("mysql");
bot.commands = new Discord.Collection();

fs.readdir("./commands/", (err, files) => {
  if (err) console.log(err);
  let jsfile = files.filter(f => f.split(".").pop() === "js");
  if (jsfile.length <= 0) {
    console.log("Couldn't find commands.");
    return;
  }

  jsfile.forEach((f, i) => {
    let props = require(`./commands/${f}`);
    console.log(`${f} loaded!`);
    bot.commands.set(props.help.name, props);
  });
});

bot.on("ready", async () => {
  console.log(`${bot.user.username} is online on ${bot.guilds.size} servers!`);
  bot.user.setActivity("Children Suffer...", { type: "WATCHING" });
});

bot.on("message", async message => {
  if (message.author.bot) return;

  let prefix = ">"
  let messageArray = message.content.split(" ");
  let cmd = messageArray[0];
  let args = messageArray.slice(1);

  if (message.content.startsWith(prefix)) {
    let commandfile = bot.commands.get(cmd.slice(prefix.length));
    if (commandfile) commandfile.run(bot, message, args);
  }
});

app.get("/api/check", function(req, res) {
  let returnStatus = false;
  res.send(req.query.c)
});

bot.login(tokenfile.token);
