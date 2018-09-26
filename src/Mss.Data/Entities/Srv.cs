using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Srv : IVersionedEntity
    {
        private readonly IList<Cat> _cat = new List<Cat>();
        private readonly IList<PostfixCfg> _postfixCfg = new List<PostfixCfg>();
        private readonly IList<ClamavCfg> _clamavCfg = new List<ClamavCfg>();
        private readonly IList<SpamassasinCfg> _spamassasinCfg = new List<SpamassasinCfg>();
        private readonly IList<JabberCfg> _jabberCfg = new List<JabberCfg>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Comment { get; set; }
        public virtual decimal PayPerDay { get; set; }
        public virtual bool IsDisabled { get; set; }

        public virtual IList<Cat> Cat
        {
            get { return _cat; }
        }
        public virtual IList<PostfixCfg> PostfixCfg
        {
            get { return _postfixCfg; }
        }
        public virtual IList<ClamavCfg> ClamavCfg
        {
            get { return _clamavCfg; }
        }
        public virtual IList<SpamassasinCfg> SpamassasinCfg
        {
            get { return _spamassasinCfg; }
        }
        public virtual IList<JabberCfg> JabberCfg
        {
            get { return _jabberCfg; }
        }

        public virtual byte[] Version { get; set; }
    }
}