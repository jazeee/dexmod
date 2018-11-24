.class public Lcom/dexcom/cgm/activities/CGMStateFragment$BluetoothChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CGMStateFragment.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$100(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 1347
    return-void
.end method
