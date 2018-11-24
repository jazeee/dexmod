.class final Lcom/dexcom/c/e;
.super Ljava/lang/Object;
.source "SystemHealthCheckerComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/k/b;


# instance fields
.field private synthetic a:Lcom/dexcom/c/c;


# direct methods
.method private constructor <init>(Lcom/dexcom/c/c;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dexcom/c/e;->a:Lcom/dexcom/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/c/c;B)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/dexcom/c/e;-><init>(Lcom/dexcom/c/c;)V

    return-void
.end method


# virtual methods
.method public final evInterval()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 107
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 108
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    const/16 v2, 0x3c

    if-le v1, v2, :cond_0

    .line 110
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logMemoryLevel(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/dexcom/c/e;->a:Lcom/dexcom/c/c;

    invoke-static {v0}, Lcom/dexcom/c/c;->access$100(Lcom/dexcom/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/dexcom/c/e;->a:Lcom/dexcom/c/c;

    invoke-static {v1, v0}, Lcom/dexcom/c/c;->access$200(Lcom/dexcom/c/c;Ljava/util/ArrayList;)V

    .line 114
    return-void
.end method
