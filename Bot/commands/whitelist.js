const Discord = require("discord.js");
const fs = require("fs")
let ms = require("ms")
const errors = require("../utils/errors.js");
const editor = require("../utils/edit.js");
var requestify = require('requestify');

function makeid(length) {
   var result           = '';
   var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
   var charactersLength = characters.length;
   for ( var i = 0; i < length; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
   }
   return result;
}

module.exports.run = async (bot, message, args) => {
if(message.author.id !== "600406821273993219") return message.reply("Nope u have no access noob!")
let person = message.mentions.users.first();
if(!person) return message.reply("who u whitelisting, a ghost?")
let key = `LostX-${makeid(5)}`;
let userid = person.id;

let whitelisted = false
requestify.get(`https://hypernite.ml/LostX/Bot/check-discord.php?discord=${userid}`).then(function(response) {
    // Get the response body
    if(response.getBody() == "true"){
      whitelisted = true
    }
});

let a = "`"
let tosend = new Discord.RichEmbed()
.setAuthor(person.username, person.displayAvatarURL)
.setColor("#00ffd5")
.setDescription("You've been whitelisted! Now let's set you up...")
.addField("Your Key", `Your Key Is ${a}${key}${a}`)
.addField("Registration", "Type \`>register\` right here in my DMs, run the loadstring then you'll be registered")
.addField("Script", "After you register, the script is in #script in the server")
.setFooter("TIP: Always save your key, you cannot use #script until registered")

setTimeout(function(){
if(whitelisted) return message.channel.send("Dat bitch is whitelisted")

let time;
requestify.get('https://hypernite.ml/bot-data/get-time.php').then(function(response) { time = response.getBody();});

let whitelistEmbed = new Discord.RichEmbed()
.setAuthor(message.author.username, message.author.displayAvatarURL)
.setColor("#00ffd5")
.addField("Developer Access?", "Enabled: :x:")
.addField("Finished?", "Hit The :white_check_mark: Reaction To Initialize The Whitelist Process")
.setFooter(`Message ID: ${message.id}`);
  
message.channel.send(whitelistEmbed).then(msg => {
msg.react('💻').then(() => msg.react('✅')).then(() => msg.react('❌'));
let developerMode = false;
let final = false;
   bot.on('messageReactionAdd', (reaction, user) => {
     if(final == false){
  
  if (['💻'].includes(reaction.emoji.name) && user.id === message.author.id){
    developerMode = true;
    msg.edit(editor.edit(whitelistEmbed, "Developer", "Enabled: :white_check_mark:"))
  }
       
  if (['❌'].includes(reaction.emoji.name) && user.id === message.author.id){
    message.delete()
    message.channel.send("Whitelist Process Cancelled...")
    msg.delete()
  }
  
	if (['✅'].includes(reaction.emoji.name) && user.id === message.author.id){
    final = true
    message.delete()
    
    let finalizing = new Discord.RichEmbed()
    .setAuthor(message.author.username, message.author.displayAvatarURL)
    .setColor("#00ffd5")
    .setDescription("Almost done, just finishing some things up, and you'll be on your way!")
    .addField("Generate Key & Check For Copy", "Status: :x:")
    .addField("Upload And Verify Webserver", "Status: :x:")
    .addField("Finish Key Process!", "Status: :x:")
    .setFooter(`Message ID: ${message.id}`);
  
  message.channel.fetchMessage(msg.id).then(m => {
  m.reactions.forEach(reaction => reaction.remove(m.author.id))
  m.reactions.forEach(reaction => reaction.remove(message.author.id))
  })
    
  msg.edit(finalizing);
    
    requestify.get(`https://hypernite.ml/LostX/Bot/check-copy.php?key=${key}`).then(function(response) {
    // Get the response body
    if(response.getBody() == "false"){
      msg.edit(editor.edit(finalizing, "Generate", "Status: :white_check_mark:"))
      
    requestify.get(`https://hypernite.ml/LostX/Bot/w.php?id=${userid}&key=${key}&developer=${developerMode}&date=${time}`).then(function(response) {
    // Get the response body
    if(response.getBody() == "added"){
      msg.edit(editor.edit(finalizing, "Upload", "Status: :white_check_mark:"))
      
      let fin = new Discord.RichEmbed()
      .setAuthor(message.author.username, message.author.displayAvatarURL)
      .setColor("#3474eb")
      .addField("Process Completed!", `${person} Was Successfully Whitelisted, Their Whitelist Details Have Been Sent to Them!`)
      
      setTimeout(function(){
        msg.edit(editor.edit(finalizing, "Finish", "Status: :white_check_mark:"))
        
        setTimeout(function(){
          msg.edit(fin)
          
          person.send(tosend)
          let role = message.guild.roles.find(r => r.name === "Buyers");

// Let's pretend you mentioned the user you want to add a role to (!addrole @user Role Name):
let member = message.mentions.members.first();

// or the person who made the command: let member = message.member;

// Add the role!
member.addRole(role).catch(console.error);
        }, 800)
      }, 500)
    }else{
      return message.channel.send("OMG YOU BROKE ERROR HANDLING, jk the something broke")
    }
   }).fail(function(response) {
		message.channel.send("failed") // Some error code such as, for example, 404
	});;
    }else{
      return message.channel.send("OMG YOU BROKE ERROR HANDLING, jk the key was a copy not sure how though")
    }
   });
   
    // End Of Request Code
  }
     }
});

bot.on('messageReactionRemove', (reaction, user) => {
  if(final == false){
  
  if (['💻'].includes(reaction.emoji.name) && user.id === message.author.id){
    developerMode = false;
    msg.edit(editor.edit(whitelistEmbed, "Developer", "Enabled: :x:"))
  }
  }
});
  })
}, 3000)

  }

module.exports.help = {
  name:"whitelist"
}
