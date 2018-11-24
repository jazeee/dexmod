.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11$1;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->finish()V

    .line 455
    return-void
.end method
