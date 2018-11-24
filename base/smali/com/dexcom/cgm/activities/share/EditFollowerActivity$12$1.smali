.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12$1;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;->val$onOK:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 547
    return-void
.end method
