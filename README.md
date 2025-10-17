# Linux Scripts

## 🖥️ System Resource Usage Script

A simple **Bash script** to monitor and display system resource usage, including CPU, memory, disk, and top processes.

---

### 📌 Features
- ✅ Show **CPU usage** percentage  
- ✅ Show **memory usage** (used/total with percentage)  
- ✅ Show **disk usage** summary  
- ✅ List **top 5 processes by CPU usage**  
- ✅ List **top 5 processes by memory usage**  

---

### 🚀 How to Use

1. Save the script into a file, e.g.:

```bash
nano system_usage.sh
```

2. Make it executable:

```bash
chmod +x system_usage.sh
```

3. Run the script:

```bash
./system_usage.sh
```

### 📊 Example Output

```bash
###################################
      System Resource Usage 
###################################

##### CPU Usage #####
CPU Usage: 23.5

##### Memory Usage #####
Memory Used: 2048MB / 4096MB  (50%)

##### Disk Usage #####
Used: 20G/40G  (50%)

##### Top 5 Processes by CPU #####
USER    PID    %CPU
root    1234   35.0
...

##### Top 5 Processes by Memory #####
USER    PID    %MEM
mysql   4567   40.2
...

```
---

## 📊 Apache/Nginx Log Analyzer Script  

This **Bash script** analyzes a given web server log file (Apache/Nginx access logs) and extracts useful insights such as the most active IPs, requested paths, status codes, and user agents.  

---

### 📌 Features
- 🔍 **Top 5 IP addresses** with the most requests  
- 📂 **Top 5 requested paths (URLs)**  
- ⚡ **Top 5 HTTP response status codes**  
- 🌍 **Top 5 user agents (browsers/clients)**  

---

### 🚀 Usage

1. Save the script into a file, e.g.:

```bash
nano nginx-log-analyser.sh
```

2. Make it executable:

```bash
chmod +x nginx-log-analyser.sh
```

3. Run it with a log file as argument:

```bash
./nginx-log-analyser.sh  /var/log/nginx/nginx-access.log
```

### 📊 Example Output


```bash
===== Top 5 IP addresses with the most requests =====
192.168.1.10  -  150 requests
203.0.113.5   -  120 requests
...

===== Top 5 most requested paths =====
/index.html   -  250 requests
/login        -  180 requests
...

===== Top 5 response status codes =====
200  -  500 requests
404  -  40 requests
500  -  10 requests

===== Top 5 user agents =====
Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/120.0
curl/7.81.0
...

```

---

## 🗄️ Log Archiver Script  

A simple **Bash script** to check if a log file exists and, if it does, archive it into a **tar** file with a timestamp.  

---

### 📌 Features
- ✅ Check if the specified log file exists  
- 📦 Archive the log file into a **.tar** file  
- 🕒 Archive name includes the current date & time  

---

### 🚀 Usage  

1. Save the script into a file, e.g.:  

```bash
nano log-archive-tool.sh
```


2. Make it executable:

```bash
chmod +x log-archive-tool.sh
```

3. Run it with the log file as argument:

```bash
./log-archive-tool.sh /var/log/syslog
```


### 📊 Example Output

Exist ✅
syslog_20251018_013045.tar
Done ✅










