const Discord = require("discord.js");
const Monitor = require('ping-monitor');
const CircularJSON = require('circular-json');

module.exports.run = async (bot, message, args) => {
  
let embed = new Discord.RichEmbed()
.setColor("#15f153")
.setAuthor(bot.user.username, bot.user.displayAvatarURL)
.addField("Running Diagnostics", "Please wait")
.setFooter(`Message ID: ${message.id}`)

message.channel.send(embed).then(msg => {msg.delete(3000)}).catch
  
const myMonitor = new Monitor({
    website: 'https://hypernite.ml/',
});
 
myMonitor.on('up', function (res, state) {
    let date = new Date().toISOString().replace(/T/, ' ').replace(/\..+/, '')
  
    let botembed = new Discord.RichEmbed()
    .setAuthor(bot.user.username, bot.user.displayAvatarURL)
    .addField("Website Diagnostics", `Here's a detailed view of the website's uptime.`)
    .addField("Website", `${res.website}`)
    .addField("Response Code", `**${res.statusCode}**`)
    .addField("Response Time", `**${res.responseTime}** ms`)
    .addField("Last Checked", date)
    .addField("Requests Made", state.totalRequests)
    .setFooter(`Message ID: ${message.id}`)

    message.channel.send(botembed);
  
  myMonitor.stop()
});
}

module.exports.help = {
  name:"getUptime"
}

// Code sample from other projects
