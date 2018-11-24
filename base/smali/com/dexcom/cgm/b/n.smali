.class final Lcom/dexcom/cgm/b/n;
.super Ljava/util/TimerTask;
.source "CgmProviderComponent.java"


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/b/j;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/b/j;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/dexcom/cgm/b/n;->a:Lcom/dexcom/cgm/b/j;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/b/j;B)V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/n;-><init>(Lcom/dexcom/cgm/b/j;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/dexcom/cgm/b/n;->a:Lcom/dexcom/cgm/b/j;

    invoke-static {v0}, Lcom/dexcom/cgm/b/j;->access$800(Lcom/dexcom/cgm/b/j;)V

    .line 906
    return-void
.end method
