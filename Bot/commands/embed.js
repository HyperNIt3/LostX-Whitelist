const Discord = require("discord.js");
const fs = require("fs")
let ms = require("ms")
const errors = require("../utils/errors.js");
var requestify = require('requestify');

module.exports.run = async (bot, message, args) => {

let em = new Discord.RichEmbed()
.setAuthor(bot.user.username, bot.user.displayAvatarURL)
.setDescription("LostX is a one of a kind GUI for Lost, with consistent updates, and a secure whitelist!")
.setColor("#e56b1f")
.setThumbnail("https://cdn.discordapp.com/attachments/689350651905572867/699876150251487242/logo.png")
.addField("Cost | Payment Methods", "LostX costs $5, and only PayPal is supported")
.addField("How To Buy?", "DM <@600406821273993219> asking to purchase")
.addField("Supported Exploits?", "SynapseX")
.setFooter("Note: There are no refunds!")

message.channel.send(em)
}

module.exports.help = {
  name:"embed"
}
