using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using WowPacketParser.Enums;
using WowPacketParser.Misc;
using Wintellect.PowerCollections;

namespace WowPacketParser.Store
{
    public abstract class Store
    {
        public static int SQLEnabledFlags { protected get; set; }
        public List<SQLOutput> Types { get; protected set; }

        protected bool ProcessFlags()
        {
            return Types.Count == 0 ||
                Settings.DumpFormat == DumpFormatType.SniffDataOnly ||
                Types.Any(sqlOutput => SQLEnabledFlags.HasAnyFlagBit(sqlOutput));
        }

        public abstract void Clear();
        public abstract bool IsEmpty();

        protected bool Enabled;
    }

    public class StoreDictionary<T, TK> : Store, IEnumerable<KeyValuePair<T, Tuple<TK, TimeSpan?>>>
    {
        private readonly Dictionary<T, Tuple<TK, TimeSpan?>> _dictionary;

        public StoreDictionary()
        {
            Types = new List<SQLOutput>();
            Enabled = true;
            _dictionary = new Dictionary<T, Tuple<TK, TimeSpan?>>();
        }

        public StoreDictionary(List<SQLOutput> types)
        {
            Types = types;
            Enabled = ProcessFlags();
            _dictionary = Enabled ? new Dictionary<T, Tuple<TK, TimeSpan?>>() : null;
        }

        public StoreDictionary(Dictionary<T, TK> dict)
        {
            _dictionary = new Dictionary<T, Tuple<TK, TimeSpan?>>();

            foreach (var pair in dict)
                _dictionary.Add(pair.Key, new Tuple<TK, TimeSpan?>(pair.Value, null));

            Types = new List<SQLOutput>();
            Enabled = true;
        }

        public void Add(T key, TK value, TimeSpan? time = null)
        {
            if (!Enabled)
                return;

            if (_dictionary.ContainsKey(key))
                return;

            _dictionary.Add(key, new Tuple<TK, TimeSpan?>(value, time));
        }

        public bool Remove(T key)
        {
            return !Enabled || _dictionary.Remove(key);
        }

        public bool ContainsKey(T key)
        {
            return Enabled && _dictionary.ContainsKey(key);
        }

        public bool TryGetValue(T key, out TK value)
        {
            if (Enabled)
            {
                Tuple<TK, TimeSpan?> tuple;
                if (_dictionary.TryGetValue(key, out tuple))
                {
                    value = tuple.Item1;
                    return true;
                }
            }

            value = default(TK);
            return false;
        }

        public bool TryGetValue(T key, out Tuple<TK, TimeSpan?> value)
        {
            if (Enabled)
                return _dictionary.TryGetValue(key, out value);
            value = null;
            return false;
        }

        public Tuple<TK, TimeSpan?> this[T key]
        {
            get
            {
                return Enabled ? _dictionary[key] : null;
            }
            set
            {
                if (Enabled)
                    _dictionary[key] = value;
            }
        }

        public override void Clear()
        {
            if (Enabled)
                _dictionary.Clear();
        }

        public override bool IsEmpty()
        {
            return !Enabled || _dictionary.Count == 0;
        }

        public IEnumerator<KeyValuePair<T, Tuple<TK, TimeSpan?>>> GetEnumerator()
        {
            return Enabled ? _dictionary.GetEnumerator() : new Dictionary<T, Tuple<TK, TimeSpan?>>().GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }

        public List<T> Keys()
        {
            return Enabled ? _dictionary.Keys.ToList() : new List<T>();
        }
    }

    public class StoreMulti<T, TK> : Store, IEnumerable<KeyValuePair<T, ICollection<Tuple<TK, TimeSpan?>>>>
    {
        private readonly MultiDictionary<T, Tuple<TK, TimeSpan?>> _dictionary;

        public StoreMulti()
        {
            Types = new List<SQLOutput>();
            Enabled = true;
            _dictionary = new MultiDictionary<T, Tuple<TK, TimeSpan?>>(true);
        }

        public StoreMulti(List<SQLOutput> types)
        {
            Types = types;
            Enabled = ProcessFlags();
            _dictionary = Enabled ? new MultiDictionary<T, Tuple<TK, TimeSpan?>>(true) : null;
        }

        public StoreMulti(IEnumerable<KeyValuePair<T, ICollection<TK>>> dict)
        {
            _dictionary = new MultiDictionary<T, Tuple<TK, TimeSpan?>>(true);

            foreach (var pair in dict)
                foreach (var k in pair.Value)
                    _dictionary.Add(pair.Key, new Tuple<TK, TimeSpan?>(k, null));


            Types = new List<SQLOutput>();
            Enabled = true;
        }

        public void Add(T key, TK value, TimeSpan? time)
        {
            if (!Enabled)
                return;

            _dictionary.Add(key, new Tuple<TK, TimeSpan?>(value, time));
        }

        public bool Remove(T key)
        {
            return !Enabled || _dictionary.Remove(key);
        }

        public override void Clear()
        {
            if (Enabled)
                _dictionary.Clear();
        }

        public override bool IsEmpty()
        {
            return !Enabled || _dictionary.Count == 0;
        }

        public IEnumerator<KeyValuePair<T, ICollection<Tuple<TK, TimeSpan?>>>> GetEnumerator()
        {
            return Enabled ? _dictionary.GetEnumerator() : new MultiDictionary<T, Tuple<TK, TimeSpan?>>(true).GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }

        public List<T> Keys()
        {
            return Enabled ? _dictionary.Keys.ToList() : new List<T>();
        }

        public bool ContainsKey(T key)
        {
            return Enabled && _dictionary.ContainsKey(key);
        }

        public ICollection<Tuple<TK, TimeSpan?>> this[T key]
        {
            get
            {
                return Enabled ? _dictionary[key] : null;
            }

            set
            {
                if (Enabled)
                    _dictionary[key] = value;
            }
        }
    }

    public class StoreBag<T> : Store, IEnumerable<Tuple<T, TimeSpan?>>
    {
        private readonly Bag<Tuple<T, TimeSpan?>> _bag;

        public StoreBag(List<SQLOutput> types)
        {
            Types = types;
            Enabled = ProcessFlags();
            _bag = Enabled ? new Bag<Tuple<T, TimeSpan?>>() : null;
        }

        public void Add(T item, TimeSpan? time)
        {
            if (Enabled)
                _bag.Add(new Tuple<T, TimeSpan?>(item, time));
        }

        public override void Clear()
        {
            if (Enabled)
                _bag.Clear();
        }

        public override bool IsEmpty()
        {
            return !Enabled || _bag.Count == 0;
        }

        public IEnumerator<Tuple<T, TimeSpan?>> GetEnumerator()
        {
            return Enabled ? _bag.GetEnumerator() : new Bag<Tuple<T, TimeSpan?>>().GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
    }
}
