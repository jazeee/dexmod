.class Lcom/dexcom/cgm/activities/wear/DataService$1;
.super Landroid/content/BroadcastReceiver;
.source "DataService.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/wear/DataService;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/wear/DataService;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dexcom/cgm/activities/wear/DataService$1;->this$0:Lcom/dexcom/cgm/activities/wear/DataService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/activities/wear/DataService$1;->this$0:Lcom/dexcom/cgm/activities/wear/DataService;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/wear/DataService;->access$000(Lcom/dexcom/cgm/activities/wear/DataService;)V

    .line 51
    return-void
.end method
