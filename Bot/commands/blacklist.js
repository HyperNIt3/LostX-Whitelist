const Discord = require("discord.js");
const fs = require("fs")
let ms = require("ms")
const errors = require("../utils/errors.js");
var requestify = require('requestify');

module.exports.run = async (bot, message, args) => {
  if(message.author.id !== "600406821273993219") return message.reply("Nope u have no access noob!")
    if(args[0] == "help"){
      message.reply("Usage: >blacklist <user> <reason>");
      return;
    }
    let person;
if(message.channel.type !== "dm"){
person = message.mentions.users.first();
}
let uid;
if(!args[0]) return message.reply("No user was provided!")
if(!person){
  uid = args[0]
}else{
  uid = person.id
}
    let bReason = args.slice(1).join(' ');
    if(!bReason) return message.reply("No reason")

    requestify.get(`https://hypernite.ml/LostX/Bot/blacklist.php?discord=${uid}`).then(function(response) { 
    let res = response.getBody();
    if(res == "nf") return message.channel.send("User not whitelisted")
    if(res == "al") return message.channel.send("Sorry, user already blacklisted")
      
      let em = new Discord.RichEmbed()
    .setAuthor(person.username, person.displayAvatarURL)
    .setColor("#00ffd5")
    .setDescription("Action has been performed")
    .addField("Action Performed", `${person} has been blacklisted!`)
    .addField("Reason", `\`${bReason}\``)
      
      message.channel.send(em)
    });
}

module.exports.help = {
  name:"blacklist"
}