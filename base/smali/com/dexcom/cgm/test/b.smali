.class final Lcom/dexcom/cgm/test/b;
.super Landroid/content/BroadcastReceiver;
.source "TestService.java"


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/test/TestService;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/test/TestService;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/dexcom/cgm/test/b;->a:Lcom/dexcom/cgm/test/TestService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 54
    const-string v0, "TEST-CLIENT"

    const-string v1, "Now connected to the internet."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/test/b;->a:Lcom/dexcom/cgm/test/TestService;

    invoke-static {v0}, Lcom/dexcom/cgm/test/TestService;->access$000(Lcom/dexcom/cgm/test/TestService;)Lcom/dexcom/cgm/test/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/test/c;->a()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v0, "TEST-CLIENT"

    const-string v1, "No longer connected to the internet. "

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
