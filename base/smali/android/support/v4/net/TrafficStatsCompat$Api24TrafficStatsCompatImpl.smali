.class Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;
.super Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.source "TrafficStatsCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    .prologue
    .line 145
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatApi24;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 146
    return-void
.end method

.method public untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    .prologue
    .line 150
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatApi24;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 151
    return-void
.end method
