/* See LICENSE file for copyright and license details. */

/* interval between updates (in ms) */
const unsigned int interval = 1000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048

static const struct arg args[] = {
	/* function, format, argument */
	{ cpu_perc, "cpu: %s%% | ", NULL },
	{ ram_used, "ram: %s | ", NULL },
	{ disk_perc, "disk: %s%% | ", "/"    },
	{ netspeed_rx, "r: %sB/s ", "wlp3s0" },
	{ netspeed_tx, "t: %sB/s | ", "wlp3s0" },
//	{ run_command, "%s | ", "network.sh" },
	{ run_command, "vol: %4s | ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },
	{ battery_perc,  "%s%% | ", "BAT0" },
        { datetime,     "time: %s ",      "%H:%M" },
};
