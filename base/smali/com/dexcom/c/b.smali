.class final Lcom/dexcom/c/b;
.super Landroid/content/BroadcastReceiver;
.source "BatteryLevelMonitor.java"

# interfaces
.implements Lcom/dexcom/cgm/k/b;


# instance fields
.field private synthetic a:Lcom/dexcom/c/a;


# direct methods
.method private constructor <init>(Lcom/dexcom/c/a;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dexcom/c/b;->a:Lcom/dexcom/c/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/c/a;B)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/dexcom/c/b;-><init>(Lcom/dexcom/c/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/dexcom/c/b;->a:Lcom/dexcom/c/a;

    invoke-static {v1}, Lcom/dexcom/c/a;->access$100(Lcom/dexcom/c/a;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 118
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    const/4 v0, 0x1

    .line 123
    :cond_0
    return v0

    .line 116
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final evInterval()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dexcom/c/b;->a:Lcom/dexcom/c/a;

    invoke-static {v0}, Lcom/dexcom/c/a;->access$210(Lcom/dexcom/c/a;)I

    .line 130
    iget-object v0, p0, Lcom/dexcom/c/b;->a:Lcom/dexcom/c/a;

    invoke-static {v0}, Lcom/dexcom/c/a;->access$200(Lcom/dexcom/c/a;)I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/dexcom/c/b;->a:Lcom/dexcom/c/a;

    iget-object v1, p0, Lcom/dexcom/c/b;->a:Lcom/dexcom/c/a;

    invoke-static {v1}, Lcom/dexcom/c/a;->access$300(Lcom/dexcom/c/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dexcom/c/a;->access$202(Lcom/dexcom/c/a;I)I

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/dexcom/c/b;->a:Lcom/dexcom/c/a;

    iget-object v1, v1, Lcom/dexcom/c/a;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 94
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 97
    :goto_0
    const-string v1, "level"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 98
    const-string v3, "scale"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 101
    if-ltz v1, :cond_3

    if-lez v3, :cond_3

    .line 103
    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v3

    .line 106
    :goto_1
    if-eq v1, v2, :cond_1

    .line 108
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    invoke-static {v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logBatteryLevel(ZI)V

    .line 112
    :cond_1
    return-void

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
