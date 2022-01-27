const Discord = require("discord.js");
const fs = require("fs");
let bicon = "https://cdn.discordapp.com/avatars/490332310047162368/6d2b4a0bf43770fa91fc891053d9343d.png?size=2048"

module.exports.noPerms = (message, txt) => {
  
    let embed = new Discord.RichEmbed()
        .setAuthor("FLOW Bot", bicon)
        .setColor("#fc2b20")
        .setDescription(`:x: Missing Permission: ${txt}`)
        .setFooter(`Message ID: ${message.id}`)

    message.channel.send(embed)
}

module.exports.customized = (message, txt) => {
    let embed = new Discord.RichEmbed()
        .setAuthor("BASS BOT", bicon)
        .setColor("#fc2b20")
        .setDescription(`:x: ${txt}!`)
        .setFooter(`Message ID: ${message.id}`)

    message.channel.send(embed)
}

module.exports.win = (message, txt) => {
    let embed = new Discord.RichEmbed()
        .setAuthor("FLOW Bot", bicon)
        .setColor("#4286f4")
        .setDescription(`${txt}!`)
        .setFooter(`Message ID: ${message.id}`)

    message.channel.send(embed)
}