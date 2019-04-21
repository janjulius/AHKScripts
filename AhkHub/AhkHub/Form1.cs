using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Win32;

namespace AhkHub
{
    public partial class Form1 : Form
    {
        private DirectoryInfo maindir = null;
        private string SelectedScript = null;
        private List<FileInfo> files;
        private bool installed;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            InitializeComboBox(GetDirectories());
            installed = checkInstalled("AutoHotKey");
            label3.Text = String.Format("AutoHotKey is{0} installed on this device", installed ? "" : " not");
        }

        private IEnumerable<DirectoryInfo> GetDirectories()
        {
            string path = Environment.CurrentDirectory;

            var dir = new DirectoryInfo(path);
            var dir2 = dir.Parent.Parent.Parent.Parent;
            maindir = dir2;
            var directories = dir2.EnumerateDirectories().Where(a => a.Name != "AhkHub" || a.Name != ".git");


            return directories;
        }

        private void InitializeComboBox(IEnumerable<DirectoryInfo> data)
        {
            List<string> directoryString = new List<string>();
            DirectoryInfo[] datacnt = data.ToList().ToArray();
            for (int i = 0; i < data.Count(); i++)
            {
                if (datacnt[i].Name.ToLower() == "ahkhub" || datacnt[i].Name.ToLower() == ".git")
                {
                    continue;
                }

                directoryString.Add(datacnt[i].Name);
            }
            
            if (data != null)
            {
                if (data.Count() > 0)
                {
                    comboBox1.Items.AddRange(directoryString.ToArray());
                }
            }
            comboBox1.Update();

        }

        private string[] GetAhkScripts()
        {
            return null;
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboBox2.Items.Clear();
            SelectedScript = null;
            files = GetAhkFilesInFolder(new DirectoryInfo(maindir.ToString() + "\\" + comboBox1.SelectedItem.ToString()));
            comboBox2.Items.AddRange(files.ToArray());
            comboBox2.Update();
            
        }

        private List<FileInfo> GetAhkFilesInFolder(DirectoryInfo dir)
        {
            if (dir != null)
            {
                FileInfo[] files = new DirectoryInfo(Path.Combine(dir.FullName, @"..\..\..\..\..\..\" + dir.Name)).GetFiles().Where(a => a.Name.EndsWith(".ahk")).ToArray();
                List<FileInfo> r = new List<FileInfo>();

                foreach (var file in files)
                {
                    if (file.Name.EndsWith(".ahk"))
                    {
                        r.Add(file);
                    }
                }

                return r;
            }
            return null;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var file = files.Where(a => a.Name == comboBox2.SelectedItem.ToString()).FirstOrDefault().FullName;
            Process.Start(file);
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //SelectedScript = comboBox2.SelectedIndex;
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        public static bool checkInstalled(string c_name)
        {
            string displayName;

            string registryKey = @"SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall";
            RegistryKey key = Registry.LocalMachine.OpenSubKey(registryKey);
            if (key != null)
            {
                foreach (RegistryKey subkey in key.GetSubKeyNames().Select(keyName => key.OpenSubKey(keyName)))
                {
                    displayName = subkey.GetValue("DisplayName") as string;
                    if (displayName != null && displayName.Contains(c_name))
                    {
                        return true;
                    }
                }
                key.Close();
            }

            registryKey = @"SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall";
            key = Registry.LocalMachine.OpenSubKey(registryKey);
            if (key != null)
            {
                foreach (RegistryKey subkey in key.GetSubKeyNames().Select(keyName => key.OpenSubKey(keyName)))
                {
                    displayName = subkey.GetValue("DisplayName") as string;
                    if (displayName != null && displayName.Contains(c_name))
                    {
                        return true;
                    }
                }
                key.Close();
            }
            return false;
        }
    }
}
