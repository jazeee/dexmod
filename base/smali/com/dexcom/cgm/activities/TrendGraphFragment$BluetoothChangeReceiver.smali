.class Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TrendGraphFragment.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;Lcom/dexcom/cgm/activities/TrendGraphFragment$1;)V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;-><init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->access$000(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    .line 721
    return-void
.end method
