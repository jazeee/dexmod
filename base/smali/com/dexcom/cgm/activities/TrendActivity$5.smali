.class Lcom/dexcom/cgm/activities/TrendActivity$5;
.super Ljava/lang/Object;
.source "TrendActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$5;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$5;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/TrendActivity;->access$302(Lcom/dexcom/cgm/activities/TrendActivity;Z)Z

    .line 291
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$5;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendActivity$5;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/TrendActivity;->access$400(Lcom/dexcom/cgm/activities/TrendActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dexcom/cgm/activities/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/TrendActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method
