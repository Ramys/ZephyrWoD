using WowPacketParser.Enums;
using WowPacketParser.SQL;

namespace WowPacketParser.Store.Objects
{
    [DBTableName("creature_text")]
    public sealed class CreatureText
    {
        [DBFieldName("groupid")]
        public uint GroupId;

        [DBFieldName("id")]
        public uint Id;

        [DBFieldName("text")]
        public string Text;

        [DBFieldName("type")]
        public ChatMessageType Type;

        [DBFieldName("language")]
        public Language Language;

        [DBFieldName("probability")]
        public float Probability;

        [DBFieldName("emote")]
        public EmoteType Emote;

        [DBFieldName("duration")]
        public uint Duration;

        [DBFieldName("sound")]
        public uint Sound;

        [DBFieldName("comment")]
        public string Comment;
    }
}
