.class Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "AlertLifecycleCallbacks.java"

# interfaces
.implements Lcom/dexcom/cgm/a/g;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;->this$0:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evAlert(Lcom/dexcom/cgm/a/l;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1$1;

    invoke-direct {v1, p0, p1}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1$1;-><init>(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;Lcom/dexcom/cgm/a/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method
