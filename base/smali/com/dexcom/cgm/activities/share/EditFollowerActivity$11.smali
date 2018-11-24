.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 449
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11$1;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    return-void
.end method
