const Discord = require("discord.js");
const fs = require("fs")
let ms = require("ms")
const errors = require("../utils/errors.js");
var requestify = require('requestify');

module.exports.run = async (bot, message, args) => {

var role = bot.guilds.get('695443271966523452').roles.find(role => role.name === "pingme");

  if(bot.guilds.get('695443271966523452').members.get(message.member.id).roles.has(role.id)){
    message.channel.send("Ping Me: :x:")
    
    bot.guilds.get('695443271966523452').members.get(message.member.id).removeRole(role)
  }else{
    message.channel.send("Ping Me: :white_check_mark:")
    
    bot.guilds.get('695443271966523452').members.get(message.member.id).addRole(role)
  }


}

module.exports.help = {
  name:"pingme"
}
