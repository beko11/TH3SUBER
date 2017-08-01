local function run(msg, matches)
    if matches[1] == 'اضافه المحظورين' and is_admin(msg) then
        if gp_type(msg.to.id) == "channel" then
            tdcli.getChannelMembers(msg.to.id, 0, "Kicked", 200, function (i, naji)
                for k,v in pairs(naji.members_) do
                    tdcli.addChatMember(i.chat_id, v.user_id_, 50, dl_cb, nil)
                end
            end, {chat_id=msg.to.id})
            return "`🎈- تم اضافه المحظورين الى المجموعه🔹✨`"
        end
        return "_🎈-صديقي _`هذا الامر يخص المطور`_ فقط🔹✨_"
    end
end

return { 
patterns = { 
"^(اضافه المحظورين)$", 
}, 
run = run 
}
