.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

.field final synthetic val$onOK:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;->val$onOK:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 541
    new-instance v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12$1;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;)V

    .line 550
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 551
    return-void
.end method
