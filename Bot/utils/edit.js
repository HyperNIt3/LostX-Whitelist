let Discord = require("discord.js");

module.exports.edit = (embed, f, newval) => {
        for (let field of embed.fields) {
          if(field.name.includes(f)){
            field.value = newval
            return embed
          }
      }
}

module.exports.editField = (embed, f, newval) => {
        for (let field of embed.fields) {
          if(field.name.includes(f)){
            field.name = newval
            return embed
          }
      }
}