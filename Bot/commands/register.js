const Discord = require("discord.js");
const fs = require("fs")
let ms = require("ms")
const errors = require("../utils/errors.js");
var requestify = require('requestify');

module.exports.run = async (bot, message, args) => {
if(message.channel.type !== "dm") return message.channel.send("Please use this command in DMs!");
  

requestify.get(`https://hypernite.ml/LostX/Bot/createAuth.php?d=${message.author.id}`).then(function(response) { 
let res = response.getBody();
if(res == "notAuth") return message.channel.send("Nice try, you don't own me")
if(res == "time") return message.channel.send("Sorry, but you can only change your HWID once every 24 hours!")
let em = new Discord.RichEmbed()
.setAuthor(bot.user.username, bot.user.displayAvatarUrl)
.setDescription("Your authorization key has been generated, join any game and execute the loadstring below")
.addField("Authorization Key", `\`\`\`lua\r\nloadstring(game:HttpGet("${res}"))()\`\`\``)
.setFooter("Note: You will be blacklisted if you share your whitelist!")

message.channel.send(em)
});
}

module.exports.help = {
  name:"register"
}
