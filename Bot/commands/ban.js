const Discord = require("discord.js");
const errors = require("../utils/errors.js");

module.exports.run = async (bot, message, args) => {
    
    if(!message.member.hasPermission("BAN_MEMBERS")) return message.reply("RIP")
    if(args[0] == "help"){
      message.reply("Usage: !ban <user> <reason>");
      return;
    }
    let bUser = message.guild.member(message.mentions.users.first() || message.guild.members.get(args[0]));
    if(!bUser) return message.reply("No user defined")
    if(bUser.id === bot.user.id) return message.reply("NO")
    let bReason = args.join(" ").slice(22);
    if(!bReason) return message.reply("No reason")
    if(bUser.hasPermission("MANAGE_MESSAGES")) return message.reply("Aye brother")

    let banEmbed = new Discord.RichEmbed()
    .setDescription("~Ban~")
    .setColor("#bc0000")
    .addField("Banned User", `${bUser} with ID ${bUser.id}`)
    .addField("Banned By", `<@${message.author.id}> with ID ${message.author.id}`)
    .addField("Banned In", message.channel)
    .addField("Time", message.createdAt)
    .addField("Reason", bReason);

    let incidentchannel = message.guild.channels.find(`name`, "a");
    if(!incidentchannel) return message.channel.send("Can't find incidents channel.");
  
  let em = new Discord.RichEmbed()
    .setAuthor(bUser.username, bUser.displayAvatarURL)
    .setColor("#00ffd5")
    .setDescription("Action has been performed")
    .addField("Action Performed", `${bUser} has been banned!`)
    .addField("Reason", `\`${bReason}\``)

    message.guild.member(bUser).ban(bReason);
    incidentchannel.send(banEmbed);
  message.channel.send(em)
}

module.exports.help = {
  name:"ban"
}