.class Lcom/dexcom/cgm/activities/TrendActivity$9;
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
    .line 604
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$9;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 609
    :try_start_0
    const-string v0, "com.dexcom.cgm.debug_menu.DebugMenuActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 610
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendActivity$9;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$9;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/TrendActivity;->access$302(Lcom/dexcom/cgm/activities/TrendActivity;Z)Z

    .line 612
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$9;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/TrendActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
