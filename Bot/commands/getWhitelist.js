const Discord = require("discord.js");
const errors = require("../utils/errors.js");
var requestify = require("requestify");

module.exports.run = async (bot, message, args) => {
if(!bot.guilds.get('695443271966523452').members.get(message.author.id).roles.some(r=>["Owners", "Administrators"].includes(r.name))) return message.reply("Nope u have no access noob!")
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

if(!uid.startsWith("LostX")){
requestify.get(`https://hypernite.ml/LostX/Bot/Get.php?discord=${uid}`).then(function(response) {
    // Get the response body
    let r = response.getBody();
    if (r == "null"){
      return message.reply("User Was Not Found In The Database")
    }else{
      let parse = JSON.parse(r)
      let key = parse.Key
      let hideKey = key.slice(0, -3) + "***"
      let dID = parse.Discord
      let whitelistedOn = parse.dateWhitelisted
      let isDeveloper = parse.isDeveloper
      let frozen = parse.isFrozen
      let hasBeenSuspended = parse.hasBeenSuspended
      let suspensions = parse.suspensions
      let blacklisted = parse.isBlacklisted
      
      if(suspensions == ""){ suspensions = "None"}
      
      let finishEmbed1 = new Discord.RichEmbed()
      .setAuthor(bot.user.username, bot.user.displayAvatarURL)
      .setColor("#00ffd5")
      .setDescription("I found the user based on the info you provided!")
      .addField("Key", hideKey, true)
      .addField("Discord ID", dID, true)
      .addField("Date whitelisted", whitelistedOn + " CST", true)
      .addField("Developer access", isDeveloper, true)
      .addField("Frozen", frozen, true)
      .addField("Has been suspended", hasBeenSuspended, true)
      .addField("Suspensions", suspensions, true)
      .addField("Blacklisted", blacklisted, true)
      
      let fullkey1 = new Discord.RichEmbed()
      .setAuthor(bot.user.username, bot.user.displayAvatarURL)
      .setColor("#00ffd5")
      .addField(`Here's The Key Your Requested`, key)
      .setFooter("Note: If This Is Abused, You Will Be Demoted!")
      
      message.channel.send(finishEmbed1).then(msg => {
        msg.react('🔑').then(() => msg.react('❌'))
        let reacted = false;
        
        bot.on('messageReactionAdd', (reaction, user) => {
          if (['🔑'].includes(reaction.emoji.name) && user.id === message.author.id){
            if(!reacted){
              reacted = true;
              message.author.send(fullkey1)
              message.channel.fetchMessage(msg.id).then(m => {
                  if(message.channel.type !== "dm"){
                  m.reactions.forEach(reaction => {if (['🔑'].includes(reaction.emoji.name)){reaction.remove(message.author.id)}})
                  }
                  m.reactions.forEach(reaction => {if (['🔑'].includes(reaction.emoji.name)){reaction.remove(bot.user.id)}})
              })
            }
          }
            
          if (['❌'].includes(reaction.emoji.name) && user.id === message.author.id){
            msg.delete()
            if(message.channel.type !== "dm"){
              message.delete()
            }
          }
        })
        
      })
    }
});
}else{
  if(uid.length < 7) return message.reply("The Key You Provided Must Have More Than 2 Characters To Be Found!")
  requestify.get(`https://hypernite.ml/LostX/Bot/GetByKey.php?key=${uid}`).then(function(response) {
    // Get the response body
    let r = response.getBody();
    if (r == "null"){
      return message.reply("Key Was Not Found In The Database")
    }else{
      let parse = JSON.parse(r)
      let key = parse.Key
      let hideKey = key.slice(0, -3) + "***"
      let dID = parse.Discord
      let whitelistedOn = parse.dateWhitelisted
      let isDeveloper = parse.isDeveloper
      let frozen = parse.isFrozen
      let hasBeenSuspended = parse.hasBeenSuspended
      let suspensions = parse.suspensions
      let blacklisted = parse.isBlacklisted
      
      if(suspensions == ""){ suspensions = "N/A"}
      
      let finishEmbed = new Discord.RichEmbed()
      .setAuthor(bot.user.username, bot.user.displayAvatarURL)
      .setColor("#00ffd5")
      .setDescription("I found the user based on the info you provided!")
      .addField("Key", hideKey, true)
      .addField("Discord ID", dID, true)
      .addField("Date whitelisted", whitelistedOn + " CST", true)
      .addField("Developer access", isDeveloper, true)
      .addField("Frozen", frozen, true)
      .addField("Has been suspended", hasBeenSuspended, true)
      .addField("Suspensions", suspensions, true)
      .addField("Blacklisted", blacklisted, true)
      
      let fullkey = new Discord.RichEmbed()
      .setAuthor(bot.user.username, bot.user.displayAvatarURL)
      .setColor("#00ffd5")
      .addField(`Here's The Key Your Requested`, key)
      .setFooter("Note: If This Is Abused, You Will Be Demoted!")
      
      message.channel.send(finishEmbed).then(msg => {
        msg.react('🔑').then(() => msg.react('❌'))
        let reacted = false;
        
        bot.on('messageReactionAdd', (reaction, user) => {
          if (['🔑'].includes(reaction.emoji.name) && user.id === message.author.id){
            if(!reacted){
              reacted = true;
              message.author.send(fullkey)
              message.channel.fetchMessage(msg.id).then(m => {
                  if(message.channel.type !== "dm"){
                  m.reactions.forEach(reaction => {if (['🔑'].includes(reaction.emoji.name)){reaction.remove(message.author.id)}})
                  }
                  m.reactions.forEach(reaction => {if (['🔑'].includes(reaction.emoji.name)){reaction.remove(bot.user.id)}})
              })
            }
          }
            
          if (['❌'].includes(reaction.emoji.name) && user.id === message.author.id){
            reacted = true
            msg.delete()
            if(message.channel.type !== "dm"){
              message.delete()
            }
          }
          
        })

        
      })
    }
});
  
}
}

module.exports.help = {
  name:"getWhitelist"
}
