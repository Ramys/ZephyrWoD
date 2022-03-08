﻿using System;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Threading;
using WowPacketParser.Enums;
using WowPacketParser.Loading;
using WowPacketParser.Misc;
using WowPacketParser.SQL;
using WowPacketParser.Parsing.Parsers;

namespace WowPacketParser
{
    public static class Program
    {
        private static void Main(string[] args)
        {
            SetUpConsole();

            // HardCoded tests ...
            ClientVersion.SetVersion(ClientVersionBuild.V5_3_0_17128);
            Thread.Sleep(8000);

            //byte[] updateObject1 = { 0x5C, 0x03, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x04, 0x02, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x02, 0xCB, 0x00, 0x00, 0xA4, 0x58, 0x45, 0xDB, 0x0F, 0x49, 0x40, 0x80, 0x82, 0x31, 0x40, 0x00, 0x00, 0x90, 0x40, 0x6D, 0x1C, 0x97, 0x40, 0xCD, 0xAC, 0x35, 0x43, 0x00, 0x00, 0xE0, 0x40, 0x00, 0x00, 0xE0, 0x40, 0x00, 0x00, 0x20, 0x40, 0xDB, 0x0F, 0x49, 0x40, 0x00, 0x00, 0x90, 0x40, 0x71, 0xF5, 0xB7, 0x44, 0x00, 0x00, 0x20, 0x40, 0x3F, 0xDF, 0x00, 0x00, 0xC0, 0x82, 0x00, 0x80, 0x23, 0x78, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xC0, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x3F, 0x01, 0x00, 0x00, 0x00, 0x18, 0x0A, 0x01, 0x00, 0x7B, 0x00, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x5B, 0x09, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x2B, 0xC7, 0x3E, 0x00, 0x00, 0xC0, 0x3F, 0x98, 0x96, 0x00, 0x00, 0x98, 0x96, 0x00, 0x00, 0x00, 0x00, 0x80, 0x3F, 0x00, 0x00, 0x80, 0x3F, 0x0B, 0x07, 0x04, 0x0B, 0x05, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0x89, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00 };
            //byte[] spellCast1 = { 0x23, 0x32, 0x00, 0x00, 0x40, 0x1D, 0xE0, 0x43, 0x8A, 0x00, 0x00, 0xF0, 0x04, 0x31, 0x9E, 0x09, 0xF6, 0xDC, 0x08 };
            //byte[] spellStart1 = { 0x6E, 0xF6, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x40, 0x3E, 0x80, 0x00, 0x02, 0xE0, 0x00, 0x00, 0x7D, 0xE0, 0x00, 0x04, 0x00, 0x08, 0xF0, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x0C, 0x23, 0x00, 0x00, 0x00, 0x00, 0x81, 0x79, 0x07, 0x16, 0x65, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0xEA, 0x00, 0x00, 0x07, 0x79, 0x23, 0x02, 0x81, 0x56, 0xD2, 0x6A, 0x05, 0x00, 0x81, 0x02, 0x04, 0xDC, 0x09, 0x31, 0x9E, 0xF0, 0xF6, 0x02, 0x44, 0x07, 0x02, 0x00, 0x04, 0x00, 0x56, 0x43, 0x8A, 0x00, 0x00, 0x79, 0x56, 0x23 }; 
            //WowPacketParser.Parsing.Handler.Parse(new Packet(spellStart1, 7191, new DateTime(), Direction.ServerToClient, 1, ""));

            var files = args.ToList();
            if (files.Count == 0)
            {
                PrintUsage();
                return;
            }

            // config options are handled in Misc.Settings
            Utilities.RemoveConfigOptions(ref files);

            if (!Utilities.GetFiles(ref files))
            {
                EndPrompt();
                return;
            }

            Thread.CurrentThread.CurrentCulture = CultureInfo.InvariantCulture;

            if (Settings.FilterPacketNumLow < 0)
                throw new ConstraintException("FilterPacketNumLow must be positive");

            if (Settings.FilterPacketNumHigh < 0)
                throw new ConstraintException("FilterPacketNumHigh must be positive");

            if (Settings.FilterPacketNumLow > 0 && Settings.FilterPacketNumHigh > 0
                && Settings.FilterPacketNumLow > Settings.FilterPacketNumHigh)
                throw new ConstraintException("FilterPacketNumLow must be less or equal than FilterPacketNumHigh");

            // Disable DB when we don't need its data (dumping to a binary file)
            if (Settings.DumpFormat == DumpFormatType.None || Settings.DumpFormat == DumpFormatType.Pkt ||
                Settings.DumpFormat == DumpFormatType.PktSplit || Settings.DumpFormat == DumpFormatType.SniffDataOnly)
            {
                SQLConnector.Enabled = false;
                SSHTunnel.Enabled = false;
            }
            else
                Filters.Initialize();

            SQLConnector.ReadDB();

            var count = 0;
            foreach (var file in files)
            {
                SessionHandler.z_streams.Clear();
                ClientVersion.SetVersion(Settings.ClientBuild);
                new SniffFile(file, Settings.DumpFormat, Tuple.Create(++count, files.Count)).ProcessFile();
            }

            if (!String.IsNullOrWhiteSpace(Settings.SQLFileName))
                Builder.DumpSQL("Dumping global sql", Settings.SQLFileName, "# multiple files\n");

            SQLConnector.Disconnect();
            SSHTunnel.Disconnect();
            Logger.WriteErrors();

            EndPrompt();
        }

        private static void EndPrompt(bool forceKey = false)
        {
            if (Settings.ShowEndPrompt || forceKey)
            {
                Console.WriteLine("Press any key to continue.");
                Console.ReadKey();
                Console.WriteLine();
            }
        }

        private static void PrintUsage()
        {
            Console.WriteLine("Error: No files selected to be parsed.");
            Console.WriteLine("Usage: Drag a file, or group of files on the executable to parse it.");
            Console.WriteLine("Command line usage: WowPacketParser.exe [/ConfigFile path /Option1 value1 ...] filetoparse1 ...");
            Console.WriteLine("/ConfigFile path - file to read config from, default: WowPacketParser.exe.config.");
            Console.WriteLine("/Option1 value1 - override Option1 setting from config file with value1.");
            Console.WriteLine("Configuration: Modify WowPacketParser.exe.config file.");
            EndPrompt(true);
        }

        private static void SetUpConsole()
        {
            Console.Title = "WowPacketParser";

            Trace.Listeners.Clear();

            using (var consoleListener = new ConsoleTraceListener(true))
                Trace.Listeners.Add(consoleListener);

            if (Settings.ParsingLog)
            {
                using (var fileListener = new TextWriterTraceListener(String.Format("{0}_log.txt", Utilities.FormattedDateTimeForFiles())))
                {
                    fileListener.Name = "ConsoleMirror";
                    Trace.Listeners.Add(fileListener);
                }
            }

            Trace.AutoFlush = true;
        }
    }
}
