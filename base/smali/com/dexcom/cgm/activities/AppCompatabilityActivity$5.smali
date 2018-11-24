.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$5;
.super Ljava/lang/Object;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$5;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$5;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$500()Lcom/dexcom/cgm/model/AppRuntimeInfo;

    move-result-object v1

    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    .line 306
    return-void
.end method
