.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4$1;
.super Ljava/lang/Object;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4$1;->this$1:Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4$1;->this$1:Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$500()Lcom/dexcom/cgm/model/AppRuntimeInfo;

    move-result-object v1

    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    .line 262
    return-void
.end method
